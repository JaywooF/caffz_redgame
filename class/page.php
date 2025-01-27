<?php
/* * *********************************************
 * @类名:  page
 * @参数:  $myde_total - 总记录数
 *     $myde_size - 一页显示的记录数
 *     $myde_page - 当前页
 *     $myde_url - 获取当前的url
 * @功能:  分页实现
 */
class page {
  private $myde_total;     //总记录数
  private $myde_size;      //一页显示的记录数
  private $myde_page;      //当前页
  private $myde_page_count;   //总页数
  private $myde_i;       //起头页数
  private $myde_en;       //结尾页数
  private $myde_url;      //获取当前的url
  /*
   * $show_pages
   * 页面显示的格式，显示链接的页数为2*$show_pages+1。
   * 如$show_pages=2那么页面上显示就是[首页] [上页] 1 2 3 4 5 [下页] [尾页]
   */
  private $show_pages;
  public function __construct($myde_total = 1, $myde_size = 1, $myde_page = 1, $myde_url, $show_pages = 2) {
    $this->myde_total = $this->numeric($myde_total);
    $this->myde_size = $this->numeric($myde_size);
    $this->myde_page = $this->numeric($myde_page);
    $this->myde_page_count = ceil($this->myde_total / $this->myde_size);
    $this->myde_url = $myde_url;
    if ($this->myde_total < 0)
      $this->myde_total = 0;
    if ($this->myde_page < 1)
      $this->myde_page = 1;
    if ($this->myde_page_count < 1)
      $this->myde_page_count = 1;
    if ($this->myde_page > $this->myde_page_count)
      $this->myde_page = $this->myde_page_count;
    $this->limit = ($this->myde_page - 1) * $this->myde_size;
    $this->myde_i = $this->myde_page - $show_pages;
    $this->myde_en = $this->myde_page + $show_pages;
    if ($this->myde_i < 1) {
      $this->myde_en = $this->myde_en + (1 - $this->myde_i);
      $this->myde_i = 1;
    }
    if ($this->myde_en > $this->myde_page_count) {
      $this->myde_i = $this->myde_i - ($this->myde_en - $this->myde_page_count);
      $this->myde_en = $this->myde_page_count;
    }
    if ($this->myde_i < 1)
      $this->myde_i = 1;
  }
  //检测是否为数字
  private function numeric($num) {
    if (strlen($num)) {
      if (!preg_match("/^[0-9]+$/", $num)) {
        $num = 1;
      } else {
        $num = substr($num, 0, 11);
      }
    } else {
      $num = 1;
    }
    return $num;
  }
  //地址替换
  private function page_replace($page) {
    return str_replace("{page}", $page, $this->myde_url);
  }
  //首页
  private function myde_home() {
    if ($this->myde_page != 1) {
      return " <a href='" . $this->page_replace(1) . "' class='page-link'>首页</a> ";
    } else {
      return " <a href='#' class='page-link'>首页</a> ";
    }
  }
  //上一页
  private function myde_prev() {
    if ($this->myde_page != 1) {
      return " <a href='" . $this->page_replace($this->myde_page - 1) . "' class='page-link'>前页</a> ";
    } else {
      return " <a href='#' class='page-link'>前页</a> ";
    }
  }
  //下一页
  private function myde_next() {
    if ($this->myde_page != $this->myde_page_count) {
      return " <a href='" . $this->page_replace($this->myde_page + 1) . "' class='page-link'>后页</a></li>";
    } else {
      return " <a href='#' class='page-link'>后页  ";
    }
  }
  //尾页
  private function myde_last() {
    if ($this->myde_page != $this->myde_page_count) {
      return " <a href='" . $this->page_replace($this->myde_page_count) . "' class='page-link'>尾页</a> ";
    } else {
      return " <a href='#' class='page-link'>尾页</a> ";
    }
  }
  //输出
  public function myde_write($id = '') {
    $str = " ";
    $str.=$this->myde_home();
    $str.=$this->myde_prev();
    if ($this->myde_i > 1) {
      $str.=" …… ";
    }
    for ($i = $this->myde_i; $i <= $this->myde_en; $i++) {
      if ($i == $this->myde_page) {
        $str.=" <a href='" . $this->page_replace($i) . "' class='page-link'>$i</a> ";
      } else {
        $str.=" <a href='" . $this->page_replace($i) . "' class='page-link'>$i</a> ";
      }
    }
    if ($this->myde_en < $this->myde_page_count) {
      $str.=" …… ";
    }
    $str.=$this->myde_next();
    $str.=$this->myde_last();
    $str.=" 数据" . $this->myde_total .
        "条，分"  . $this->myde_page_count ."页显示 ";
    return $str;
  }
}
?>