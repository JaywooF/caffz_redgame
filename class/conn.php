<?php
class CONN
{
	public function __construct(){
		global $db_host;
		global $db_user;
		global $db_pass;
		global $db_name;
		$this->host = $db_host;
		$this->uid = $db_user;
		$this->pwd =$db_pass;
		$this->dbname = $db_name;
	} 
    
    /**
     *给一个sql语句，返回执行的结果
     *@param string $sql 用户指定的sql语句
     *@param int $type 用户给的语句类型，0代表增删改，1代表查询
     *@return  返回查询的结果，如果是查询返回二维数组,如果是增删改返回true或false
     */
    function Query($sql,$type=1)
    {
    //造连接对象
    $db = new MySQLi($this->host,$this->uid,$this->pwd,$this->dbname);
    //执行sql语句
    $reslut = $db->query($sql);
    if(!$reslut){die($db->error);}
    //从结果集对象里面取数据
    if($type==1){
        return $reslut->fetch_all();
    }else{
        return $reslut;
    }
    }

    /**
     *给一个sql语句，返回关联的二维数组
     *@param string $sql 用户指定的sql语句
     *@param int $type 用户给的语句类型，0代表增删改，1代表查询
     *@return  返回查询的结果，如果是查询返回二维数组,如果是增删改返回true或false
     */
    function GuanQuery($sql,$type=1)
    {
    	//造连接对象
    	$db = new MySQLi($this->host,$this->uid,$this->pwd,$this->dbname);
    	//执行sql语句
    	$reslut = $db->query($sql);
    	//取数据
    	if($type==1)
    	{
    		$attr = array();
    		while($a = $reslut->fetch_assoc())
    		{
    			$attr[] = $a;
    		}
    		return $attr;
    	}
    	else{return $reslut;}
    }

    /**
     *给一个sql语句，返回字符串
     *@param string $sql 用户指定的sql语句
     *@param int $type 用户给的语句类型，0代表增删改，1代表查询
     *@return  返回查询的结果，如果是查询返回字符串,如果是增删改返回true或false
     */
    function StrQuery($sql,$type=1)
    {
    	//造连接对象
    	$db = new MySQLi($this->host,$this->uid,$this->pwd,$this->dbname);
    	//执行sql语句
    	$reslut = $db->query($sql);
    	//取数据
    	if($type==1)
    	{
    		$attr = $reslut->fetch_all();
    		$str="";
    		foreach($attr as $v)
    		{
    			$str .= implode("^",$v);
    			$str .="|";

            }
            return substr($str,0,strlen($str)-1);
        }
        else{return $reslut;}
    }

}

//获得真实IP地址
function getIp()
{
    $ip='未知IP';
    if(!empty($_SERVER['HTTP_CLIENT_IP'])){
        return is_ip($_SERVER['HTTP_CLIENT_IP'])?$_SERVER['HTTP_CLIENT_IP']:$ip;
    }elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
        return is_ip($_SERVER['HTTP_X_FORWARDED_FOR'])?$_SERVER['HTTP_X_FORWARDED_FOR']:$ip;
    }else{
        return is_ip($_SERVER['REMOTE_ADDR'])?$_SERVER['REMOTE_ADDR']:$ip;
    }
}
function is_ip($str){
    $ip=explode('.',$str);
    for($i=0;$i<count($ip);$i++){
        if($ip[$i]>255){
            return false;
        } 
    }
    return preg_match('/^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$/',$str);
}

?>