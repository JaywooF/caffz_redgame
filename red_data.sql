/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50615
Source Host           : 127.0.0.1:3306
Source Database       : red_data

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2022-09-28 14:37:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` int(10) unsigned NOT NULL,
  `sid` int(11) NOT NULL COMMENT '场景id',
  `typ` int(1) DEFAULT '1' COMMENT '模式：1-普通过场，9-战斗，2-石头剪刀布',
  `action` varchar(300) NOT NULL COMMENT '动作内容',
  `link` int(255) DEFAULT NULL COMMENT '链接场景',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('1', '1000', '1', '一经承认即失主权，万难脱其羁绊，唉…… ', '1001');
INSERT INTO `action` VALUES ('2', '1001', '1', '独秀山民的《爱国心与自觉新》？写得真好', '1002');
INSERT INTO `action` VALUES ('3', '1002', '1', '这……太偏颇了吧？国家兴亡，匹夫有责呀！', '1003');
INSERT INTO `action` VALUES ('4', '1003', '1', '这大叔好奇怪，我还是去杂志社问问这个独秀山民是谁吧！', '1010');
INSERT INTO `action` VALUES ('5', '1003', '1', '大叔何解？您不觉得这篇文章太极端了吗？', '1004');
INSERT INTO `action` VALUES ('6', '1004', '1', '原来可以这样解释啊，大叔和这位独秀先生都好厉害。', '1005');
INSERT INTO `action` VALUES ('7', '1005', '1', '先生客气了，我这就去杂志社。', '1010');
INSERT INTO `action` VALUES ('8', '1010', '1', '前面是怎么了……？', '1011');
INSERT INTO `action` VALUES ('9', '1011', '9', '你要战便战！', '1012');
INSERT INTO `action` VALUES ('10', '1012', '11', '中国人不是东亚病夫！', '1015');
INSERT INTO `action` VALUES ('11', '1012', '12', '咳……等我稍后再战……', '1011');
INSERT INTO `action` VALUES ('12', '1015', '1', '我想问问独秀山民……', '1016');
INSERT INTO `action` VALUES ('13', '1016', '1', '我觉得是“独秀“二字', '1017');
INSERT INTO `action` VALUES ('14', '1016', '1', '我觉得是“庆同“二字', '1018');
INSERT INTO `action` VALUES ('15', '1017', '1', '谢谢章老师，我这就去找陈先生。', '1020');
INSERT INTO `action` VALUES ('16', '1018', '1', '谢谢章老师，我这就去找陈先生。', '1020');
INSERT INTO `action` VALUES ('17', '1020', '9', '又是那个无礼的日本浪人…… ', '1021');
INSERT INTO `action` VALUES ('18', '1021', '11', '没完没了了……！', '1025');
INSERT INTO `action` VALUES ('19', '1021', '12', '咳……等我稍后再战！', '1020');
INSERT INTO `action` VALUES ('20', '1025', '1', '你好，陈先生，“古莲一枝绽新荷” ，独秀真是太贴切了。', '1026');
INSERT INTO `action` VALUES ('21', '1026', '1', '陈先生过谦了，我在街头碰见一位大叔，他要我把这篇文章拿给你。', '1027');
INSERT INTO `action` VALUES ('22', '1027', '1', '陈先生？陈先生？', '1028');
INSERT INTO `action` VALUES ('23', '1028', '1', '去杂志社', '1029');
INSERT INTO `action` VALUES ('24', '1028', '1', '去找大叔', '1032');
INSERT INTO `action` VALUES ('25', '1029', '1', '我……还是先去找大叔吧', '1032');
INSERT INTO `action` VALUES ('26', '1029', '2', '来就来，谁怕谁！', '1030');
INSERT INTO `action` VALUES ('27', '1030', '21', '侥幸侥幸，赢下来了！', '1030');
INSERT INTO `action` VALUES ('28', '1030', '22', '输了……文章可怎么办……', '1030');
INSERT INTO `action` VALUES ('29', '1030', '1', '这下就放心了，可以安心的去找那位大叔了!', '1032');
INSERT INTO `action` VALUES ('30', '1032', '9', '又是那个日本浪人……', '1033');
INSERT INTO `action` VALUES ('31', '1033', '11', '真是又菜又爱玩……', '1035');
INSERT INTO `action` VALUES ('32', '1033', '12', '怎么老是打不赢呢……', '1032');
INSERT INTO `action` VALUES ('33', '1035', '1', '原来……你们认识呀……您是……', '1036');
INSERT INTO `action` VALUES ('34', '1036', '1', '第一章 \"二十一条\" 完结', '1100');
INSERT INTO `action` VALUES ('35', '1100', '1', '陈先生，您终于回来了，又可以向您请教了！', '1101');
INSERT INTO `action` VALUES ('36', '1101', '1', '那陈先生您回国是要做一番事业了，有什么能效力的吗？', '1102');
INSERT INTO `action` VALUES ('37', '1102', '1', '（孟邹应该是汪先生吧……）那陈先生你是打算？', '1103');
INSERT INTO `action` VALUES ('38', '1103', '1', '（陈先生威武！）那陈先生打算在哪儿创办这本杂志呢？', '1104');
INSERT INTO `action` VALUES ('39', '1104', '1', '超级期待《青年杂志》得诞生。', '1105');
INSERT INTO `action` VALUES ('40', '1105', '1', '没问题，包在我身上吧！', '1106');
INSERT INTO `action` VALUES ('41', '1105', '1', '我还有点儿事儿……', '1115');
INSERT INTO `action` VALUES ('42', '1106', '1', '想起来了，是新渔阳里6号！', '1107');
INSERT INTO `action` VALUES ('43', '1106', '1', '想起来了，是老渔阳里2号！', '1108');
INSERT INTO `action` VALUES ('44', '1107', '1', '重新出发吧……', '1109');
INSERT INTO `action` VALUES ('45', '1108', '1', '寻找老渔阳里2号', '1109');
INSERT INTO `action` VALUES ('46', '1109', '9', '碰见强盗了……', '1110');
INSERT INTO `action` VALUES ('47', '1110', '11', '来吧，陈先生得手稿不容有失！', '1111');
INSERT INTO `action` VALUES ('48', '1110', '12', '可恶，我得尽快赶到报社……', '1109');
INSERT INTO `action` VALUES ('49', '1111', '1', '呼，幸而手稿安然无恙。', '1115');
INSERT INTO `action` VALUES ('50', '1115', '1', '翻看杂志', '1116');
INSERT INTO `action` VALUES ('51', '1116', '1', '这就是陈先生眼中的觉醒吗？', '1117');
INSERT INTO `action` VALUES ('52', '1117', '1', '这是陈先生对青年的勉励吧……', '1118');
INSERT INTO `action` VALUES ('53', '1118', '1', '“青年如初春，如朝日，如百卉之萌动，如利刃之新发于硎，人生最可宝贵之时期也。青年之于社会，犹新鲜活泼细胞之在人身。”', '1120');
INSERT INTO `action` VALUES ('54', '1120', '1', '改了名字反而与倡导的反封建主张更为契合呢！', '1121');
INSERT INTO `action` VALUES ('55', '1121', '1', '这么犀利肯定是陈先生的文章！', '1122');
INSERT INTO `action` VALUES ('56', '1122', '1', '这么有“独秀“气质的文章一定是陈先生的作品！', '1123');
INSERT INTO `action` VALUES ('57', '1122', '1', '这么励志向上的文章一定是守常先生的作品！', '1124');
INSERT INTO `action` VALUES ('58', '1123', '1', '真可惜呀……', '1125');
INSERT INTO `action` VALUES ('59', '1124', '1', '青春中国……读完顿感荡气回肠！', '1125');
INSERT INTO `action` VALUES ('60', '1125', '1', '守常先生终于回来了', '1126');
INSERT INTO `action` VALUES ('61', '1126', '1', '守常先生这也是因祸得福了', '1127');
INSERT INTO `action` VALUES ('62', '1127', '1', '这是发生什么事情了？', '1128');
INSERT INTO `action` VALUES ('63', '1128', '9', '住手，别打了！', '1129');
INSERT INTO `action` VALUES ('64', '1129', '12', '……', '1128');
INSERT INTO `action` VALUES ('65', '1129', '11', '再怎么说也不能打人呀……', '1130');
INSERT INTO `action` VALUES ('66', '1130', '1', '守常先生……', '1131');
INSERT INTO `action` VALUES ('67', '1131', '1', '先生高义！', '1135');
INSERT INTO `action` VALUES ('68', '1135', '1', '有守常先生的加入，《新青年》一定会更上一层楼', '1136');
INSERT INTO `action` VALUES ('69', '1136', '1', '仲甫？ 陈独秀先生……', '1137');
INSERT INTO `action` VALUES ('70', '1137', '1', '好的，守常先生！', '1138');
INSERT INTO `action` VALUES ('71', '1138', '1', '前面是守常、仲甫两位先生……', '1139');
INSERT INTO `action` VALUES ('72', '1139', '1', '（守常先生的诗是很不错……）', '1140');
INSERT INTO `action` VALUES ('73', '1140', '1', '（啊，太可惜了）', '1141');
INSERT INTO `action` VALUES ('74', '1141', '1', '（嗯，确实是这样）', '1142');
INSERT INTO `action` VALUES ('75', '1142', '1', '（确实是一段难忘的时光）', '1143');
INSERT INTO `action` VALUES ('76', '1143', '1', '（是这样吗？）', '1144');
INSERT INTO `action` VALUES ('77', '1144', '1', '（太好了，又能拜读守常先生的文章了）', '1145');
INSERT INTO `action` VALUES ('78', '1145', '1', '第二章 “新青年” 完结', '1200');
INSERT INTO `action` VALUES ('79', '1200', '1', '俄国爆发十月革命了？这个广义派……', '1201');
INSERT INTO `action` VALUES ('80', '1201', '1', '啊，守常先生，原来您也一直再关注十月革命。', '1202');
INSERT INTO `action` VALUES ('81', '1202', '1', '哦，这是您《法俄革命之比较观》里面的观点', '1203');
INSERT INTO `action` VALUES ('82', '1203', '1', '先生您看问题很透彻……', '1204');
INSERT INTO `action` VALUES ('83', '1204', '1', '社会主义？这是全新的领域……', '1205');
INSERT INTO `action` VALUES ('84', '1205', '1', '先生您那篇文章能让我仔细再拜读一下吗？', '1206');
INSERT INTO `action` VALUES ('85', '1206', '1', '接过先生的手稿', '1207');
INSERT INTO `action` VALUES ('86', '1207', '1', '《庶民的胜利》', '1208');
INSERT INTO `action` VALUES ('87', '1207', '1', '《法俄革命之比较观》', '1210');
INSERT INTO `action` VALUES ('88', '1208', '1', '守常先生的理解太透彻了。', null);
INSERT INTO `action` VALUES ('89', '1210', '1', '守常先生的理解太透彻了。', '1220');
INSERT INTO `action` VALUES ('90', '1220', '1', '啊，那不是守常先生吗？', '1221');
INSERT INTO `action` VALUES ('91', '1221', '1', '大主义？', '1222');
INSERT INTO `action` VALUES ('92', '1222', '1', '哦，这个大主义可真是要不得……', '1223');
INSERT INTO `action` VALUES ('93', '1223', '1', '是啊，王侯将相宁有种乎？这是世界新的潮流！', '1224');
INSERT INTO `action` VALUES ('94', '1224', '1', '十月革命的结果，一个是政治的，一个是经济的！', '1225');
INSERT INTO `action` VALUES ('95', '1224', '1', '十月革命的结果，一个是政治的，一个是社会的！', '1226');
INSERT INTO `action` VALUES ('96', '1225', '1', '哎呀，答错了！守常先生好幽默。', '1230');
INSERT INTO `action` VALUES ('97', '1226', '1', '嘿嘿，答对了！守常先生好幽默。', '1230');
INSERT INTO `action` VALUES ('98', '1230', '1', '先生您说！', '1231');
INSERT INTO `action` VALUES ('99', '1231', '1', '愿为先生效劳！', '1232');
INSERT INTO `action` VALUES ('100', '1231', '1', '（犹豫了一下……）', '1233');
INSERT INTO `action` VALUES ('101', '1232', '1', '好，我这就去！', '1240');
INSERT INTO `action` VALUES ('102', '1233', '1', '好吧……那我去……', '1251');
INSERT INTO `action` VALUES ('103', '1240', '1', '前面有一个小童，我去问问他吧……', '1241');
INSERT INTO `action` VALUES ('104', '1241', '1', '这个……我会背一点儿。那个……山洞……', '1242');
INSERT INTO `action` VALUES ('105', '1242', '1', '估计他也不知道……唉，直接去找吧……', '1251');
INSERT INTO `action` VALUES ('106', '1242', '2', '这个我擅长……来吧！', '1243');
INSERT INTO `action` VALUES ('107', '1243', '21', '“天地玄黄，宇宙鸿蒙”？这是什么鬼线索……', '1243');
INSERT INTO `action` VALUES ('108', '1243', '22', '输掉了……小破孩回家吃饭去了……', '1243');
INSERT INTO `action` VALUES ('109', '1243', '9', '算了算了……我还是先去山洞吧……', '1244');
INSERT INTO `action` VALUES ('110', '1244', '11', '呼，终于把狼打跑了……', '1251');
INSERT INTO `action` VALUES ('111', '1244', '12', '呼，终于逃掉了……', '1243');
INSERT INTO `action` VALUES ('112', '1251', '1', '进入上方通道。', '1252');
INSERT INTO `action` VALUES ('113', '1251', '1', '进入左侧通道。', '1253');
INSERT INTO `action` VALUES ('114', '1251', '1', '进入右侧通道。', '1255');
INSERT INTO `action` VALUES ('115', '1252', '1', '进入上方通道。', '1252');
INSERT INTO `action` VALUES ('116', '1252', '1', '进入下方通道。', '1254');
INSERT INTO `action` VALUES ('117', '1252', '1', '进入左侧通道。', '1258');
INSERT INTO `action` VALUES ('118', '1252', '9', '进入右侧通道。', '1266');
INSERT INTO `action` VALUES ('119', '1252', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('120', '1253', '1', '进入上方通道。', '1252');
INSERT INTO `action` VALUES ('121', '1253', '9', '进入下方通道。', '1267');
INSERT INTO `action` VALUES ('122', '1253', '1', '进入左侧通道。', '1254');
INSERT INTO `action` VALUES ('123', '1253', '1', '进入右侧通道。', '1253');
INSERT INTO `action` VALUES ('124', '1253', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('125', '1254', '1', '进入上方通道。', '1256');
INSERT INTO `action` VALUES ('126', '1254', '1', '进入下方通道。', '1255');
INSERT INTO `action` VALUES ('127', '1254', '9', '进入左侧通道。', '1266');
INSERT INTO `action` VALUES ('128', '1254', '1', '进入右侧通道。', '1258');
INSERT INTO `action` VALUES ('129', '1254', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('130', '1255', '1', '进入上方通道。', '1252');
INSERT INTO `action` VALUES ('131', '1255', '1', '进入下方通道。', '1254');
INSERT INTO `action` VALUES ('132', '1255', '9', '进入左侧通道。', '1266');
INSERT INTO `action` VALUES ('133', '1255', '1', '进入右侧通道。', '1260');
INSERT INTO `action` VALUES ('134', '1255', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('135', '1256', '1', '进入上方通道。', '1258');
INSERT INTO `action` VALUES ('136', '1256', '1', '进入下方通道。', '1257');
INSERT INTO `action` VALUES ('137', '1256', '1', '进入左侧通道。', '1256');
INSERT INTO `action` VALUES ('138', '1256', '9', '进入右侧通道。', '1266');
INSERT INTO `action` VALUES ('139', '1256', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('140', '1257', '1', '进入上方通道。', '1259');
INSERT INTO `action` VALUES ('141', '1257', '1', '进入下方通道。', '1258');
INSERT INTO `action` VALUES ('142', '1257', '1', '进入左侧通道。', '1257');
INSERT INTO `action` VALUES ('143', '1257', '1', '进入右侧通道。', '1256');
INSERT INTO `action` VALUES ('144', '1257', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('145', '1258', '1', '进入上方通道。', '1255');
INSERT INTO `action` VALUES ('146', '1258', '9', '进入下方通道。', '1266');
INSERT INTO `action` VALUES ('147', '1258', '1', '进入左侧通道。', '1256');
INSERT INTO `action` VALUES ('148', '1258', '1', '进入右侧通道。', '1253');
INSERT INTO `action` VALUES ('149', '1258', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('150', '1259', '1', '进入上方通道。', '1260');
INSERT INTO `action` VALUES ('151', '1259', '1', '进入下方通道。', '1259');
INSERT INTO `action` VALUES ('152', '1259', '9', '进入左侧通道。', '1267');
INSERT INTO `action` VALUES ('153', '1259', '1', '进入右侧通道。', '1261');
INSERT INTO `action` VALUES ('154', '1259', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('155', '1260', '1', '进入上方通道。', '1258');
INSERT INTO `action` VALUES ('156', '1260', '1', '进入下方通道。', '1259');
INSERT INTO `action` VALUES ('157', '1260', '9', '进入左侧通道。', '1267');
INSERT INTO `action` VALUES ('158', '1260', '1', '进入右侧通道。', '1260');
INSERT INTO `action` VALUES ('159', '1260', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('160', '1261', '9', '进入上方通道。', '1267');
INSERT INTO `action` VALUES ('161', '1261', '1', '进入下方通道。', '1262');
INSERT INTO `action` VALUES ('162', '1261', '1', '进入左侧通道。', '1255');
INSERT INTO `action` VALUES ('163', '1261', '1', '进入右侧通道。', '1258');
INSERT INTO `action` VALUES ('164', '1261', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('165', '1262', '1', '进入上方通道。', '1263');
INSERT INTO `action` VALUES ('166', '1262', '1', '进入下方通道。', '1260');
INSERT INTO `action` VALUES ('167', '1262', '1', '进入左侧通道。', '1265');
INSERT INTO `action` VALUES ('168', '1262', '1', '进入右侧通道。', '1264');
INSERT INTO `action` VALUES ('169', '1262', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('170', '1263', '1', '进入上方通道。', '1261');
INSERT INTO `action` VALUES ('171', '1263', '1', '进入下方通道。', '1259');
INSERT INTO `action` VALUES ('172', '1263', '1', '进入左侧通道。', '1255');
INSERT INTO `action` VALUES ('173', '1263', '1', '进入右侧通道。', '1258');
INSERT INTO `action` VALUES ('174', '1263', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('175', '1264', '1', '进入上方通道。', '1259');
INSERT INTO `action` VALUES ('176', '1264', '1', '进入下方通道。', '1253');
INSERT INTO `action` VALUES ('177', '1264', '1', '进入左侧通道。', '1260');
INSERT INTO `action` VALUES ('178', '1264', '9', '进入右侧通道。', '1266');
INSERT INTO `action` VALUES ('179', '1264', '1', '迷路了……回到入口吧……', '1251');
INSERT INTO `action` VALUES ('180', '1265', '9', '不好，洞外怎么有一只老虎！！！', '1270');
INSERT INTO `action` VALUES ('181', '1266', '11', '野狼被打跑了……我也迷路了……', '1251');
INSERT INTO `action` VALUES ('182', '1266', '12', '终于逃出来了……还得回洞口重新走……', '1251');
INSERT INTO `action` VALUES ('183', '1267', '11', '野狼被打跑了……我也迷路了……', '1251');
INSERT INTO `action` VALUES ('184', '1267', '12', '终于逃出来了……还得回洞口重新走……', '1251');
INSERT INTO `action` VALUES ('185', '1270', '11', '老虎被打跑了，赶紧回去吧……', '1280');
INSERT INTO `action` VALUES ('186', '1270', '12', '打不过……退回去吧……', '1265');
INSERT INTO `action` VALUES ('187', '1280', '1', '什么是布尔什维主义呀？', '1281');
INSERT INTO `action` VALUES ('188', '1281', '1', '那怎么看待俄国的十月革命呢？', '1282');
INSERT INTO `action` VALUES ('189', '1282', '1', '这种形容，真让人心动。', '1283');
INSERT INTO `action` VALUES ('190', '1283', '1', '第三章 \"风雨欲来\" 完结', '1300');
INSERT INTO `action` VALUES ('191', '1300', '1', '《本志罪案之答辩书》?', '1301');
INSERT INTO `action` VALUES ('192', '1301', '1', '真是太可恶了！', '1302');
INSERT INTO `action` VALUES ('193', '1302', '1', '德先生？赛先生？', '1303');
INSERT INTO `action` VALUES ('194', '1303', '1', '我猜是民主与自由。', '1305');
INSERT INTO `action` VALUES ('195', '1303', '1', '我猜是民主与科学。', '1304');
INSERT INTO `action` VALUES ('196', '1303', '1', '我猜是科学与自由。', '1305');
INSERT INTO `action` VALUES ('197', '1303', '1', '我猜是科学与法制。', '1306');
INSERT INTO `action` VALUES ('198', '1304', '1', '我猜就是这两位“先生”。', '1307');
INSERT INTO `action` VALUES ('199', '1305', '1', '啊……那另外一位又是谁呢？', '1307');
INSERT INTO `action` VALUES ('200', '1306', '1', '咳……完全猜错了', '1307');
INSERT INTO `action` VALUES ('201', '1307', '1', '是啊，本志同人根本就无罪……', '1308');
INSERT INTO `action` VALUES ('202', '1308', '1', '传统文化需要去其糟粕，取其精华！', '1309');
INSERT INTO `action` VALUES ('203', '1309', '1', '是啊，时代变了，我们也要与时俱进。', '1320');
INSERT INTO `action` VALUES ('204', '1320', '1', '归还租界；口岸自由权。', '1321');
INSERT INTO `action` VALUES ('205', '1320', '1', '归还租界；关税自由权。', '1322');
INSERT INTO `action` VALUES ('206', '1320', '1', '归还盗走文物；口岸自由权。', '1321');
INSERT INTO `action` VALUES ('207', '1320', '1', '归还盗走文物；关税自由权。', '1321');
INSERT INTO `action` VALUES ('208', '1321', '1', '可惜，结果并不乐观……', '1325');
INSERT INTO `action` VALUES ('209', '1322', '1', '可惜，结果并不乐观……', '1325');
INSERT INTO `action` VALUES ('210', '1325', '1', '究竟哪里才是中国的出路……', '1330');
INSERT INTO `action` VALUES ('211', '1330', '1', '天下兴亡，匹夫有责，同去参加！', '1331');
INSERT INTO `action` VALUES ('212', '1331', '9', '冲过去！', '1332');
INSERT INTO `action` VALUES ('213', '1332', '11', '冲过来了……', '1335');
INSERT INTO `action` VALUES ('214', '1332', '12', '不行，让我再试一次！', '1331');
INSERT INTO `action` VALUES ('215', '1335', '1', '一直往前跑！', '1336');
INSERT INTO `action` VALUES ('216', '1335', '1', '从右边墙缝穿过去……', '1337');
INSERT INTO `action` VALUES ('217', '1336', '9', '什么也到不住我，继续冲……', '1338');
INSERT INTO `action` VALUES ('218', '1337', '2', '来来来，正急着呢！', '1339');
INSERT INTO `action` VALUES ('219', '1338', '11', '冲过来了，前面就是天安门广场！', '1345');
INSERT INTO `action` VALUES ('220', '1338', '12', '什么都挡不住我！', '1336');
INSERT INTO `action` VALUES ('221', '1339', '21', '赢了，快让我过去！', '1345');
INSERT INTO `action` VALUES ('222', '1339', '22', '输了……快让我过去吧！', '1345');
INSERT INTO `action` VALUES ('223', '1345', '1', '北京大学', '1346');
INSERT INTO `action` VALUES ('224', '1345', '1', '北京高等师范学校', '1347');
INSERT INTO `action` VALUES ('225', '1346', '1', '他们打出的标语是？', '1350');
INSERT INTO `action` VALUES ('226', '1347', '1', '他们打出的标语是？', '1350');
INSERT INTO `action` VALUES ('227', '1350', '1', '……', '1351');
INSERT INTO `action` VALUES ('228', '1351', '1', '群情激愤！', '1352');
INSERT INTO `action` VALUES ('229', '1352', '9', '军警来镇压了，快走……', '1355');
INSERT INTO `action` VALUES ('230', '1355', '11', '冲出来了……', '1356');
INSERT INTO `action` VALUES ('231', '1355', '12', '再冲一次……', '1352');
INSERT INTO `action` VALUES ('232', '1356', '1', '可恶……', '1357');
INSERT INTO `action` VALUES ('233', '1357', '1', '国民的热血燃起来了！', '1358');
INSERT INTO `action` VALUES ('234', '1358', '9', '陈先生快走！！！', '1360');
INSERT INTO `action` VALUES ('235', '1360', '11', '可恶，陈先生还是被抓走了……', '1361');
INSERT INTO `action` VALUES ('236', '1360', '12', '陈先生，快跟我走……', '1358');
INSERT INTO `action` VALUES ('237', '1361', '1', '快去告诉守常先生！', '1362');
INSERT INTO `action` VALUES ('238', '1362', '1', '守常先生，仲甫老师被军警带走了！', '1363');
INSERT INTO `action` VALUES ('239', '1363', '1', '好，拜托守常先生了！', '1364');
INSERT INTO `action` VALUES ('240', '1364', '1', '守常先生的字里行间，洋溢着对仲甫先生的深厚感情……', '1365');
INSERT INTO `action` VALUES ('241', '1365', '1', '不负所望，仲甫先生终于脱险了……', '1366');
INSERT INTO `action` VALUES ('242', '1366', '1', '是啊，仲甫先生……', '1367');
INSERT INTO `action` VALUES ('243', '1367', '1', '为有仲甫先生而骄傲！', '1370');
INSERT INTO `action` VALUES ('244', '1370', '1', '第四章 “五四运动” 完结', '1400');
INSERT INTO `action` VALUES ('245', '1400', '1', '……', '1401');
INSERT INTO `action` VALUES ('246', '1401', '1', '……', '1402');
INSERT INTO `action` VALUES ('247', '1402', '1', '……', '1403');
INSERT INTO `action` VALUES ('248', '1403', '1', '……', '1404');
INSERT INTO `action` VALUES ('249', '1404', '1', '……', '1405');
INSERT INTO `action` VALUES ('250', '1405', '1', '……', '1406');
INSERT INTO `action` VALUES ('251', '1406', '1', '……', '1407');
INSERT INTO `action` VALUES ('252', '1407', '1', '……', '1410');
INSERT INTO `action` VALUES ('253', '1410', '1', '陈先生说什么了？', '1411');
INSERT INTO `action` VALUES ('254', '1411', '1', '这应该是好事儿吧！', '1412');
INSERT INTO `action` VALUES ('255', '1412', '1', '党的事业越来越蒸蒸日上了。', '1413');
INSERT INTO `action` VALUES ('256', '1413', '1', '……', '1414');
INSERT INTO `action` VALUES ('257', '1414', '1', '……', '1415');
INSERT INTO `action` VALUES ('258', '1415', '1', '……', '1416');
INSERT INTO `action` VALUES ('259', '1416', '1', '……', '1417');
INSERT INTO `action` VALUES ('260', '1417', '1', '……', '1418');
INSERT INTO `action` VALUES ('261', '1418', '1', '守常先生真的不去了吗？', '1419');
INSERT INTO `action` VALUES ('262', '1419', '1', '仲甫先生也不能到场了吗……', '1425');
INSERT INTO `action` VALUES ('263', '1420', '1', '鞠躬尽瘁！', '1425');
INSERT INTO `action` VALUES ('264', '1425', '1', '庆云里31号', '1426');
INSERT INTO `action` VALUES ('265', '1425', '1', '望志路106号', '1427');
INSERT INTO `action` VALUES ('266', '1426', '1', '赶到会议地址', '1428');
INSERT INTO `action` VALUES ('267', '1427', '1', '赶到会议地址', '1428');
INSERT INTO `action` VALUES ('268', '1428', '1', '过去看看怎么回事儿，', '1429');
INSERT INTO `action` VALUES ('269', '1429', '9', '有问题，揍他！', '1435');
INSERT INTO `action` VALUES ('270', '1435', '11', '原来是租界的眼线，幸亏赶走了。', '1436');
INSERT INTO `action` VALUES ('271', '1435', '12', '没打过……再来一次……', '1429');
INSERT INTO `action` VALUES ('272', '1436', '1', '13名', '1437');
INSERT INTO `action` VALUES ('273', '1436', '1', '15名', '1438');
INSERT INTO `action` VALUES ('274', '1437', '1', '他们是……', '1439');
INSERT INTO `action` VALUES ('275', '1438', '1', '他们是……', '1439');
INSERT INTO `action` VALUES ('276', '1439', '1', '我记得北京党支部代表是刘静仁同志和张国焘同志', '1440');
INSERT INTO `action` VALUES ('277', '1440', '1', '陈公博', '1441');
INSERT INTO `action` VALUES ('278', '1440', '1', '包惠僧', '1442');
INSERT INTO `action` VALUES ('279', '1441', '1', '会议已经开始了，继续保护大家吧', '1450');
INSERT INTO `action` VALUES ('280', '1442', '1', '会议已经开始了，继续保护大家吧', '1450');
INSERT INTO `action` VALUES ('281', '1450', '1', '请问你找哪位？', '1451');
INSERT INTO `action` VALUES ('282', '1451', '1', '这里没有王主席', '1452');
INSERT INTO `action` VALUES ('283', '1452', '1', '跟上去看看', '1453');
INSERT INTO `action` VALUES ('284', '1453', '9', '不好，有情况！', '1455');
INSERT INTO `action` VALUES ('285', '1455', '11', '被他逃走了……', '1456');
INSERT INTO `action` VALUES ('286', '1455', '12', '不行……一定要拦住他……', '1453');
INSERT INTO `action` VALUES ('287', '1456', '1', '程子卿……法租界巡捕房……不好，是密探！', '1460');
INSERT INTO `action` VALUES ('288', '1460', '1', '大家快撤，我拖后掩护！', '1461');
INSERT INTO `action` VALUES ('289', '1461', '9', '站住，你是干什么的？', '1465');
INSERT INTO `action` VALUES ('290', '1465', '11', '特务被打跑了，快赶上大家吧……', '1470');
INSERT INTO `action` VALUES ('291', '1465', '12', '不行，一定要拦住特务！', '1461');
INSERT INTO `action` VALUES ('292', '1470', '1', '终于赶上大家了！', '1471');
INSERT INTO `action` VALUES ('293', '1471', '1', '激动人心的时刻！', '1472');
INSERT INTO `action` VALUES ('294', '1472', '5', '《觉醒年代》完结 保留30%银元重玩一次', '1000');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nam` varchar(20) NOT NULL,
  `cont` varchar(300) NOT NULL,
  `lev` int(1) NOT NULL DEFAULT '0',
  `adm` int(1) NOT NULL DEFAULT '0',
  `pas` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `tim` int(10) DEFAULT NULL,
  `bip` varchar(15) DEFAULT NULL,
  `hit` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for equip
-- ----------------------------
DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typ` int(1) NOT NULL,
  `iid` int(11) NOT NULL COMMENT '装备ID',
  `uid` int(11) NOT NULL COMMENT '角色ID',
  `used` int(1) NOT NULL DEFAULT '0' COMMENT '是否装备：0-未装备；1-已装备',
  `num` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equip
-- ----------------------------
INSERT INTO `equip` VALUES ('20', '2', '201', '4', '0', '1');
INSERT INTO `equip` VALUES ('22', '4', '402', '4', '0', '4');
INSERT INTO `equip` VALUES ('23', '4', '401', '4', '0', '5');
INSERT INTO `equip` VALUES ('24', '2', '201', '4', '0', '1');
INSERT INTO `equip` VALUES ('25', '3', '301', '4', '0', '1');
INSERT INTO `equip` VALUES ('26', '3', '302', '2', '0', '1');
INSERT INTO `equip` VALUES ('43', '3', '303', '2', '0', '1');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL,
  `nam` varchar(10) NOT NULL COMMENT '道具名称',
  `typ` int(1) NOT NULL COMMENT '道具类型：1-物品；2-武器；3-防具；4-药品',
  `attr` varchar(10) DEFAULT NULL COMMENT '道具属性，需要写成sql语句兼容模式',
  `val` int(255) DEFAULT NULL,
  `img` varchar(20) NOT NULL DEFAULT 'noimg.png' COMMENT '道具图片，64×64像素',
  `text` varchar(300) DEFAULT NULL COMMENT '道具文字介绍，300字以内',
  `pc` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('201', '木棍', '2', 'atk', '1', '201.png', '出门在外聊以防身，可提高1点攻击力。', '40');
INSERT INTO `item` VALUES ('202', '唐刀', '2', 'atk', '2', '202.png', '唐代流传到日本的长刀，可提高2点攻击力。', '60');
INSERT INTO `item` VALUES ('203', '逍遥扇', '2', 'atk', '3', '203.png', '钢骨打至的防身铁扇，可提高3点攻击力。', '80');
INSERT INTO `item` VALUES ('204', '红缨枪', '2', 'atk', '4', '204.png', '长柄上装有锐利尖头的兵器，可提高4点攻击力。', '120');
INSERT INTO `item` VALUES ('205', '龙泉剑', '2', 'atk', '5', '205.png', '传统工艺铸造的宝剑，可提高5点攻击力。', '150');
INSERT INTO `item` VALUES ('206', '开山刀', '2', 'atk', '6', '206.png', '精钢打造的厚背长刀，可提高6点攻击力。', '180');
INSERT INTO `item` VALUES ('207', '盒子炮', '2', 'atk', '8', '207.png', '毛瑟军用手枪，威力大且动作可靠，可提高8点攻击力。', '240');
INSERT INTO `item` VALUES ('208', '汉阳造', '2', 'atk', '10', '208.png', '汉造七九式步枪，采用7.92MM子弹，可提高10点攻击力。', '300');
INSERT INTO `item` VALUES ('301', '白衬衫', '3', 'def', '1', '301.png', '棉布编织的白色衬衫，可提高1点防御力。', '50');
INSERT INTO `item` VALUES ('302', '唐装', '3', 'def', '2', '302.png', '以对襟马褂为雏形的改良服饰。可提高2点防御力。', '70');
INSERT INTO `item` VALUES ('303', '皮夹克', '3', 'def', '3', '303.png', '欧美传入的夹克，可提高3点防御力。', '100');
INSERT INTO `item` VALUES ('304', '中式长衫', '3', 'def', '4', '304.png', '传统的中式长衫，可提高4点防御力。', '150');
INSERT INTO `item` VALUES ('305', '学生装', '3', 'def', '5', '305.png', '五四运动进步学生普遍穿着，可提高5点防御力。', '200');
INSERT INTO `item` VALUES ('306', '中山装', '3', 'def', '8', '306.png', '一种立翻领有袋盖的四贴袋服装，可提高8点防御力。', '300');
INSERT INTO `item` VALUES ('401', '鲜肉包', '4', 'hp', '10', '401.png', '热气腾腾、刚刚出笼，可恢复体力10点。', '10');
INSERT INTO `item` VALUES ('402', '翡翠汤', '4', 'hp', '20', '402.png', '营养丰富、鲜美香甜，可恢复体力20点。', '20');
INSERT INTO `item` VALUES ('403', '宫保鸡丁', '4', 'hp', '50', '403.png', '色泽诱人、鲜辣香脆，可恢复体力50点。', '50');
INSERT INTO `item` VALUES ('404', '叫花鸡', '4', 'hp', '100', '404.png', '枣红明亮、芳香扑鼻，可恢复体力100点。', '100');
INSERT INTO `item` VALUES ('411', '千年人参', '4', 'mhp', '10', '411.png', '具有复脉固脱功效，可增加最大体力10点。', '100');
INSERT INTO `item` VALUES ('412', '天山雪莲', '4', 'mhp', '50', '412.png', '具有活血助阳功效，可增加最大体力50点。', '500');
INSERT INTO `item` VALUES ('501', '破旧的地图', '5', null, null, '501.png', '地图上隐约可以看见下面的字样，天为上、地为下、玄为上、黄为下、宇为上、宙为右、洪为下、荒为左。', '1');

-- ----------------------------
-- Table structure for mon
-- ----------------------------
DROP TABLE IF EXISTS `mon`;
CREATE TABLE `mon` (
  `id` int(11) NOT NULL,
  `nam` varchar(10) NOT NULL,
  `atk` int(255) NOT NULL,
  `def` int(255) NOT NULL,
  `hp` int(255) NOT NULL,
  `drop` int(255) DEFAULT NULL,
  `dpr` int(2) DEFAULT NULL,
  `mun` int(255) NOT NULL,
  `img` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mon
-- ----------------------------
INSERT INTO `mon` VALUES ('101', '日本浪人', '4', '1', '50', '202', '50', '10', '101.png');
INSERT INTO `mon` VALUES ('102', '日本浪人', '5', '1', '50', '302', '50', '10', '101.png');
INSERT INTO `mon` VALUES ('103', '日本浪人', '5', '2', '80', '203', '50', '15', '101.png');
INSERT INTO `mon` VALUES ('104', '强盗', '5', '2', '100', '204', '50', '15', '102.png');
INSERT INTO `mon` VALUES ('105', '倔强男人', '5', '3', '100', '303', '80', '20', '103.png');
INSERT INTO `mon` VALUES ('106', '野狼', '5', '4', '120', '304', '80', '40', '104.png');
INSERT INTO `mon` VALUES ('107', '野狼', '6', '1', '110', '403', '60', '50', '104.png');
INSERT INTO `mon` VALUES ('108', '老虎', '7', '5', '150', '205', '80', '50', '105.png');
INSERT INTO `mon` VALUES ('109', '士兵', '7', '3', '200', '206', '50', '30', '109.png');
INSERT INTO `mon` VALUES ('110', '士兵', '7', '4', '150', '305', '50', '30', '109.png');
INSERT INTO `mon` VALUES ('111', '士兵', '8', '2', '100', '412', '100', '50', '108.png');
INSERT INTO `mon` VALUES ('112', '士兵', '8', '4', '100', '306', '50', '80', '108.png');
INSERT INTO `mon` VALUES ('113', '地痞', '5', '6', '150', '207', '50', '70', '110.png');
INSERT INTO `mon` VALUES ('114', '程子卿', '8', '5', '200', '208', '70', '90', '111.png');
INSERT INTO `mon` VALUES ('115', '特务', '9', '9', '300', '201', '0', '100', '112.png');
INSERT INTO `mon` VALUES ('116', '野狼', '4', '5', '200', '501', '50', '30', '104.png');

-- ----------------------------
-- Table structure for qu
-- ----------------------------
DROP TABLE IF EXISTS `qu`;
CREATE TABLE `qu` (
  `id` int(11) NOT NULL,
  `stem` varchar(300) NOT NULL,
  `opt` varchar(800) NOT NULL,
  `a` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qu
-- ----------------------------
INSERT INTO `qu` VALUES ('1', '中共十一届三中全会认真讨论了全党工作重点转移的问题。全会认为全国揭批林彪、“四人帮”的运动已经取得了伟大胜利，应当及时地、果断地把全党工作的着重点和全国人民的注意力转移到(&nbsp;&nbsp;&nbsp;)。', '加快经济体制改革和扩大对外开放上来|社会主义现代化建设上来|加强社会主义民主和法制建设上来', '2');
INSERT INTO `qu` VALUES ('2', '中共十一届三中全会重新确立的思想路线是(&nbsp;&nbsp;&nbsp;)。', '解放思想,实事求是|一切从实际出发|理论联系实际', '1');
INSERT INTO `qu` VALUES ('3', '有一首歌唱道“七九年那是一个春天”,“一九九二年又是一个春天”,歌中的两个“春天”分别喻指(&nbsp;&nbsp;&nbsp;)。', '“三步走”部署和“一个中心，两个基本点”|建立经济特区和邓小平南方谈话|国有企业改革和建立社会主义市场经济制', '2');
INSERT INTO `qu` VALUES ('4', '中共十一届三中全会高度评价了关于实践是检验真理的唯一标准问题的讨论，认为这场大讨论对于促进全党同志和全国人民(&nbsp;&nbsp;&nbsp;)，具有深远的历史意义。', '提高认识，增强建设社会主义的自觉性|解放思想，端正思想路线|坚定实现共产主义的理想和信念', '2');
INSERT INTO `qu` VALUES ('5', '中国共产党第十一届中央委员会第三次全体会议决定成立(&nbsp;&nbsp;&nbsp;)。', '国家发展改革委员会|中央纪律检查委员会|中央顾问委员会', '2');
INSERT INTO `qu` VALUES ('6', '中共十一届三中全会根据党的历史经验教训，决定健全党的民主集中制，健全党规党法，严肃党纪，切实搞好党风建设，并选举产生了以陈云为第一书记的(&nbsp;&nbsp;&nbsp;)', '中央监察委员会|中央纪律检查委员会|中央政法委员会', '2');
INSERT INTO `qu` VALUES ('7', '重新确定了正确的思想路线，批判了“两个凡是＂的错误方针的一次会议是(&nbsp;&nbsp;&nbsp;)。', '中国共产党第十一次全国代表大会|中国共产党第十一届中央委员会第三次全体会议|中国共产党第十一届中央委员会第六次全体会议', '2');
INSERT INTO `qu` VALUES ('8', '新中国成立后，社会主义建设发展迅速，但是从1958年到1978年,实际上处于(&nbsp;&nbsp;&nbsp;)的状态。', '停滞和徘徊|快速发展|停顿和倒退', '1');
INSERT INTO `qu` VALUES ('9', '中国共产党第十一届中央委员会第三次全体会议果断地停止使用(&nbsp;&nbsp;&nbsp;)的口号。', '“以阶级斗争为纲”|“以钢为纲”|“以粮为纲”', '1');
INSERT INTO `qu` VALUES ('10', '我们党在十一届三中全会上毅然抛弃“以阶级斗争为纲”这个不适用于社会主义社会的“左＂的错误方针，把党和国家的工作中心转移到经济建设上来，这是(&nbsp;&nbsp;&nbsp;)的拨乱反正。', '政治路线|思想路线|组织路线', '1');
INSERT INTO `qu` VALUES ('11', '中国共产党第十一届中央委员会第三次全体会议作出了从(&nbsp;&nbsp;&nbsp;)年起,把全党工作重点转移到社会主义现代化建设上来的战略决策。', '1978|1979|1980', '2');
INSERT INTO `qu` VALUES ('12', '1979年4月5日至28日,中共中央召开工作会议，主要讨论经济调整问题。会议通过了中央提出的调整国民经济的八字方针，即(&nbsp;&nbsp;&nbsp;)。', '调整、巩固、充实、提高|调整、改革、充实、提高|调整、改革、整顿、提高', '3');
INSERT INTO `qu` VALUES ('13', '1979年，邓小平在中共中央召开的理论务虚会上作了《坚持四项基本原则》的讲话。四项基本原则的内容是(&nbsp;&nbsp;&nbsp;)。', '坚持改革开放、坚持党的领导、坚持社会主义、坚持人民民主专政|坚持改革开放、坚持党的领导、坚持社会主义、坚持群众路线|坚持党的领导、坚持社会主义、坚持人民民主专政、坚持马列义毛泽东思想', '3');
INSERT INTO `qu` VALUES ('14', '1979年，邓小平在会见日本首相大平正芳时说，我们要实现的四个现代化是中国式的现代化，是“小康之家”20世纪未实现(&nbsp;&nbsp;&nbsp;)人均1000美元。', '国民收入|国内生产总值|国民生产总值', '3');
INSERT INTO `qu` VALUES ('15', '由于我国底子薄，特别是经过“文化大革命”,直到1978年，全国仍有(&nbsp;&nbsp;&nbsp;)农民处于绝对贫困的状况。', '1亿|2亿|2.5亿', '3');
INSERT INTO `qu` VALUES ('16', '1980年8月，邓小平的(&nbsp;&nbsp;&nbsp;)一文发表，实际上成为我国政治体制改革的纲领。', '《党和国家领导制度的改革》|《高级于部要带头发扬党的优良传统》|《关于高级于部生活待遇的若于规定》', '1');
INSERT INTO `qu` VALUES ('17', '新加坡《联合早报》指出:“新时期中国经济发展经历了三个阶段:第一个阶段是对外开放，让世界进入中国;第二个阶段还是对外开放，但中国开始走向世界;第三个阶段依然是对外开放，中国已经开始改变世界了。”“让世界进入中国”的标志性事件是(&nbsp;&nbsp;&nbsp;)。', '建立深圳等经济特区|开发上海浦东新区|开放青岛等沿海城市', '1');
INSERT INTO `qu` VALUES ('18', '标志着我党胜利地完成了指导思想上的拨乱反正的是中共十一届六中全会通过的(&nbsp;&nbsp;&nbsp;)。', '《关于我党若于历史问题的决议》|《关于建国以来党的若于历史问题的决议》|《关于党内政治生活的若于准则》', '2');
INSERT INTO `qu` VALUES ('19', '《关于建国以来党的若干历史问题的决议》是由(&nbsp;&nbsp;&nbsp;)主持起草的。', '华国锋、邓小平|胡耀邦、叶剑英|邓小平、胡耀邦', '3');
INSERT INTO `qu` VALUES ('20', '1981年2月15日，全国学联、全国伦理学学会、全国总工会、共青团中央、全国妇联、中国文联、中国语言学学会、中华全国美学学会、中央爱卫会等9个单位，联合作出《关于开展文明礼貌活动的倡议》在全国人民、特别是青少年中开展文明礼貌月活动，大兴“五讲四美”之风。“五讲”，即讲文明、讲礼貌、讲卫生、讲秩序、讲道德。下列关于“四美”的表述中不属于“四美”内容的是(&nbsp;&nbsp;&nbsp;)。', '作风美|语言美|心灵美', '1');
INSERT INTO `qu` VALUES ('21', '中共十一届三中全会后，我国农村改革一个人们未曾预料到的收获就是(&nbsp;&nbsp;&nbsp;)。', '联产承包极大激发了农民的生产积极性|乡镇企业的崛起|农民外出打工加快了城镇化发展', '2');
INSERT INTO `qu` VALUES ('22', '1981年党的十一届六中全会通过的《关于建国以来党的若干历史问题的决议》是中国共产党历史上具有深远意义和重大影响的重要文件。下列不属于决议内容的是(&nbsp;&nbsp;&nbsp;)。', '决议提出要进行社会主义现代化建设,必须进行改革开放,必须搞社会主义市场经济|实事求是地评价了毛泽东在中国革命中的历史地位，充分论述了毛泽东思想作为我们党的指导思想的伟大意义|决议认为，毛泽东同志发动“文化大革命”的主要论点既不符合马克思列宁主义，也不符合中国实际', '1');
INSERT INTO `qu` VALUES ('23', '中共十一届六中全会通过的《关于建国以来党的若干历史问题的决议》对毛泽东同志作了科学、客观的评价，下列不符合决议内容的表述是(&nbsp;&nbsp;&nbsp;)。', '对“文化大革命”毛泽东同志负有主要贵任，但也不能把所有错误归咎于毛泽东同志个人|毛泽东对中国革命的功绩远远大于他的过失，他的功绩是第一位的|毛泽东思想是毛泽东同志关于马克思主义中国化的研究和实践的结晶', '3');
INSERT INTO `qu` VALUES ('24', '《关于建国以来党的若干历史问题的决议》是在(&nbsp;&nbsp;&nbsp;)上通过的。', '中共十一届六中全会|中共十一届四中全会|中共十一届五中全会', '1');
INSERT INTO `qu` VALUES ('25', '(&nbsp;&nbsp;&nbsp;)明确指出:“文化大革命”是一场由领导者错误发动，被反革命集团利用，给党、国家和各族人民带来严重灾难的内乱。', '《中国共产党第十一届中央委员会第三次全体会议决议》|《中国共产党中央委员会关于建国以来党的若于历史问题的决议》|《中国共产党中央委员会关于经济体制改革的决定》', '2');
INSERT INTO `qu` VALUES ('26', '关于农村家庭联产承包责任制，下列表述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '这种责任制使农民获得了生产和分配的自主权，实行了责权利的紧密结合|党的十一届三中全会原则通过、十一届四中全会正式通过的《关于加快农业发展若干问题的决定》规定“包产到户”|农村承包责任制最早在安徽推开，以凤阳县梨园公社小岗村为最早', '2');
INSERT INTO `qu` VALUES ('27', '(&nbsp;&nbsp;&nbsp;)问题，是社会主义建设首先必须把握的基本战略问题。', '经济基础与上层建筑的关系|时代主题|姓“资”姓“社”', '2');
INSERT INTO `qu` VALUES ('28', '1981年1月25日，最高人民法院特别法庭判处江青、张春桥(&nbsp;&nbsp;&nbsp;)。', '死刑|无期徒刑|死刑，缓期二年执行', '3');
INSERT INTO `qu` VALUES ('29', '作出《关于为刘少奇同志平反的决定》的会议是(&nbsp;&nbsp;&nbsp;)。', '中共十一届三中全会|中共十一届四中全会|中共十一届五中全会', '3');
INSERT INTO `qu` VALUES ('30', '＂我们唱着东方红，当家作主站起来，我们讲着春天的故事，改革开放富起来……＂中国共产党第二代领导集体为了使农民“富起来”，最先采取的主要措施是(&nbsp;&nbsp;&nbsp;)', '进行土地改革|开展人民公社化运动|实行家庭联产承包责任制', '3');
INSERT INTO `qu` VALUES ('31', '新时期党的基本路线的思想开始形成于(&nbsp;&nbsp;&nbsp;)。', '中共八大|中共十二大|中共十一届三中全会', '3');
INSERT INTO `qu` VALUES ('32', '实事求是评价毛泽东的历史地位的是(&nbsp;&nbsp;&nbsp;)。', '《中国共产党第十一届中央委员会第三次全体会议决议》|《中国共产党中央委员会关于建国以来党的若于历史问题的决议》|《中国共产党中央委员会关于经济体制改革的决定》', '2');
INSERT INTO `qu` VALUES ('33', '对联是人们喜爱的文学艺术形式，其内容的变化也折射出历史的沧桑巨变。下列对联反映的史实，发生在改革开放之后的是(&nbsp;&nbsp;&nbsp;)。', '联产承包展新貌,自主经营显生机|放开肚皮吃饭饭，鼓足干劲搞生产|扎根农村于革命，广阔天地炼红心', '1');
INSERT INTO `qu` VALUES ('34', '新中国成立后，农业生产关系四次调整的先后顺序是(&nbsp;&nbsp;&nbsp;)。①土地改革②人民公社化运动③三大改造④家庭联产承包责任制', '①②③④|④③①②|①③②④', '3');
INSERT INTO `qu` VALUES ('35', '以城市为重点的整个经济体制改革的中心环节是(&nbsp;&nbsp;&nbsp;)。', '扩大企业自主权|工资改革|增强企业活力', '3');
INSERT INTO `qu` VALUES ('36', '“任何一个民族、一个国家都要学习别的民族、别的国家的长处，学习人家的先进科学技术。”邓小平的这一席话主要强调了(&nbsp;&nbsp;&nbsp;)。', '实现民族伟大复兴的重要性|实行对外开放的重要性|赶超先进国家的重要性', '2');
INSERT INTO `qu` VALUES ('37', '改革开放后，深圳从边陲小镇变成为初具规模的现代化城市，被誉为“一夜崛起之城”;1988年以来，海南经济迅速发展，正在建设成为国际旅游岛。这两地的发展都得益于(&nbsp;&nbsp;&nbsp;)。', '建立经济特区|实行“一国两制”|建立直辖市', '1');
INSERT INTO `qu` VALUES ('38', '我国对外开放的新格局是(&nbsp;&nbsp;&nbsp;)。', '经济特区—沿海开放坡市—沿海经济开放区—内地|沿海开放城市—经济特区—沿海经济开放区—内地|经济特区—沿海经济开放区一沿海开放城市—内地', '1');
INSERT INTO `qu` VALUES ('39', '党的十一届三中全会是新中国成立以来中国共产党历史上具有深远意义的转折，是改革开放的开端。该会后实行的改革首先开始于(&nbsp;&nbsp;&nbsp;)', '农村|中小城市|大城市', '1');
INSERT INTO `qu` VALUES ('40', '“说凤阳，道凤阳，风阳本是好地方，自从包地包产后，家家生活大变样。”这段材料赞美的是(&nbsp;&nbsp;&nbsp;)。', '农业社会主义改造|人民公社化运动|家庭联产承包责任制', '3');
INSERT INTO `qu` VALUES ('41', '邓小平说:“农村改革有两个省带头，一个是四川省，那是我的家乡;一个是安徽省，我们就是根据这两个省积累的经验，制定了关于改革的方针政策。”材料中所说农村改革是指(&nbsp;&nbsp;&nbsp;)。', '人民公社化运动|农业生产合作社实行|家庭联产承包责任制', '3');
INSERT INTO `qu` VALUES ('42', '党的十一届三中全会后，在农村实行家庭联产承包责任制的直接目的是(&nbsp;&nbsp;&nbsp;)。', '调动农民的生产积极性|建设社会主义强国|实行土地公有制', '1');
INSERT INTO `qu` VALUES ('43', '中英关于香港问题的《联合声明》规定，香港回归祖国后(&nbsp;&nbsp;&nbsp;)。①设立特别行政区②社会经济制度50年不变③生活方式不变④英国继续参与对香港的管理', '①②④|①②③|②③④', '2');
INSERT INTO `qu` VALUES ('44', '到现在为止的中国近现代史，时间最短的阶段是(&nbsp;&nbsp;&nbsp;)。', '民主革命阶段|旧民主主义革命阶段|新民主主义革命阶段', '3');
INSERT INTO `qu` VALUES ('45', '新中国成立后，体现实事求是思想路线为指导的会议有(&nbsp;&nbsp;&nbsp;)。', '中共七届三中全会、七千人大会、中共十一届三中全会|中共九大、七千人大会、中共一届三中全会|中共七届三中全会、中共八届十一中全会、七千人大会', '1');
INSERT INTO `qu` VALUES ('46', '邓小平建设有中国特色社会主义理论包含的内容有(&nbsp;&nbsp;&nbsp;)。①社会主义初级阶段的理论②实现三步走的战略部署③社会主义初级阶段的基本路线④“两制”的构想', '①③④|②③④|①②③④', '3');
INSERT INTO `qu` VALUES ('47', '《关于党内政治生活的若干准则》是在(&nbsp;&nbsp;&nbsp;)通过的。', '中共十一届三中全会|中共十一届四中全会|中共十一届五中全会', '3');
INSERT INTO `qu` VALUES ('48', '改革开放与社会主义现代化建设的关系是(&nbsp;&nbsp;&nbsp;)。', '改革开放是社会主义现代化建设的目的|改革开放是社会主义现代化建设的动力|社会主义现代化建设是改革开放的前提', '2');
INSERT INTO `qu` VALUES ('49', '在中国改革开放史上,有一个关键词注定让人们无法忘记，那就是“经济特区”。30年来，它在我国经济发展中书写了浓墨重彩的一笔。下列不属于我国首批经济特区的是(&nbsp;&nbsp;&nbsp;)。', '广州|珠海|汕头', '1');
INSERT INTO `qu` VALUES ('50', '在改革开放中，经过三次思想解放，我们先后冲破了“个人崇拜”“计划经济崇拜”和“所有制崇拜”，其中冲破“计划经济崇拜”的关键事件是(&nbsp;&nbsp;&nbsp;)。', '中共十二大|中共十三大|中共十四大', '3');
INSERT INTO `qu` VALUES ('51', '新中国成立后，中国共产党审时度势，不断探索，执政能力不断提高，这体现在(&nbsp;&nbsp;&nbsp;)。七届二中全会解决了由新民主主义革命向社会主义革命转变的重大问题②北戴河会议通过在农村建立人民公社的决议③中共十一届三中全会决定把工作中心转移到经济建设上来④中共十三大阐明了社会主义初级阶段的理论', '①②③|③④|①②', '2');
INSERT INTO `qu` VALUES ('52', '党中央作出试办深圳、珠海、汕头、厦门特区的重大决策(1985年把特区改为经济特区)是在(&nbsp;&nbsp;&nbsp;)年。', '1978|1979|1980', '2');
INSERT INTO `qu` VALUES ('53', '以(&nbsp;&nbsp;&nbsp;)为标志，我们党开创了以经济建设为中心的历史发展新时期，找到了建设和发展中国特色社会主义的新道路。', '“文化大革命”的结束|改革开放|党的十一届三中全会', '2');
INSERT INTO `qu` VALUES ('54', '我国历史上最广泛的统一战线是(&nbsp;&nbsp;&nbsp;)', '革命统一战线|抗日民族统一战线|爱国统一战线', '3');
INSERT INTO `qu` VALUES ('55', '流行语往往带有明显的时代特征，流行语是一个时代的烙印。下列流行语哪一组是反映改革开放时代的?(&nbsp;&nbsp;&nbsp;)', '“大包干”“招商引资”|“一大二公”“大炼钢铁”|“走资派”“革命不是请客吃饭”', '1');
INSERT INTO `qu` VALUES ('56', '我国社会主义建设新时期爱国统一战线的三个组成部分是(&nbsp;&nbsp;&nbsp;)。①台、港、澳同胞②拥护祖国统一的爱国者③海外同胞④社会主义劳动者⑤拥护社会主义的爱国者', '①②⑤|②③④|②④⑤', '3');
INSERT INTO `qu` VALUES ('57', '1980年5月16日，中共中央、国务院作出《关于广东、福建两省会议纪要》，决定在(&nbsp;&nbsp;&nbsp;)各划出一定范围的区域试办经济特区。', '深圳、珠海、汕头、福州|深圳、珠海、海南、厦门|深圳、珠海、汕头、厦门', '3');
INSERT INTO `qu` VALUES ('58', '“改革开放胆子要大一些，敢于试验，不能像小脚女人一样。要抓住时机，发展自己……发展才是硬道理。”这是下列哪位领导人说的?(&nbsp;&nbsp;&nbsp;)', '邓小平|胡锦涛|江泽民', '1');
INSERT INTO `qu` VALUES ('59', '党中央提出社会主义初级阶段理论的主要依据是由于我国(&nbsp;&nbsp;&nbsp;)。', '生产力落后，商品经济不发达|社会主义经济体制不成孰|存在着多种经济成分', '1');
INSERT INTO `qu` VALUES ('60', '邓小平关于“三步走”的发展战略部署解决了我国建设与发展中长期没有解决的一个全局性的问题，这个问题是(&nbsp;&nbsp;&nbsp;)。', '把工业化与现代化结合起来|把传统产业革命与迎头赶上的新的科技革命结合起来|把实现现代化与改善人民生活结合起来', '3');
INSERT INTO `qu` VALUES ('61', '20世纪80年代前期，邓小平说:“三十几年的经验是，关起门来搞建设是不行的，发展不起来。”为改变材料所述问题，我国所采取的对策是(&nbsp;&nbsp;&nbsp;)。', '建立经济特区，实行对外开放|农村经济体制改革|科技兴国，实施“863\"计划', '1');
INSERT INTO `qu` VALUES ('62', '“长期共存、互相监督、肝胆相照、荣辱与共”，中国共产党与民主党派之间合作的这一方针提出的时间是(&nbsp;&nbsp;&nbsp;)。', '第一届人民政协召开时|中共十一届三中全会以后|新中国国民经济恢复时期', '2');
INSERT INTO `qu` VALUES ('63', '三个有利于＂的判断标准中最根本的标准是(&nbsp;&nbsp;&nbsp;)。', '是否有利于社会主义生产发展，即生产力标准|是否有利于增强综合国力|是否有利于社会主义事业的壮大', '1');
INSERT INTO `qu` VALUES ('64', '新中国成立以来，我们在社会主义建设中所经历的曲折和失误，归根到底，就在于没有搞清楚(&nbsp;&nbsp;&nbsp;)。', '什么是社会主义，怎样建设社会主义|什么是社会主义的主要矛盾|什么是社会主义的根本任务', '1');
INSERT INTO `qu` VALUES ('65', '“三来一补”是中国大陆在改革开放初期尝试性地创立的一种企业贸易形式，它最早出现于1978年。其中，下列选项中不属于“三补”的一项是(&nbsp;&nbsp;&nbsp;)。', '来钱订制|来料加工|来样加工', '1');
INSERT INTO `qu` VALUES ('66', '中共十一届三中全会以后，农村改革和城市经济体制改革的相同点有(&nbsp;&nbsp;&nbsp;)。', '所有权和经营权分开，克服分配中的平均主义|实行政企分开，扩大企业自主权|发展以公有制经济为主体的多种所有制经济', '3');
INSERT INTO `qu` VALUES ('67', '新时期以来农村产业结构发生重大变化的标志是(&nbsp;&nbsp;&nbsp;)。', '家庭联产承包贵任制的实行|农村改革深入发展|乡镇企业异军突起', '3');
INSERT INTO `qu` VALUES ('68', '中共十一届三中全会以后对我国农村实行家庭联产承包责任制的表述，最确切的是(&nbsp;&nbsp;&nbsp;)', '与当时农村生产力相适应的重大措施|对土地所有制的重大变革|我国农村产业结构的重大调整', '1');
INSERT INTO `qu` VALUES ('69', '中共十一届三中全会以后，我国实行对外开放的根本目的是(&nbsp;&nbsp;&nbsp;)。', '发展我国社会主义经济|扩大对外贸易，吸引外资|学习发达国家的先进技术', '1');
INSERT INTO `qu` VALUES ('70', '中共十一届三中全会以后，首批建立的四个经济特区分别属于(&nbsp;&nbsp;&nbsp;)。', '福建省、江苏省|广东省、福建省|浙江省、广东省', '2');
INSERT INTO `qu` VALUES ('71', '1980年5月，党中央、国务院正式决定将“出口特区”改名为“经济特区”，并在深圳加以实施。关于经济特区，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '经济特区主要实行市场调节|经济特区可以采用与内地不同的体制政策|经济特区投资规模3亿元以上项目需要报国务院审批', '3');
INSERT INTO `qu` VALUES ('72', '1982年，为了争取和平、寻求建立更均衡的对外关系，中国政府把反对霸权主义、(&nbsp;&nbsp;&nbsp;)、加强同第三世界的团结合作，作为新时期基本的对外方针。', '和平共处|构筑世界新秩序|维护世界和平', '3');
INSERT INTO `qu` VALUES ('73', '1980年5月，党中央、国务院正式决定将“出口特区”改名为“经济特区”，并在深圳加以实施。关于经济特区，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '经济特区主要实行市场调节|经济特区可以采用与内地不同的体制政策|经济特区投资规模3亿元以上项目需要报国务院审批', '3');
INSERT INTO `qu` VALUES ('74', '1982年，为了争取和平、寻求建立更均衡的对外关系，中国政府把反对霸权主义、(&nbsp;&nbsp;&nbsp;)、加强同第三世界的团结合作，作为新时期基本的对外方针。', '和平共处|构筑世界新秩序|维护世界和平', '3');
INSERT INTO `qu` VALUES ('75', '1984年5月，中共中央、国务院决定开放大连、秦皇岛、天津、烟台、青岛、连云港、上海、宁波、福州、广州、湛江、北海等(&nbsp;&nbsp;&nbsp;)沿海港口城市。', '14个|15个|16个', '1');
INSERT INTO `qu` VALUES ('76', '中共十一届三中全会以后，中国的现代化面临的迫切任务是(&nbsp;&nbsp;&nbsp;)。', '要从中国的国情出发，明确我国社会主义的发展阶段|要消灭严重影响社会主义优越性的贫困问题|要改革体制，调整发展战略', '3');
INSERT INTO `qu` VALUES ('77', '20世纪90年代，在同广大发展中国家发展关系时，中国提出了“平等互利、讲求实效、(&nbsp;&nbsp;&nbsp;)、共同发展”的经济合作四项原则。', '形式多样|礼尚往来|合作共嬴', '1');
INSERT INTO `qu` VALUES ('78', '党的十二大首次明确提出的命题是(&nbsp;&nbsp;&nbsp;)。', '建设有中国特色的社会主义|社会主义商品经济|社会主义市场经济', '1');
INSERT INTO `qu` VALUES ('79', '中共十二大的主题报告是(&nbsp;&nbsp;&nbsp;)。', '《解放思想，实事求是，团结一致向前看》|《沿着有中国特色的社会主义道路前进》|《全面开创社会主义现代化建设的新局面》', '3');
INSERT INTO `qu` VALUES ('80', '1982年1月11日,邓小平接见来华访问的(&nbsp;&nbsp;&nbsp;)时明确提出:叶九条“实际上就是一个国家，两种制度……不只是台湾问题，还有香港问题……＂', '英国首相撒切尔夫人|香港总督麦理浩|美国华人协会主席李耀基', '3');
INSERT INTO `qu` VALUES ('81', '关于1982年宪法，下列阐述不正确的是(&nbsp;&nbsp;&nbsp;)。', '“国家尊重和保障人权”第一次写进宪法|这部宪法以1954年宪法为基础|该宪法构成了现今宪法的主体部分', '1');
INSERT INTO `qu` VALUES ('82', '1982年到1984年，中央连续发出3个“一号文件”，不断推出稳定和完善(&nbsp;&nbsp;&nbsp;)的措施。', '家庭联产承包责任制|经济特区经济建设和对外开放|农村商品经济的发展', '1');
INSERT INTO `qu` VALUES ('83', '1984年1月22日到2月17日，邓小平视察珠海、深圳等经济特区和广州、上海。在珠海，邓小平提笔写下了(&nbsp;&nbsp;&nbsp;)。', '经济特区发展好|珠海经济特区好|经济特区搞得好', '2');
INSERT INTO `qu` VALUES ('84', '明确把计划生育作为我国一项基本国策，普遍提倡一对夫妇只生育一个孩子，严格控制二胎，是(&nbsp;&nbsp;&nbsp;)。', '第三届全国人民代表大会|1971年国务院批转的《关于做好计划生育工作的报告》|党的十二大报告', '3');
INSERT INTO `qu` VALUES ('85', '关于中共十二大，下列阐述错误的一项是(&nbsp;&nbsp;&nbsp;)。', '提出努力建设高度的社会主义精神文明和高度的社会主义民主|大会提出了到20世纪末人民的物质文化生活达到小康水平|提出努力建设高度的社会主义精神文明和高度的社会主义民主', '1');
INSERT INTO `qu` VALUES ('86', '1984年3月24日，福建省55位厂长经理在《福建日报》上发出“请给我们松绑”呼吁后，《人民日报》转载了这封呼吁信，将“松绑”风吹向全国。这里的“松绑”主要是指(&nbsp;&nbsp;&nbsp;)。', '允许企业实行公私合营|推行公司制|扩大企业的经营自主权', '3');
INSERT INTO `qu` VALUES ('87', '中共十二届三中全会后，在理论上对市场经济的性质、我国要不要实行市场经济等问题出现了很多争论，争论的焦点是(&nbsp;&nbsp;&nbsp;)。', '坚持公有制为主体还是搞私有制|捞计划经济还是搞有计划的商品经济|搞市场经济是姓“社”还是姓“资”', '3');
INSERT INTO `qu` VALUES ('88', '1984年10月，中共十二届三中全会通过了(&nbsp;&nbsp;&nbsp;)，以城市为重点的经济体制改革全面展开。', '《关于经济体制改革的决定》|《关于政治体制改革的决定》|《关于国营工业企业进行全面整顿的决定》', '1');
INSERT INTO `qu` VALUES ('89', '中共十二届三中全会通过的《关于经济体制改革的决定》明确指出要加快以(&nbsp;&nbsp;&nbsp;)为重点的整个经济体制改革的步伐。', '农村|国有企业|城市', '1');
INSERT INTO `qu` VALUES ('90', '下列不属于《关于经济体制改革的决定》内容的是(&nbsp;&nbsp;&nbsp;)。', '突破了把计划经济同商品经济对立起来的传统观点|增强企业活力是经济体制改革的中心环节|进行全面金融体制改', '3');
INSERT INTO `qu` VALUES ('91', '《关于经济体制改革的决定》总结了中共十一届三中全会以来经济体制改革的经验,比较系统地阐述了经济体制改革中的一系列重大理论和实践问题，成为全面经济体制改革的纲领性文献。这个文件是在(&nbsp;&nbsp;&nbsp;)上通过的。', '中共十二大|中共十二届三中全会|中共十二届五中全会', '2');
INSERT INTO `qu` VALUES ('92', '党的十二届六中全会通过的《中共中央关于社会主义精神文明建设指导方针的决议》指出，社会主义精神文明建设的根本任务是适应社会主义现代化建设的需要，培育有理想、有道德、有文化、(&nbsp;&nbsp;&nbsp;)的社会主义公民，提高整个中华民族的思想道德素质和科学文化素质。', '有党性|有纪律|有素质', '2');
INSERT INTO `qu` VALUES ('93', '1986年，科学家王大珩、王涂昌陈芳允等上书中共中央，提出发展高科技的建议。这一建议后来被称为著名的(&nbsp;&nbsp;&nbsp;)。', '星火计划|菜篮子工程|\"863\"计划', '3');
INSERT INTO `qu` VALUES ('94', '将“为把我国建设成为富强、民主、文明的社会主义现代化国家而奋斗”规定为我国现代化建设目标的是(&nbsp;&nbsp;&nbsp;)。', '中共十一届三中全会|中共十二大|中共十三大', '3');
INSERT INTO `qu` VALUES ('95', '1986年党的十二届六中全会通过的《中共中央关于社会主义精神文明建设指导方针的决议》指出，我国社会主义现代化建设的总体布局是:以经济建设为中心，坚定不移地进行经济体制改革，坚定不移地进行(&nbsp;&nbsp;&nbsp;)，坚定不移地加强精神文明建设，并且使这几个方面互相配合，互相促进。', '对外开放|政治体制改革|文化道德建设', '2');
INSERT INTO `qu` VALUES ('96', '自1978年之后，粮票、布票、油票等品种繁多的购物票证相继被取消。这些票证退出历史舞台的主要原因是(&nbsp;&nbsp;&nbsp;)。', '改革开放促进了社会经济发展|人们的生活方式发生了变化|人们的购物方式发生了变化', '1');
INSERT INTO `qu` VALUES ('97', '社会主义初级阶段的理论正式提出是在(&nbsp;&nbsp;&nbsp;)上。', '中共十一届三中全会|中共十三大|中共十三届四中全会', '2');
INSERT INTO `qu` VALUES ('98', '1987年10月25日，中国共产党第(&nbsp;&nbsp;&nbsp;)次全国代表大会在北京召开。', '十二|十三|十四', '2');
INSERT INTO `qu` VALUES ('99', '中共十三大报告在总结中共十一届三中全会以来取得的历史成就的基础上，首次比较系统地阐明了(&nbsp;&nbsp;&nbsp;)。', '有计划的商品经济理论|社会主义初级阶段理论|社会主义市场经济理论', '2');
INSERT INTO `qu` VALUES ('100', '上海证券交易所是改革开放以来在中国大陆开业的第一家证券交易所。正式开业是在(&nbsp;&nbsp;&nbsp;)12月19日。', '1982年|1986年|1990年', '3');
INSERT INTO `qu` VALUES ('101', '社会主义精神文明建设的根本任务是:适应社会主义现代化建设需要，培养(&nbsp;&nbsp;&nbsp;)，提高整个中华民族的思想道德素质和科学文化素质。', '有理想、有觉悟、有文化、有纪律的社会主义公民|有思想、有道德、有知识、有纪律的社会主义公民|有理想、有道德、有文化、有纪律的社会主义公民', '3');
INSERT INTO `qu` VALUES ('102', '(&nbsp;&nbsp;&nbsp;)，中共十三届四中全会在北京召开，江泽民同志当选为中央委员会总书记。', '1988年10月|1989年6月|1989年11月', '2');
INSERT INTO `qu` VALUES ('103', '中国共产党第十三次全国代表大会于1987年10月25日至11月1日在北京召开。关于党的十三大，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '第一次系统地阐明了社会主义初阶段的理论|大会的中心任务是关于政治体制改革|各民主党派、全国工商联负责人列席了大会', '2');
INSERT INTO `qu` VALUES ('104', '(&nbsp;&nbsp;&nbsp;)年5月15日，应中华人民共和国主席杨尚昆的邀请，苏联最高苏维埃主席团主席、苏共中央委员会总书记米·谢·戈尔巴乔夫对中国进行正式访问。这次访问是自1959年以来苏联最高领导人对中国的第一次访问。邓小平与戈尔巴乔夫于16日举行会晤，宣布中苏两国关系实现正常化。', '1985|1987|1989', '3');
INSERT INTO `qu` VALUES ('105', '1990年9月22日,第(&nbsp;&nbsp;&nbsp;)届亚运会在北京隆重开幕。', '9|10|11', '3');
INSERT INTO `qu` VALUES ('106', '邓小平著名的南方谈话发表于(&nbsp;&nbsp;&nbsp;)年。', '1991|1992|1993', '2');
INSERT INTO `qu` VALUES ('107', '邓小平提出“计划和市场都是经济手段”论断的时间是在(&nbsp;&nbsp;&nbsp;)年。', '1982|1984|1992', '3');
INSERT INTO `qu` VALUES ('108', '1992年10月,中共十四大明确提出，我国经济体制改革目标是建立(&nbsp;&nbsp;&nbsp;)。', '社会主义市场经济体制|社会主义计划与市场经济体制|社会主义商品经济体制', '1');
INSERT INTO `qu` VALUES ('109', '1992年10月12日至18日，中共第十四次全国代表大会在北京召开。江泽民同志在会上作了(&nbsp;&nbsp;&nbsp;)的报告。大会通过了《中国共产党章程(修正案)》，将建设有中国特色的社会主义的理论和党的基本路线写进党章。', '《加快改革开放和现代化建设伐夺取有中国特色社会主义事业的更大胜利》|《沿着有中国特色社会主义道路前进》|《高举邓小平理论伟大旗帜，把建设有中国特色社会主义事业推向二十一世纪》', '1');
INSERT INTO `qu` VALUES ('110', '关于中共十四大，下列阐述错误的一项是(&nbsp;&nbsp;&nbsp;)。', '为中共十四大召开做了充分的思想理论准备的是邓小平南方谈话|明确了我国经济体制改革目标是建立社会主义市场经济体制|明确提出了邓小平理论是我们党的指导思想', '3');
INSERT INTO `qu` VALUES ('111', '实现社会主义现代化目标分“三步走”的战略部署是在(&nbsp;&nbsp;&nbsp;)。', '中共十一届三中全会提出的|中共十三届四中全会提出的|中共十三大提出的', '3');
INSERT INTO `qu` VALUES ('112', '近代以来中国半殖民地半封建社会的矛盾，呈现出错综复杂的状况，其中，贯穿整个中国半殖民地半封建社会始终，并对中国近代社会的发展变化其决定性作用的最主要矛盾是(&nbsp;&nbsp;&nbsp;)。', '无产阶级与资产阶级的矛盾|帝国主义与中华民族的矛盾|封建主义和人民大众的矛盾', '2');
INSERT INTO `qu` VALUES ('113', '近代中国社会的性质是(&nbsp;&nbsp;&nbsp;)。', '殖民地社会|封建社会|半殖民地半封建社会', '3');
INSERT INTO `qu` VALUES ('114', '1840年鸦片战争后，中国遭受到西方列强“坚船利炮”的欺凌不断加深，中华民族面临生死存亡的危机也日益严峻。中国这头“睡狮”在西方列强的隆隆炮火中逐渐苏醒，促使中国人民的民族意识开始普遍觉醒的重大事件是(&nbsp;&nbsp;&nbsp;)。', '八国联军侵华战争|中法战争|中日甲午战争', '3');
INSERT INTO `qu` VALUES ('115', '19世纪60年代到90年代，清朝统治阶级内部的洋务派兴办近代企业，建立新式海陆军，创办新式学校，派遣留学生。洋务派兴办洋务新政的主要目的是(&nbsp;&nbsp;&nbsp;)。', '迎合帝国主义|维护封建统治|对抗顽固派', '2');
INSERT INTO `qu` VALUES ('116', '近代中国，一些爱国人士提出过实业救国、教育救国、科学救国等主张，并为此付出了巨大努力，但这些主张并不能从根本上给濒临危亡的中国指明准确的道路，这是因为他们都没有认识到(&nbsp;&nbsp;&nbsp;)。', '争取民族独立和人民解放是实现民族复兴的前提|中国巳经被卷入世界资本主义经济体系和世界市场中|中国是一个政治经济发展不平衡的国家', '1');
INSERT INTO `qu` VALUES ('117', '从1840年鸦片战争到1919年五四运动的80年间，中国人民面对外来侵略进行了英勇顽强的反抗，但历次的反侵略战争中，都以中国失败、中国政府被迫签订丧权辱国的条约而告终。从外部因素看，当然是敌人力址强大，而从中国内部因素来分析，其根本原因是(&nbsp;&nbsp;&nbsp;)。', '军事战略错误|社会制度腐败|经济技术落后', '2');
INSERT INTO `qu` VALUES ('118', '近代中国第一个资产阶级政党是(&nbsp;&nbsp;&nbsp;)', '中国同盟会|中华革命党|中国国民党', '1');
INSERT INTO `qu` VALUES ('119', '辛亥革命的失败证明了(&nbsp;&nbsp;&nbsp;)。', '帝国主义和反动军阀力量太强大|民族资产阶级不能领导中国民主革命取得彻底胜利|中国不能走西方民主议会道路', '2');
INSERT INTO `qu` VALUES ('120', '20世纪中国的第一次历史性巨变是(&nbsp;&nbsp;&nbsp;)。', '太平天国运动|义和团运动|辛亥革命', '3');
INSERT INTO `qu` VALUES ('121', '辛亥革命后，中华民族面对着两大历史任务:一个是要求得民族独立和人民解放;另一个是(&nbsp;&nbsp;&nbsp;)。', '建立民主共和国和人民政府|实现国家繁荣富强和人民共同富裕|实现国家的工业化和现代化', '2');
INSERT INTO `qu` VALUES ('122', '毛泽东在谈到辛亥革命时指出，辛亥革命有它胜利的地方，也有它失败的地方，＂辛亥革命把皇帝赶跑，这不是胜利吗?说它失败，是说辛亥革命只把一个皇帝赶跑＂。毛泽东这里说的“只把一个皇帝赶跑”意思指的是(&nbsp;&nbsp;&nbsp;)。', '没有推翻帝制|反帝反封建的革命任务没有完成孙中山没有继续革命', '2');
INSERT INTO `qu` VALUES ('123', '20世纪的中国经历了三次历史性的巨变:辛亥革命、中华人民共和国成立和中国共产党十一届三中全会后的改革开放，同时也出现了三位伟人。下列选项中不属于20世纪三位伟人的一位是(&nbsp;&nbsp;&nbsp;)。', '孙中山|毛泽东|鲁迅', '3');
INSERT INTO `qu` VALUES ('124', '辛亥革命后，尤其是第一次世界大战期间，随着中国的民族工业迅速发展，到1919年，中国近代产业工人已达到了(&nbsp;&nbsp;&nbsp;)人左右。', '60万|100万|200万', '3');
INSERT INTO `qu` VALUES ('125', '中国工人阶级除了具有一般无产阶级的优点外，还有自己的特点。下列选项中有一项不属于中国工人阶级的特点的是(&nbsp;&nbsp;&nbsp;)。', '深受帝国主义、封建主义和资本主义的三重压迫|集中程度比较高，易于形成强大的政治力量|文化程度比较高，一开始就受到西方先进文化的熏陶', '3');
INSERT INTO `qu` VALUES ('126', '1918年第一次世界大战结束，西方列强把持的巴黎和会竟然决定把战败国德国在我国山东攫取的各种权利转让给(&nbsp;&nbsp;&nbsp;)，极大地激怒了中国人民。', '日本|俄罗斯|美国', '1');
INSERT INTO `qu` VALUES ('127', '新文化运动开始于(&nbsp;&nbsp;&nbsp;)年。', '1911|1914|1915', '3');
INSERT INTO `qu` VALUES ('128', '新文化运动的最重要成果是(&nbsp;&nbsp;&nbsp;)。', '民主和科学思想得到弘扬|中国先进的知识分子接受了马克思主义|动摇了封建思想的统治地位', '3');
INSERT INTO `qu` VALUES ('129', '新文化运动兴起的标志是(&nbsp;&nbsp;&nbsp;)。', '李大钊发表《庶民的胜利》|“兼容并包”方针的提出|陈独秀在上海创办《新青年》', '2');
INSERT INTO `qu` VALUES ('130', '五四运动标志着中国(&nbsp;&nbsp;&nbsp;)。', '封建主义的寿终正寝|新民主主义革命的开端|共产党走上历史舞台', '2');
INSERT INTO `qu` VALUES ('131', '五四运动与辛亥革命的最大不同在于(&nbsp;&nbsp;&nbsp;)。', '斗争对象|国情|群众基础', '3');
INSERT INTO `qu` VALUES ('132', '1919年5月4日，五四爱国运动爆发的直接导火索是(&nbsp;&nbsp;&nbsp;)。', '巴黎和会上中国外交的失败|日本制造“济南惨案”|日本出兵占领青岛', '1');
INSERT INTO `qu` VALUES ('133', '五四运动被作为新民主主义革命的开端是因为(&nbsp;&nbsp;&nbsp;)。①中国革命性质和社会性质发生了变化②革命的领导阶级和指导思想发生了变化③具有以往历次革命运动所没有的广泛性④开始了马克思主义与中国工人运动相结合的过程', '①③④|②③④|②③', '2');
INSERT INTO `qu` VALUES ('134', '新民主主义革命与旧民主主义革命区别的主要标志是(&nbsp;&nbsp;&nbsp;)。', '革命领导权|革命前途|革命对象', '1');
INSERT INTO `qu` VALUES ('135', '由旧民主主义革命转变为新民主主义革命的标志是(&nbsp;&nbsp;&nbsp;)。', '新文化运动|五卅运动|五四运动', '3');
INSERT INTO `qu` VALUES ('136', '《共产党宣言》是无数中国共产党人走上革命道路的启蒙经典，第一个全文翻译成中文的是浙江金华人陈望道。习近平总书记在讲述陈望道翻译《共产党宣言》的故事时，很深情又意味深长地讲了一句话:“真理的味道非常甜。”陈望道全文翻译的《共产党宣言》是从(&nbsp;&nbsp;&nbsp;)译本翻译过来的。', '日文|英文|俄文', '1');
INSERT INTO `qu` VALUES ('137', '1920年8月，最先在(&nbsp;&nbsp;&nbsp;)建立了中国第一个共产党早期组织，并成为创建全国统一的无产阶级政党的活动中心。\n', '北京|上海|广州', '2');
INSERT INTO `qu` VALUES ('138', '在五四运动以后的马克思主义传播中，起了主要作用的是(&nbsp;&nbsp;&nbsp;)。', '陈独秀|陈望道|李大钊', '3');
INSERT INTO `qu` VALUES ('139', '下列各项中，斗争矛头直接指向北洋军阀的有(&nbsp;&nbsp;&nbsp;)。', '五四运动、京汉铁路工人大罢工、北伐战争|五四运动、五卅运动、国民革命军东征|五卅运动、北伐战争、国民革命军东征', '1');
INSERT INTO `qu` VALUES ('140', '毛泽东说:“十月革命一声炮响，给我们送来了马克思列宁主义。”在中国公开颂扬俄国十月革命的第一人是(&nbsp;&nbsp;&nbsp;)。', '孙中山|蔡和森|李大钊', '3');
INSERT INTO `qu` VALUES ('141', '下列事件按因果关系排列顺序正确的是(&nbsp;&nbsp;&nbsp;)。①国民议会运动②孙中山发表北上宣言③冯玉祥北京政变④第二次直奉战争', '④③②①|①②③④|②④③①', '1');
INSERT INTO `qu` VALUES ('142', '中国共产党成立前，国内宣传马克思主义影响最大的刊物是(&nbsp;&nbsp;&nbsp;)。', '李大钊主编的《每周评论》|陈独秀主编的《新青年》|毛泽东主编的《湘江评论》\n', '2');
INSERT INTO `qu` VALUES ('143', '关于中国共产党成立，下列说法不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '作为党的创始人的李大钊、陈独秀没有参加一大|“中国共产党”的名称是一大就确定的|党的一大通过的纲领还没有把实现共产主义作为自己的奋斗目标\n', '3');
INSERT INTO `qu` VALUES ('144', '中共一大的中心议题是(&nbsp;&nbsp;&nbsp;)。', '正式建立中国共产党|讨论马克思主义传播|讨论与国民党合作', '1');
INSERT INTO `qu` VALUES ('145', '中共一大通过了中国共产党的第一个纲领，纲领确定党的名称是“中国共产党＂。第一个提出党的名称为“中国共产党”的是(&nbsp;&nbsp;&nbsp;)。', '蔡和森|毛泽东|陈独秀', '1');
INSERT INTO `qu` VALUES ('146', '关于参加中共一大会议代表，下列正确的一组是(&nbsp;&nbsp;&nbsp;)。', '毛泽东张国焘陈独秀董必武|毛泽东刘少奇李大钊王尽美|毛泽东何叔衡刘仁静陈潭秋', '3');
INSERT INTO `qu` VALUES ('147', '下列四个人物中没有参加中共一大的是(&nbsp;&nbsp;&nbsp;)。', '李大钊|周佛海|王尽美', '1');
INSERT INTO `qu` VALUES ('148', '标志着中国新民主主义革命伟大开端的是(&nbsp;&nbsp;&nbsp;)。', '新文化运动|五四运动|国共第一次合作', '2');
INSERT INTO `qu` VALUES ('149', '中国共产党制定民主革命纲领的主要依据是(&nbsp;&nbsp;&nbsp;)。', '对中国社会性质和革命性质的认识|对帝国主义侵略中国的认识|对北洋军阀统治的认识', '1');
INSERT INTO `qu` VALUES ('150', '作为党公开领导工人运动机关的中国劳动组合书记部是在中共(&nbsp;&nbsp;&nbsp;)之后成立的。', '一大|二大|三大', '1');
INSERT INTO `qu` VALUES ('151', '中国共产党第一次制定反帝反封建民主革命纲领的会议是(&nbsp;&nbsp;&nbsp;)。', '中共一大|中共二大|中共三大', '2');
INSERT INTO `qu` VALUES ('152', '中国工人运动史上持续时间最长的一次罢工是(&nbsp;&nbsp;&nbsp;)。', '安源路矿工人罢工|京汉铁路工人大罢工|省港大罢工', '3');
INSERT INTO `qu` VALUES ('153', '在1922年5月全国第一次劳动大会前后，以1922年1月(&nbsp;&nbsp;&nbsp;)大罢工为起点，1923年2月(&nbsp;&nbsp;&nbsp;)工人大罢工为终点，掀起了中国工人运动的第一个高潮。', '省港安源路矿|香港海员京汉铁路|省港京张铁路', '2');
INSERT INTO `qu` VALUES ('154', '下列关于北洋军阀的评述，不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '北洋军阀是中国近代一支特殊的政治军事力量|北洋军阀统治始于清朝末代皇帝宣统退位|北洋军阀统治的崩溃是由于国民革命的兴起', '2');
INSERT INTO `qu` VALUES ('155', '从1922年1月至1923年2月，全国罢工达180多次，其中主要的有香港海员大罢工和(&nbsp;&nbsp;&nbsp;)。', '安源路矿工人大罢工|京汉铁路工人大罢工|上海工人大罢工', '2');
INSERT INTO `qu` VALUES ('156', '中国共产党成立后，积极发动工农群众开展革命斗争。中国共产党第一次独立领导并取得中国共产党成立后，积极发动工农群众开展革命斗争。中国共产党第一次独立领导并取得', '京汉铁路工人大罢工|香港海员大罢工|安源路矿工人大罢工', '3');
INSERT INTO `qu` VALUES ('157', '中国国民党第一次全国代表大会召开的地点是(&nbsp;&nbsp;&nbsp;)。', '北京|武汉|武汉', '3');
INSERT INTO `qu` VALUES ('158', '1924年1月，中国国民党第一次全国代表大会在广州召开，大会通过的宣言对三民主义作出新的解释。新三民主义成为第一次国共合作的政治基础，究其原因是由于新三民主义纲领(&nbsp;&nbsp;&nbsp;)。', '把斗争的矛头直接指向了北洋军阀|体现了联俄联共扶助农工三大革命政策|同中国共产党在民主革命阶段的纲领基本一致', '3');
INSERT INTO `qu` VALUES ('159', '1923年6月，中国共产党在广州召开了第三次代表大会，大会的主要议程是讨论(&nbsp;&nbsp;&nbsp;)。', '党的最高纲领和最低纲领|中国共产党加入国民党的问题|组织城市工人阶级武装起义', '2');
INSERT INTO `qu` VALUES ('160', '中国共产党制定革命统一战线政策是在(&nbsp;&nbsp;&nbsp;)。', '中共三大|中共二大|八七会议', '1');
INSERT INTO `qu` VALUES ('161', '国民党第一次代表大会选出国民党中央执行委员会，其中，共产党人占总数的(&nbsp;&nbsp;&nbsp;)。', '1/3|1/4|1/5', '2');
INSERT INTO `qu` VALUES ('162', '第一次国共合作正式形成的标志是(&nbsp;&nbsp;&nbsp;)。', '中国国民党一大的成功召开|中国共产党三大的成功召开|中国共产党民主革命纲领的制定', '1');
INSERT INTO `qu` VALUES ('163', '第一次国共合作的政治基础，是以联俄、联共和(&nbsp;&nbsp;&nbsp;)的三大政策为革命灵魂和革命方法的新三民主义。', '扶助农工|反对军阀|反对封建主义', '1');
INSERT INTO `qu` VALUES ('164', '1925年1月，中共在上海举行(&nbsp;&nbsp;&nbsp;)。这次大会明确提出了无产阶级在民主革命中的领导权和工农联盟问题。', '三届一中全会|第四次全国代表大会|中央执行委员会特别会议', '2');
INSERT INTO `qu` VALUES ('165', '1925年爆发的震惊中外的(&nbsp;&nbsp;&nbsp;)，标志着大革命高潮的到来。', '五卅运动|广州沙面工人罢工|香港海员大罢工', '1');
INSERT INTO `qu` VALUES ('166', '1926年国民革命军北伐的对象不包括(&nbsp;&nbsp;&nbsp;)。', '陈炯明|张作霖|吴佩孚', '1');
INSERT INTO `qu` VALUES ('167', '北伐战争期间，叶挺独立团所在的国民革命军(&nbsp;&nbsp;&nbsp;)被称为“铁军”。', '第一军|第二军|第四军', '3');
INSERT INTO `qu` VALUES ('168', '表明蒋介石集团公开背叛革命的事件是(&nbsp;&nbsp;&nbsp;)。', '中山舰事件|七一五反革命政变|四一二反革命政变', '3');
INSERT INTO `qu` VALUES ('169', '国民革命时期，国共合作采取的形式是(&nbsp;&nbsp;&nbsp;)。', '党外合作|党内合作|建立新的组织形式', '2');
INSERT INTO `qu` VALUES ('170', '大革命失败，中国共产党从中得到的最深刻的教训是(&nbsp;&nbsp;&nbsp;)。①要掌握革命武装②要制定彻底的革命纲领③必须建立巩固的工农联盟④无产阶级必须掌握革命领导权', '①③④|①④|②③④', '2');
INSERT INTO `qu` VALUES ('171', '关于第一次国共合作，下列表述正确的一项是(&nbsp;&nbsp;&nbsp;)。', '共产党员以组织的身份整体加入国民党|新三民主义的纲领与共产党在民主革命阶段的纲领基本一致|国民党二大的成功召开标志着第一次国共合作的正式形成', '2');
INSERT INTO `qu` VALUES ('172', '上地革命战争是国共两党之间进行的第一次武装战争，是从1927年的八一南昌起义开始到(&nbsp;&nbsp;&nbsp;)结束。', '1936年12月12日的西安事变|1935年12月25日瓦窑堡会议召开|1937年7月7日卢沟桥事变', '1');
INSERT INTO `qu` VALUES ('173', '打响了武装反抗国民党反动派第一枪的是(&nbsp;&nbsp;&nbsp;)。', '南昌起义|秋收起义|广州起义', '1');
INSERT INTO `qu` VALUES ('174', '单选题与南昌起义相比较，秋收起义最明显的特征是(&nbsp;&nbsp;&nbsp;)。', '成立了中国工农红军第四军|以夺取城市为目标|放弃夺取城市改向山区进军', '3');
INSERT INTO `qu` VALUES ('175', '下列不属于中共党史军史上的三大起义的是(&nbsp;&nbsp;&nbsp;)。', '南昌起义|秋收起义|平江起义', '3');
INSERT INTO `qu` VALUES ('176', '广州起义的总指挥是(&nbsp;&nbsp;&nbsp;)。', '叶挺|黄平|张大雷', '3');
INSERT INTO `qu` VALUES ('177', '1927年底，共产党人张太雷等领导发动起义并建立了苏维埃政府，其地点在(&nbsp;&nbsp;&nbsp;)。', '南昌|宁冈|广州', '3');
INSERT INTO `qu` VALUES ('178', '1927年中国共产党领导的三次武装起义中，先后参加两次起义的是(&nbsp;&nbsp;&nbsp;)。', '贺龙|朱德|叶挺', '3');
INSERT INTO `qu` VALUES ('179', '南昌起义、秋收起义、广州起义使我党总结出最突出的教训是(&nbsp;&nbsp;&nbsp;)。', '必须建立人民军队|必须进行武装斗争|必须把党的工作重心转到农村', '3');
INSERT INTO `qu` VALUES ('180', '国民党一党专政建立的标志是(&nbsp;&nbsp;&nbsp;)。', '蒋介石建立南京国民政府|宁汉合流|蒋介石改组南京政府', '1');
INSERT INTO `qu` VALUES ('181', '(&nbsp;&nbsp;&nbsp;)是无产阶级领导的中心问题，必须放手发动农民，坚决依靠农民，建立巩固的工农联盟。', '阶级斗争问题|路线问题|农民问题', '3');
INSERT INTO `qu` VALUES ('182', '毛泽东的诗词是记载中国革命伟大历程的史诗。他的词“军叫工农革命，旗号濂刀斧头，匡庐(泛指江西)一带不停留，便向潇湘(泛指湖南)直进”描述的是(&nbsp;&nbsp;&nbsp;)。', '北伐军进军湖南|八一南昌起义|湘赣边秋收起义', '3');
INSERT INTO `qu` VALUES ('183', '中国共产党最早建立起来的革命政府是(&nbsp;&nbsp;&nbsp;)。', '中华民国国民政府|广州苏维埃政府|中华苏维埃共和国临时中央政府', '2');
INSERT INTO `qu` VALUES ('184', '下列事件中，与周恩来有直接关系的重大事件是(&nbsp;&nbsp;&nbsp;)。', '南昌起义、亚非会议（万隆会议）、中美正式建交|南昌起义、重庆谈判、亚非会议（万隆会议）|亚非会议（万隆会议）、重庆谈判、中美正式建交', '2');
INSERT INTO `qu` VALUES ('185', '1927年，中国共产党确定开展土地革命和武装推翻国民党反动统治总方针的会议是(&nbsp;&nbsp;&nbsp;)。', '中共六大|洛川会议|八七会议', '3');
INSERT INTO `qu` VALUES ('186', '在1927年八七会议上，毛泽东提出了(&nbsp;&nbsp;&nbsp;)的思想。', '党指挥枪|农村包围城市|枪杆子里出政权', '3');
INSERT INTO `qu` VALUES ('187', '1927年8月7日，中共中央在湖北汉口召开紧急会议，清算了大革命后期以陈独秀为代表的右倾投降主义错误，确定实行土地革命和(&nbsp;&nbsp;&nbsp;)的总方针。', '建立革命根据地|城市革命相结合|武装反抗国民党反动派', '3');
INSERT INTO `qu` VALUES ('188', '大革命失败后，中共将工作重心由城市转向农村，标志着向农村进军新起点的是(&nbsp;&nbsp;&nbsp;)。', '南昌起义后部队转入农村|秋收起义后建立了井冈山根据地|洪湖根据地的创建', '2');
INSERT INTO `qu` VALUES ('189', '确立党对军队的绝对领导的历史大事件是(&nbsp;&nbsp;&nbsp;)。', '八七会议|三湾改编|文家市决策', '2');
INSERT INTO `qu` VALUES ('190', '1927年，毛泽东领导的秋收起义部队进军井冈山时，在江西永新县进行了著名的“三湾改编＂，把支部建在(&nbsp;&nbsp;&nbsp;)上，加强了党对军队的领导。', '团|营|连', '3');
INSERT INTO `qu` VALUES ('191', '土地革命时期，中国共产党建立的第一个红色政权是(&nbsp;&nbsp;&nbsp;)。', '井冈山根据地茶陵县工农兵政府|右江工农民主政府|闽西工农民主政府', '1');
INSERT INTO `qu` VALUES ('192', '1927年后，中国共产党在统一战线问题上的主要错误表现在(&nbsp;&nbsp;&nbsp;)。', '对待民族资产阶级的问题上|对待小资产阶级的问题上|对待地主阶级的问题上', '1');
INSERT INTO `qu` VALUES ('193', '下列关于统一战线的阐述，错误的一项是(&nbsp;&nbsp;&nbsp;)。', '新民主主义革命的统一战线必须以武装斗争为支柱|在统一战线中，无产阶级必须牢牢地掌握统一战线的领导权|在抗日统一战线问题上，王明犯的是“左”倾机会主义错误', '3');
INSERT INTO `qu` VALUES ('194', '在大革命失败后，中国革命能够继续前进的条件有(&nbsp;&nbsp;&nbsp;)。①中国共产党的反帝反封建的主张为广大群众所接受②北伐军中的一部分为中国共产党所掌握③经过大革命洗礼的湘鄂赣等省的群众基础好④中国共产党吸取了大革命失败的教训', '①②③④|②③④|①②③', '1');
INSERT INTO `qu` VALUES ('195', '1928年6月在莫斯科举行的是中国共产党第(&nbsp;&nbsp;&nbsp;)次全国代表大会。', '五|六|四', '2');
INSERT INTO `qu` VALUES ('196', '1928年6月，中国共产党在共产国际的帮助下在(&nbsp;&nbsp;&nbsp;)举行第六次全国代表大会。', '香港|莫斯科|上海', '2');
INSERT INTO `qu` VALUES ('197', '中共六大总结了大革命失败以来的经验教训，制定了新的历史时期的路线和政策，对革命起到了积极的推动作用。但是，这次大会也存在一些缺点。以下不属于本次大会缺点的一项是(&nbsp;&nbsp;&nbsp;)。', '把党的工作重心放在城市|对中国革命的长期性和复杂性认识不足|认为中国是半殖民地半封建社会', '3');
INSERT INTO `qu` VALUES ('198', '毛泽东“工农武装割据“思想对当时中国革命的现实作用表现在(&nbsp;&nbsp;&nbsp;)。', '保存并逐步发展了革命力量|消除了一些人对革命前途的悲观情绪|挽回了王明“左”倾路线给革命造成的巨大损失', '1');
INSERT INTO `qu` VALUES ('199', '中国革命的武装斗争实质是(&nbsp;&nbsp;&nbsp;)。', '集中优势兵力打歼灭战|以城市工人为主体的革命战争|无产阶级领导的以农民为主体的革命战争', '3');
INSERT INTO `qu` VALUES ('200', '下列关于国共十年对峙时期，对中国共产党“左”倾错误发展的原因表达不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '八七会议出现的“左”倾思想错误随革命形势发展而加重了|“左”倾错误一直得到共产国际的支持|当时的中央主要领导人排斥了毛泽东的正确指挥', '2');
INSERT INTO `qu` VALUES ('201', '关于第一次大革命，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '大革命也称“国民革命”|革命的目标是推翻帝国主义在华势力和北洋军阀|大革命失败的主观原因是国民党内部的极少数反共势力', '3');
INSERT INTO `qu` VALUES ('202', '大革命失败后，中国共产党创建的第一个农村革命根据地是(&nbsp;&nbsp;&nbsp;)。', '井冈山革命根据地|鄂豫皖革命根据地|闽北革命根据地', '1');
INSERT INTO `qu` VALUES ('203', '1928年6月18日至7月11日，党的六大在莫斯科近郊五一村召开。关于这次大会，下列阐述不准确的一项是(&nbsp;&nbsp;&nbsp;)。', '大会明确指出中国革命现阶段的性质是资产阶级民主革命|党的六大选举了向忠发为中央政治局常委及主席|大会确定把建立农村根据地工作放在中心地位', '3');
INSERT INTO `qu` VALUES ('204', '1928年，毛泽东总结部队做群众工作的经验，规定部队必须执行三大纪律(当时称“三条纪律”)，下列不属于“三条纪律”的一项是(&nbsp;&nbsp;&nbsp;)。', '行动听指挥|不拿工人农民一点东西|借东西要还', '3');
INSERT INTO `qu` VALUES ('205', '在1930年毛泽东制定的土地革命路线中，对富农的政策是(&nbsp;&nbsp;&nbsp;)。', '联合富农|保护富农|限制富农', '3');
INSERT INTO `qu` VALUES ('206', '1929年12月下旬，红四军党的第九次代表大会在福建上杭县古田村召开，会议总结了红军创立以来的经验，通过了著名的古田会议决议，决议的中心思想是(&nbsp;&nbsp;&nbsp;)。', '用无产阶级思想进行军队和党的建设|中国共产党必须服从共产国际的领导|武装斗争是中国革命的主要形式', '1');
INSERT INTO `qu` VALUES ('207', '1930年6月后，以(&nbsp;&nbsp;&nbsp;)为代表的“左”倾冒险主义错误一度在党中央占据了统治地位，主张在中心城市举行暴动，集中红军主力攻打中心城市，其结果使党和红军都遭受了重大损失。', '李立三|王明|张国焘|', '1');
INSERT INTO `qu` VALUES ('208', '民主革命时期，在我们党内统治时间最长、造成损失最大的“左”倾路线的代表人物是(&nbsp;&nbsp;&nbsp;)。', '李立三|王明|瞿秋白', '2');
INSERT INTO `qu` VALUES ('209', '毛泽东有一首词《渔家傲》，其中写道:“万木霜天红浪漫，天兵怒气冲霄汉。”其写作背景是哪一次“反围剿”?(&nbsp;&nbsp;&nbsp;)', '第一次“反围剿＂|第二次“反围剿”|第三次“反围剿”', '1');
INSERT INTO `qu` VALUES ('210', '1931年，日本关东军蓄意炸毁沈阳北部柳条湖附近南满铁路路轨，反诬是中国军队所为，突然进攻沈阳北大营中国军队，悍然发动了(&nbsp;&nbsp;&nbsp;)。', '九一八事变|八一三事变|一·二八事变', '1');
INSERT INTO `qu` VALUES ('211', '国共十年对峙时期，把马克思主义的普遍真理同中国革命具体实践相结合的光辉典范是(&nbsp;&nbsp;&nbsp;)。', '湘赣边秋收起义|三湾改编|“工农武装割据”思想的提出', '3');
INSERT INTO `qu` VALUES ('212', '南京国民政府形式上完成对全国统一的标志是(&nbsp;&nbsp;&nbsp;)。', '宁汉合流|北伐部队占领北京|东北易帜', '3');
INSERT INTO `qu` VALUES ('213', '在20世纪30年代，中国共产党领导的文学界成立的组织是(&nbsp;&nbsp;&nbsp;)。', '共进会|左翼作冢联盟|文学研究会', '2');
INSERT INTO `qu` VALUES ('214', '1933年11月，蔡廷错等国民党内爱国力星，举起抗日反蒋旗帜，建立了(&nbsp;&nbsp;&nbsp;)。', '民主共和国人民革命政府|中华共和国人民革命政府|中华民国人民革命政府', '2');
INSERT INTO `qu` VALUES ('215', '1931-1936年，中国抗日民主运动的特点是(&nbsp;&nbsp;&nbsp;)。①既有自发的群众斗争，又有国民党内爱国将领的斗争②抗日与反蒋和逼蒋相结合③都有共产党的领导④都被日军直接镇压', '①②③④|③④|①②', '3');
INSERT INTO `qu` VALUES ('216', '九一八事变后，东北抗日武装力量的核心是(&nbsp;&nbsp;&nbsp;)。', '各地抗日义勇军|未撤走的东北军|东北抗日联军', '3');
INSERT INTO `qu` VALUES ('217', '(&nbsp;&nbsp;&nbsp;)是中央红军长征途中最壮烈的一战，此战后，中央红军人数从长征出发时的8.6万余人锐减至3万余人。', '湘江战役|乌江之战|飞夺泸定桥', '1');
INSERT INTO `qu` VALUES ('218', '1935年中国共产党发表了著名的“八一宣言“，提出了(&nbsp;&nbsp;&nbsp;)的口号。', '停止内战，一致抗日|反蒋抗日|国共合作，共同抗日', '1');
INSERT INTO `qu` VALUES ('219', '国共十年对峙时期，中国社会的主要矛盾不包括(&nbsp;&nbsp;&nbsp;)。', '国共之间的矛盾|国民党同中国民主同盟的矛盾|无产阶级同资产阶级之间的矛盾', '2');
INSERT INTO `qu` VALUES ('220', '几乎葬送了中国革命和中国共产党的“左”倾机会主义是(&nbsp;&nbsp;&nbsp;)。', '瞿秋白的“左”倾错误|王明的“左”倾教条主义|李立三的“左”倾冒险主义|', '2');
INSERT INTO `qu` VALUES ('221', '王明“左”倾教条主义混淆了(&nbsp;&nbsp;&nbsp;)的界限。', '民主革命和社会主义革命|资产阶级革命与无产阶级革命|城市革命与农村革命', '1');
INSERT INTO `qu` VALUES ('222', '遵义会议最后改组了中央领导机构，选举毛泽东为(&nbsp;&nbsp;&nbsp;)。', '中央政治局书记|中央政治局常委|中共中央主席', '2');
INSERT INTO `qu` VALUES ('223', '遵义会议改组了中央领导机关，在行军途中又成立了由(&nbsp;&nbsp;&nbsp;)组成的三人军事领导小组。', '毛泽东周恩来王稼祥|周恩来毛泽东张闻天|博古朱德毛泽东', '1');
INSERT INTO `qu` VALUES ('224', '中共第一次独立自主地运用马克思主义原理解决自己的路线、方针、政策的会议是(&nbsp;&nbsp;&nbsp;)。', '中共一大|遵义会议|中共八大', '2');
INSERT INTO `qu` VALUES ('225', '根据遵义会议精神，在红军转战至川滇黔交界时，政治局常委进行分工，决定由(&nbsp;&nbsp;&nbsp;)代替博古负党中央总的责任。', '毛泽东|周恩来|张闻天', '3');
INSERT INTO `qu` VALUES ('226', '关于遵义会议，下列表述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '把“左”倾和右倾分子彻底清除出党中央|结束了王明“左”倾教条主义的长期统治|确立了以毛泽东为代表的新的中央领导', '1');
INSERT INTO `qu` VALUES ('227', '标志着红军二万五千里长征胜利结束的是(&nbsp;&nbsp;&nbsp;)。', '红军穿越大草地进入甘肃、陕西|中央红军同陕北红军会师|红军三大主力在会宁会师', '3');
INSERT INTO `qu` VALUES ('228', '长征胜利地跨越了(&nbsp;&nbsp;&nbsp;)个省，中央红军的总行程达2.5万里以上。', '10|11|12', '3');
INSERT INTO `qu` VALUES ('229', '1936年10月，中国工农红军第一方面军同红(&nbsp;&nbsp;&nbsp;)方面军在甘肃会宁会师。至此，中央红军长征胜利结束。', '二、四|二、三|二、五', '1');
INSERT INTO `qu` VALUES ('230', '红军长征的胜利预示着(&nbsp;&nbsp;&nbsp;)。', '中国革命新的局面到来|国民党统治即将垮台|抗日战争全面爆发', '1');
INSERT INTO `qu` VALUES ('231', '1935年，在中国共产党的组织和领导下，针对日本制造的“华北事变”，北平学生举行了声势浩大的抗日救亡示威游行活动，这就是著名的(&nbsp;&nbsp;&nbsp;)。', '一二·一运动|五四运动|一二·九运动', '3');
INSERT INTO `qu` VALUES ('232', '－二·九运动与五四运动的不同之处是(&nbsp;&nbsp;&nbsp;)。', '由帝国主义侵华引起的|从现在的北京开始发起进而影响全国|中国共产党在运动中起领导作用', '3');
INSERT INTO `qu` VALUES ('233', '土地革命战争后期，中国共产党确立抗日民族统一战线策略的会议是(&nbsp;&nbsp;&nbsp;)。', '瓦窑堡会议|古田会议|遵义会议', '1');
INSERT INTO `qu` VALUES ('234', '1935年，全国抗日救亡运动出现新的高潮，其标志是(&nbsp;&nbsp;&nbsp;)。', '中国共产党发表《八一宣言》|中共确定建立抗日民族统一战线方针|一二·九运动的兴起', '3');
INSERT INTO `qu` VALUES ('235', '1936年12月12日，张学良杨虎城发动“兵谏＂扣留了蒋介石。西安事变发生后，中共中央确定了促成西安事变和平解决的基本方针，其原因是中国共产党(&nbsp;&nbsp;&nbsp;)。', '不赞成张杨的主张|为了团结国民党共同抗|工作重心转向城市斗争', '2');
INSERT INTO `qu` VALUES ('236', '中共十四大指出，十四年伟大实践的经验，集中到一点，就是(&nbsp;&nbsp;&nbsp;)。', '要始终如一坚持党的实事求是思想路线|坚持马克思主义与中国实际相结合的道路|要毫不动摇地坚持以建设有中国特色社会主义理论为指导的党的基本路线', '3');
INSERT INTO `qu` VALUES ('237', '中共历史上第一次明确提出了建立社会主义市场经济体制的目标模式的是(&nbsp;&nbsp;&nbsp;)。', '中共十一届三中全会|中共十四大|中共十三届四中全会', '2');
INSERT INTO `qu` VALUES ('238', '全面系统地阐明了建立社会主义市场经济体制的基本框架和战略部署是(&nbsp;&nbsp;&nbsp;)。', '1981年邓小平主持起草的《中共中央关于建国以来党的若干历史问题的决议》|1987年中共十三大政治报告|1993年中共十四届三中全会通过的《中共中央关于建立社会主义市场经济体制若干问题的决定》', '3');
INSERT INTO `qu` VALUES ('239', '邓小平理论开始形成和发展的标志是(&nbsp;&nbsp;&nbsp;)。', '1956年任中共中央总|1975年主持国务院工|1978年中共十一届三中全会', '3');
INSERT INTO `qu` VALUES ('240', '党的十四大以后,适应建立社会主义市场经济体制的需要,各级党委和政府按照(&nbsp;&nbsp;&nbsp;)和精简、统一、效能的原则,对行政管理体制和党政机构进行了大刀阔斧的改革。', '党政分开|政企分开|精兵简政', '2');
INSERT INTO `qu` VALUES ('241', '1994年12月，我国(&nbsp;&nbsp;&nbsp;)工程正式开工。1997年11月8日，工程实现大江截流。大坝2006年5月2O日全线建成，成为世界上最大的钢筋混凝土重力坝。大坝建成后充分发挥了防洪、通航、发电三大效益。', '长江三峡|黄河小浪底|南水北调', '1');
INSERT INTO `qu` VALUES ('242', '1995年5月，中共中央、国务院作出《关于加速科学技术进步的决定》，根据邓小平科学技术是第一生产力的思想，提出了(&nbsp;&nbsp;&nbsp;)战略。', '可持续发展|科教兴国|西部大开发', '2');
INSERT INTO `qu` VALUES ('243', '1995年9月25—28日，中共十四届五中全会举行。全会通过了《中共中央关于制定国民经济和社会发展“九五”计划和2010年远景目标的建议》。江泽民同志在大会闭幕时发表讲话，深刻阐述了社会主义现代化建设中的十二个重大关系，而其中最主要的是正确处理(&nbsp;&nbsp;&nbsp;)的关系。', '人口、资源与环境|第一、第二、第三产业|改革、发展与稳定', '3');
INSERT INTO `qu` VALUES ('244', '邓小平提出了我国现代化发展“三步走”战略:第一步，从1981年到1990年国民生产总值翻一番，实现温饱;第二步从1991年到20世纪末再翻一番，达到小康;第三步，(&nbsp;&nbsp;&nbsp;)。', '到21世纪中叶再翻两番，达到发达国家水平|到21世纪中叶再翻两番，达到全面小康社会水平|到21世纪中叶再翻两番，达到中等发达国家水平', '3');
INSERT INTO `qu` VALUES ('245', '1996年4月,中国和俄罗斯、哈萨克斯坦、吉尔吉斯斯坦、塔吉克斯坦共和国在上海共同签署协定，建立了(&nbsp;&nbsp;&nbsp;)组织。', '中亚经济合作|上海文化交流|上海合作', '1');
INSERT INTO `qu` VALUES ('246', '就我国来说，(&nbsp;&nbsp;&nbsp;)是解决社会主要矛盾的根本途径。', '发展生产力|正确处理人民内部矛盾|发展社会主义市场经济', '1');
INSERT INTO `qu` VALUES ('247', '中共十五大载入史册的标志是(&nbsp;&nbsp;&nbsp;)。', '在理论认识上突破姓“资＂姓“社”和姓“公”姓“私”的束缚|提出社会主义初级阶段的基本纲领|高举邓小平理论的伟大旗帜', '3');
INSERT INTO `qu` VALUES ('248', '1996年国务院发布了《关于环境保护若干问题的决定》，我国开始实施“三河三湖“水污染防治，其中“三湖”是指太湖、滇池、巢湖，而“三河”指的是(&nbsp;&nbsp;&nbsp;)。', '淮河流域、海河流域、辽河流域|黄河流域、海河流域|黄河、长江、淮河', '1');
INSERT INTO `qu` VALUES ('249', '1994年9月，党的十四届四中全会作出了《中共中央关于加强党的建设几个重大问题的决定》。把党的建设提到“新的伟大工程”的高度，要求着重解决好党的组织建设，特别要求解决好三个方面的问题，其中一项不属于这三个问题的是(&nbsp;&nbsp;&nbsp;)。', '坚持和健全民主集中制|培养和发展来自基层的工人、农民和知识分子入党|培养和选拨德才兼备的领导于部', '2');
INSERT INTO `qu` VALUES ('250', '我们党第一次将邓小平理论明确确立为党的指导思想的文件是(&nbsp;&nbsp;&nbsp;)。', '1992年10月中共十四大政治报告|1997年江泽民同志在邓小平追悼大会上的悼词|1997年10月中共十五大政治报告', '3');
INSERT INTO `qu` VALUES ('251', '(&nbsp;&nbsp;&nbsp;)中国对香港恢复行使主权，中华人民共和国香港特别行政区正式成立。', '1997年7月1日|1999年12月20日|1993年1月1日', '1');
INSERT INTO `qu` VALUES ('252', '中共十五大的报告主题是:高举(&nbsp;&nbsp;&nbsp;)伟大旗帜，把建设有中国特色社会主义事业全面推向21世纪。', '建设有中国特色社会主义理论|邓小平理论|邓小平理论“三个代表”重要思想', '2');
INSERT INTO `qu` VALUES ('253', '正式把邓小平理论作为国家的指导思想写入宪法是在(&nbsp;&nbsp;&nbsp;)上。', '八届全国人大一次会议|九届全国人大二次会议|九届全国人大一次会议', '2');
INSERT INTO `qu` VALUES ('254', '从1999年开始，全党在(&nbsp;&nbsp;&nbsp;)领导班子和领导干部中，以整风精神分期分批深入开展了以“三讲”要内容的党性党风教育。', '县处级以上|地、市以上|省部以上', '1');
INSERT INTO `qu` VALUES ('255', '1999年11月20日，我国成功发射第一艘载人航天试验飞船\"(&nbsp;&nbsp;&nbsp;)号“，标志着我国载人航天技术有了新的重大突破。', '神舟|神州|长征', '1');
INSERT INTO `qu` VALUES ('256', '为了稳定土地承包关系，中共十五届三中全会通过的《中共中央关于农业和农村工作若干重大问题的决定》提出，土地承包期限在原来的基础上再延长(&nbsp;&nbsp;&nbsp;)年不变。', '10|20|30', '3');
INSERT INTO `qu` VALUES ('257', '我国目前农业生产的主要经营方式是(&nbsp;&nbsp;&nbsp;)。', '家庭联产承包责任制|社会化服务体系|集约化经营', '1');
INSERT INTO `qu` VALUES ('258', '2001年9月，中共十五届六中全会全面分析了进入新世纪党面临的新任务，审议通过了(&nbsp;&nbsp;&nbsp;)。', '《关于加强和改进党的作风建设的决定》|《关于建立社会主义市场经齐体制的决定》|《关于进一步加强农业和农村工作的决定》', '1');
INSERT INTO `qu` VALUES ('259', '党的十五届六中全会提出了“八个坚持、八个反对”，下列不属于“八个坚持八个反对＂的一项是(&nbsp;&nbsp;&nbsp;)。', '坚持密切联系群众，反对形式主义、官僚主义|坚持民主集中制原则，对独断专行、软弱涣散|坚持党性原则，反对无政府主义', '3');
INSERT INTO `qu` VALUES ('260', '为了鼓励广大科技人员建功立业，从2000年起设立国家最高科技奖。2001年颁布的“2000年度国家科学技术奖”获奖者是(&nbsp;&nbsp;&nbsp;)。', '吴文俊袁隆平|王选黄昆|金怡濂刘东生', '1');
INSERT INTO `qu` VALUES ('261', '(&nbsp;&nbsp;&nbsp;)，中国正式成为世贸组织即WTO第143个成员。', '2000年12月1日|2001年11月11日|2001年12月11日', '3');
INSERT INTO `qu` VALUES ('262', '在社会主义初级阶段，正确处理(&nbsp;&nbsp;&nbsp;)的关系，保持稳定的政治环境和社会秩序，具有极为重要的意义。', '改革、发展、稳定|工业、农业、服务业|政治、经济、文化', '1');
INSERT INTO `qu` VALUES ('263', '新中国成立以来，“三农”问题始终是关系党和人民事业发展的全局性和根本性问题。“三农”问题的基本含义是(&nbsp;&nbsp;&nbsp;)。', '农村联产承包责任制问题、农业投入问题、农产品加工问题|农产品问题、农民工问题、农村基层组织问题|农村问题、农民问题、农业问题', '3');
INSERT INTO `qu` VALUES ('264', '新时期社会主义精神文明建设的根本任务是适应社会主义现代化建设的需要，培育(&nbsp;&nbsp;&nbsp;)的社会主义公民，提高整个中华民族的思想道德素质和科学文化素质。', '讲文明、讲礼貌、讲秩序、讲卫生|爱祖国、爱人民、爱共产党、爱社会主义|有理想、有道德、有文化、有纪律', '3');
INSERT INTO `qu` VALUES ('265', '中共(&nbsp;&nbsp;&nbsp;)根据全面开创中国特色社会主义事业新局面的要求，在深刻分析党和国家面临的新形势新任务的基础上，确定了全面建设小康社会的奋斗目标。', '十四大|十五大|十六大', '3');
INSERT INTO `qu` VALUES ('266', '中共十六大提出，全面建设小康社会，最根本的是坚持(&nbsp;&nbsp;&nbsp;)为中心，不断解放和发展生产力。', '以经济建设|人民的根本利益|党的奋斗目标', '1');
INSERT INTO `qu` VALUES ('267', '原中国农村问题研究中心主任徐勇说，农村改革的这30年，分成三个阶段。第一阶段:1978—1988年的黄金十年……第二阶段:1988-2002年的曲折十五年……第三阶段:2003—2007年的历史跨越五年……与三个阶段相对应的关键词是(&nbsp;&nbsp;&nbsp;)。', '“乡镇企业”“民工潮”“新农村建设”|“新农村建设”“乡镇企业”“民工潮”|“民工潮”“新农村建设”“乡镇企业”', '1');
INSERT INTO `qu` VALUES ('268', '中共十六大报告指出，我们党从小到大、由弱到强，从挫折中奋起、在战胜困难中不断成熟的一大法宝就是(&nbsp;&nbsp;&nbsp;)。', '始终坚持马克思主义基本原理|始终依靠人民、相信人民|高度重视和不断加强自身建设', '3');
INSERT INTO `qu` VALUES ('269', '“代表”是中国共产党的(&nbsp;&nbsp;&nbsp;)的集中体现。', '先进性|革命性|进步性', '1');
INSERT INTO `qu` VALUES ('270', '“代表”是江泽民同志多次阐述过的一个重要思想，其首次提出是在(&nbsp;&nbsp;&nbsp;)。', '1999年12月|2000年2月|2000年12月', '2');
INSERT INTO `qu` VALUES ('271', '党领导人民治理国家的基本方略是(&nbsp;&nbsp;&nbsp;)。', '依法治国|坚持改革开放|以经济建设为中心', '1');
INSERT INTO `qu` VALUES ('272', '2001年7月13日,在(&nbsp;&nbsp;&nbsp;)举行的国际奥委会第112次全会上，国际奥委会投票选定北京获得2008年奥运会主办权。随后，国际奥委会主席萨马兰奇先生在莫斯科宣布，北京成为2008年奥运会主办城市。', '莫斯科|圣彼得堡|东京', '1');
INSERT INTO `qu` VALUES ('273', '用(&nbsp;&nbsp;&nbsp;)办法解决前进中的问题，是改革开放以来我们的一条重要经验。', '改革|不断创新|发展', '3');
INSERT INTO `qu` VALUES ('274', '中共十六大的灵魂是(&nbsp;&nbsp;&nbsp;)。', '高举邓小平理论伟大旗帜|全面贯彻“三个代表”重要思想|开创会主义现代化建设新局面', '2');
INSERT INTO `qu` VALUES ('275', '第十届全国人大二次会议通过的宪法修正案，将“国家尊重和保障人权”写入宪法。这标志着(&nbsp;&nbsp;&nbsp;)。', '我国社会主义生产关系的完善|我国社会主义政治文明的进步|我国社会主义物质明的发展', '2');
INSERT INTO `qu` VALUES ('276', '歌曲“我们唱着东方红，当家作主站起来，我们讲着春天的故事，改革开放富起来”中，带领中国人民”站起来”和“富起来”的伟大领袖分别是(&nbsp;&nbsp;&nbsp;)。', '毛泽东、周恩来|毛泽东、邓小平|周恩来、邓小平', '2');
INSERT INTO `qu` VALUES ('277', '在中共十六大政治报告中总结十三届四中全会13年以来的基本经验，第一条就是(&nbsp;&nbsp;&nbsp;)。', '坚持以邓小平理论为指导，不断推进理论创新|坚持改革开放，把社会主义现代化事业推向前进|坚持马克思主义加强新形势下党的建设', '1');
INSERT INTO `qu` VALUES ('278', '中国人民从长期奋斗历程中得到的最基本最重要的结论是(&nbsp;&nbsp;&nbsp;)。', '没有共产党，就没有新中国|没有毛泽东，就没有新民主主义革命的胜利|必须把马克思主义基本原理同中国实际相结合', '1');
INSERT INTO `qu` VALUES ('279', '江泽民同志在庆祝中国共产党成立80周年大会上的讲话中，要求我们立足于新的实践，把握时代特点，不断加深对共产党执政的规律、对社会主义建设的规律、对(&nbsp;&nbsp;&nbsp;)规律的认识。', '人类社会发展|资本主义发展|共产主义运动', '1');
INSERT INTO `qu` VALUES ('280', '2003年10月15日，(&nbsp;&nbsp;&nbsp;)成功发射，并于16日安全返回地面，标志着我国成为世界上第三个独立掌握载人航天技术的国家。', '“神舟“六号载人飞船|“神舟“五号载人飞船|“神舟“四号载人飞船', '2');
INSERT INTO `qu` VALUES ('281', '科学发展观的提出，标志着我们党(&nbsp;&nbsp;&nbsp;)。', '对改革开放和现代化建设规律的认识进一步深化|完全掌握了社会主义建设的发展规律|改变了新中国成立以来传统的发展模式和发展战略', '1');
INSERT INTO `qu` VALUES ('282', '“社会主义政治文明”这一概念是江泽民同志在(&nbsp;&nbsp;&nbsp;)第一次提出来的。', '1997年中共十五大政治报告中|2000年5月在江苏、浙江、上海党建工作座谈会讲话中|2002年5月中共中央党校重要讲话中', '3');
INSERT INTO `qu` VALUES ('283', '我国农村基本经营制度的核心，也是农村政策的基石是(&nbsp;&nbsp;&nbsp;)。', '土地国家所有|土地集体所有|土地家庭承包经营', '3');
INSERT INTO `qu` VALUES ('284', '完成全面建设小康社会和实现现代化的历史性任务，重点和难点都在(&nbsp;&nbsp;&nbsp;)。', '城市|农村|国有企业', '2');
INSERT INTO `qu` VALUES ('285', '我国不仅是人口大国，而且也是资源大国，但由于人口基数过大，按最新统计，我国各种矿产品人均占有量(&nbsp;&nbsp;&nbsp;)。', '达到了世界平均水平|超过了世界平均水平|不到世界平均水平的一半', '3');
INSERT INTO `qu` VALUES ('286', '中共十六大要求各级党委和领导干部不断提高“五种能力”，其中首要的一条就是不断提高(&nbsp;&nbsp;&nbsp;)的能力。', '科学判断形势|驾驭社会主义市场经济|应对复杂局面', '1');
INSERT INTO `qu` VALUES ('287', '下列关于“小康社会＂的阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '我国人民生店总体上达到了小康水平，是社会主义制度的伟大胜利|这标志着我国彻底摆脱了贫穷落后的面貌，跻身于世界经济大国|全面建设小康社会，是实现现代化建设的第三步战略目标必经的承上启下的发展阶段', '2');
INSERT INTO `qu` VALUES ('288', '2003年10月召开的中共(&nbsp;&nbsp;&nbsp;)审议通过了《中共中央关于完善社会主义市场经济体制若干问题的决定》。', '十六届三中全会|十六届四中全会|十六届五中全会', '1');
INSERT INTO `qu` VALUES ('289', '第一次在党的文件中提出”按照统筹城乡发展、统筹区域发展、统筹经济社会发展、统筹人与自然和谐发展、统筹国内发展和对外开放的要求＂，即“五个统筹“，是在(&nbsp;&nbsp;&nbsp;)。', '中共十六大|中共十六届三中全会|中共十六届五中全会', '2');
INSERT INTO `qu` VALUES ('290', '中共十六届三中全会以邓小平理论和“三个代表”重要思想为指导，提出了(&nbsp;&nbsp;&nbsp;)的科学发展观。', '统筹经济社会发展|以人为本、全面协调可持续发展|以经济建设为中心', '2');
INSERT INTO `qu` VALUES ('291', '在有中国特色的社会主义政党制度中，民主党派是(&nbsp;&nbsp;&nbsp;)。', '在野党|参政党|反对党', '2');
INSERT INTO `qu` VALUES ('292', '2004年9月召开的中共(&nbsp;&nbsp;&nbsp;)审议通过了《中共中央关于加强党的执政能力建设的决定》。', '十六届三中全会|十六届四中全会|十六届五中全会', '2');
INSERT INTO `qu` VALUES ('293', '2004年9月，中共十六届四中全会着重研究了(&nbsp;&nbsp;&nbsp;)的若干重大问题并通过了相应的决定。', '加强党的执政能力建设|加强党风廉政建设和反腐败斗争|加强党的建设伟大工程', '1');
INSERT INTO `qu` VALUES ('294', '按照中共十六大确定的全面建设小康社会的目标，国内生产总值到2020年力争比2000年翻(&nbsp;&nbsp;&nbsp;)番。', '一|两|三', '2');
INSERT INTO `qu` VALUES ('295', '根据中共十六大和十六届四中全会精神，中共中央从2005年1月起在全党开展了以实践“三个代表”重要思想为主要内容的(&nbsp;&nbsp;&nbsp;)。', '“三讲”活动|保持共产党员先进性教育活动|加强党的作风建设活动', '2');
INSERT INTO `qu` VALUES ('296', '2005年4月29日，中共中央总书记胡锦涛与中国国民党主席连战在北京举行会谈，这是国共两党最高领导人时隔(&nbsp;&nbsp;&nbsp;)后的首次正式会谈。', '40年|50年|60年', '3');
INSERT INTO `qu` VALUES ('297', '2005年6月5日，北京奥运会志愿者标志发布，志愿者项目正式启动6月26日，北京奥组委宣布第29届奥运会主题口号(&nbsp;&nbsp;&nbsp;)。', '“点燃你的梦想，激发你的热情”|“胜利永远属于拼搏\"|“同一个世界、同一个梦想”', '3');
INSERT INTO `qu` VALUES ('298', '2005年12月，十届全国人大常委会第十九次会议高票通过决定，自2006年1月1日起废止(&nbsp;&nbsp;&nbsp;)，这意味着在中国延续两千多年的农业税已经成为历史。', '《农业税征收管理条例》|《农业税条例》《农业税征收办法规定》', '2');
INSERT INTO `qu` VALUES ('299', '2006年9月联合国大会期间，(&nbsp;&nbsp;&nbsp;)举行了首次金砖国家外长会晤。', '中国、俄罗斯、巴西、南非|中国、俄罗斯、印度、南非|中国、俄罗斯、印度、巴西', '3');
INSERT INTO `qu` VALUES ('300', '党的十六大后，按照中央部署开展保持党的先进性教育活动。中央下发的四个保持共产党员先进性长效机制文件包括:(&nbsp;&nbsp;&nbsp;)《关于做好党员联系和服务群众工作的意见》《关于加强和改进流动党员管理工作的意见》《关于建立健全地方党委、部门党组(党委)抓基层党建工作责任制的意见》。', '《关于加强党的建设的意见》|《关于加强党员经常性教育的意见》|《关于开展保持共产党员先进性教育活动的意见》', '2');
INSERT INTO `qu` VALUES ('301', '加快转变经济发展方式，关键是(&nbsp;&nbsp;&nbsp;)，促进科技成果向现实生产力转化。', '加快企业技术升级|全面提高自主创新能力|走集约型发展道路', '2');
INSERT INTO `qu` VALUES ('302', '2006年7月1日，(&nbsp;&nbsp;&nbsp;)全线建成通车，铁路全长1956公里，最高点海拔5072米，是世界上海拔最高、线路最长的高原铁路。', '川藏铁路|青藏铁路|兰新铁路', '2');
INSERT INTO `qu` VALUES ('303', '青藏铁路建设是一项世界奇迹，是世界上海拔最高、线路最长的高原铁路。工程建设面临着多年冻土、高寒缺氧和(&nbsp;&nbsp;&nbsp;)三大世界性工程技术难题。', '生态脆弱|人烟稀少|震中密集', '1');
INSERT INTO `qu` VALUES ('304', '2006年10月22日上午，纪念红军长征胜利(&nbsp;&nbsp;&nbsp;)大会在北京人民大会堂隆重举行。胡锦涛同志发表重要讲话指出，我们纪念红军长征胜利，就是要激励全党全军全国各族人民在中国特色社会主义道路上继续奋勇前进。', '60周年|70周年|80周年', '2');
INSERT INTO `qu` VALUES ('305', '中共十六届六中全会通过的(&nbsp;&nbsp;&nbsp;)，是对构建社会主义和谐社会具有重大指导意义的纲领性文件，反映了建设富强民主文明和谐的社会主义现代化国家的内在要求，体现了全党全国各族人民的共同愿望。', '《中共中央关于构建社会主义和谐社会若干重大问题的决定》|《中共中央关于加强党的执政能力建设的决定》|《中共中央关于制定国民经济和社会发展第十一个五年规划的建议》', '1');
INSERT INTO `qu` VALUES ('306', '中共十七大报告提出，发展中国特色社会主义的基本要求是(&nbsp;&nbsp;&nbsp;)。', '安定团结、稳定和谐|科学发展、社会和谐|科教兴国、人才强国', '2');
INSERT INTO `qu` VALUES ('307', '中共十七大关于党章(修正案)决议，第一次将(&nbsp;&nbsp;&nbsp;)写入党章。', '科学发展观|“三个代表”重要思想|全面建设小康社会', '1');
INSERT INTO `qu` VALUES ('308', '实现国民经济又好又快发展目标的关键是(&nbsp;&nbsp;&nbsp;)。', '保护生态|加快转变经济发展方式、完善社会主义市场经济|节约能源', '2');
INSERT INTO `qu` VALUES ('309', '中共十七大报告指出，国家发展战略的核心、提高综合国力的关键是(&nbsp;&nbsp;&nbsp;)。', '提高自主创新能力，建设创新型国家|加快转变经济发展方式，推动产业结构优化升级|统筹城乡发展，推进社会主义新农村建设', '1');
INSERT INTO `qu` VALUES ('310', '社会主义的道德建设的核心是(&nbsp;&nbsp;&nbsp;)。', '为人民服务|集体主义|诚实守信', '1');
INSERT INTO `qu` VALUES ('311', '2007年10月15日，胡锦涛同志在代表第十六届中央委员会向大会作的报告中强调,(&nbsp;&nbsp;&nbsp;)是当代中国发展进步的旗帜，是全党全国各族人民团结奋斗的旗帜。', '科学发展|改革开放|中国特色社会主义', '3');
INSERT INTO `qu` VALUES ('312', '深入贯彻落实科学发展观，要坚持把(&nbsp;&nbsp;&nbsp;)同四项基本原则、改革开放这两个基本点统一于发展中国特色社会主义的伟大实践，任何时候都决不能动摇。', '以经济建设为中心|以社会发展为中心|以人的发展为中心', '1');
INSERT INTO `qu` VALUES ('313', '中共十七大报告提出,在优化结构、提高效益、降低消耗、保护环境的基础上，实现(&nbsp;&nbsp;&nbsp;)到2020年比2000年翻两番。', '国内生产总值|国民生产总值|人均国内生产总值', '3');
INSERT INTO `qu` VALUES ('314', '中共十七大报告指出，我们党召开具有重大历史意义的十一届三中全会,开启了改革开放历史新时期。新时期最显著的成就是(&nbsp;&nbsp;&nbsp;)。', '改革开放|快速发展|与时俱进', '2');
INSERT INTO `qu` VALUES ('315', '科学发展观的实质是(&nbsp;&nbsp;&nbsp;)。', '实现经济社会更快更好的发展|改变目前我们的发展模式|深化改革开放', '1');
INSERT INTO `qu` VALUES ('316', '科学发展观的基本原则是(&nbsp;&nbsp;&nbsp;)。', '保持协调发展|坚持以人为本|保持均衡发展', '1');
INSERT INTO `qu` VALUES ('317', '中共十七大报告指出,继续深化改革开放，要坚持把(&nbsp;&nbsp;&nbsp;)作为正确处理改革发展稳定关系的结合点，使改革始终得到人民的拥护和支持。', '改善人民生活水平|解决民生问题|提高人民生活水平', '1');
INSERT INTO `qu` VALUES ('318', '(&nbsp;&nbsp;&nbsp;)是发展中国特色社会主义、实现中华民族伟大复兴的必由之路。', '改革开放|和谐社会|市场经济', '1');
INSERT INTO `qu` VALUES ('319', '科学发展观的基本要求是(&nbsp;&nbsp;&nbsp;)。', '统筹兼顾|以人为本|全面协调可持续', '3');
INSERT INTO `qu` VALUES ('320', '科学发展观的根本方法是(&nbsp;&nbsp;&nbsp;)。', '科学发展|统筹兼顾|全面协调可持续', '2');
INSERT INTO `qu` VALUES ('321', '加快转变经济发展方式是(&nbsp;&nbsp;&nbsp;)的必然要求。', '实现国民经济又好又快发展|坚持党的正确领导|实现社会主义现代化目标', '1');
INSERT INTO `qu` VALUES ('322', '中共十七大报告指出，决定当代中国命运的关键抉择是(&nbsp;&nbsp;&nbsp;)。', '社会和谐|改革开放|市场经济', '2');
INSERT INTO `qu` VALUES ('323', '我国有13亿多人口，占世界人口总数的22%;人均耕地面积为1.39亩，不足世界人均水平的(&nbsp;&nbsp;&nbsp;)。', '40%|50%|60%', '1');
INSERT INTO `qu` VALUES ('324', '中共十七届三中全会审议通过了《中共中央关于推进农村改革发展若干重大问题的决定》，标志着我国农村改革站在一个新的历史起点上。下列关于新时期农村改革的说法错误的是(&nbsp;&nbsp;&nbsp;)。', '农村改革由于废除了人民公社体制，大大激发了农民的生产热情|农村改革巳经全面实现了现代化，正朝全面小康社会迈进|全面推进农村改革体现了我们党执政为民的理念', '2');
INSERT INTO `qu` VALUES ('325', '西安事变的爆发说明(&nbsp;&nbsp;&nbsp;)的矛盾是当时的主要矛盾。', '国共两党|中华民族和日本帝国主义|国民党中央内部', '2');
INSERT INTO `qu` VALUES ('326', '1936年6月，美国记者埃德加·斯诺访问陕北，并根据对毛泽东、周恩来、朱德等中共领导人和红军将士进行的访谈，撰成(&nbsp;&nbsp;&nbsp;)一书，第一次向外界详细介绍了中国共产党和红军的事迹，对中国国内和世界产生了重大影响。', '《来自红色中国的报道》|《中国未完成的革命》|抗日义勇军', '3');
INSERT INTO `qu` VALUES ('327', '东北抗日联军的核心力扯是(&nbsp;&nbsp;&nbsp;)。', '东北人民革命军|抗日武装联合军|抗日义勇军', '1');
INSERT INTO `qu` VALUES ('328', '1937年8月25日，中共中央军委发布命令，红军改变为八路军。八路军全军约4.6万人，下辖三个师，第一一五师师长林彪。第一一五师以原红军(&nbsp;&nbsp;&nbsp;)为主整编而成。', '红军第一方面军|红军第二方面军|红军第四方面军', '1');
INSERT INTO `qu` VALUES ('329', '关于国共第二次合作，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '它是以国共两党的两个政权、两个军队合作为基础的|这个统一战线没有一个为国共两党所共同承认和正式公布的政治纲领|这个统一战线有一个统一协调的正式机构', '3');
INSERT INTO `qu` VALUES ('330', '抗日民主政权的“三三制”原则是指(&nbsp;&nbsp;&nbsp;)。', '进步势力、中间势力、顽固势力各占1/3|共产党、国民党、民主党派各占1/3|共产党员、党外进步分子、中间分子各占1/3', '3');
INSERT INTO `qu` VALUES ('331', '按“三三制”原则组成的边区政府，其成员不包括(&nbsp;&nbsp;&nbsp;)。', '代表工人阶级和贫农的共产党员|代表开明绅士和中等资产阶级的中间派|代表大资产阶级利益的国民党党员', '3');
INSERT INTO `qu` VALUES ('332', '1937年中共洛川政治局扩大会议指出，争取全民族抗战胜利的关键是(&nbsp;&nbsp;&nbsp;)。', '坚持共产党在统一战线中的独立自主原则|实行全面抗战路线，反对片面抗战路线|开展抗日游击战争，建立敌后根据地', '2');
INSERT INTO `qu` VALUES ('333', '1937年8月22日至25H，中共中央召开著名的洛川会议，通过了(&nbsp;&nbsp;&nbsp;)，提出了全面抗战路线。', '《抗日救国十大纲领》|《中共中央为公布国共合作宣言》|《抗日救国告全体同胞书》', '1');
INSERT INTO `qu` VALUES ('334', '国共两党实现第二次合作的标志是(&nbsp;&nbsp;&nbsp;)。', '西安事变的和平解决|八一三事变后国民政府发表自卫声明|国民党公布《中共中央为公布国共合作宣言》并发表蒋介石谈话', '3');
INSERT INTO `qu` VALUES ('335', '1937年8月，红军改编为八路军后，担任第一一五师师长的是(&nbsp;&nbsp;&nbsp;)。', '林彪|贺龙|刘伯承', '1');
INSERT INTO `qu` VALUES ('336', '通过《抗日救国十大纲领》的会议是(&nbsp;&nbsp;&nbsp;)。', '遵义会议|瓦窑堡会议|洛川会议', '3');
INSERT INTO `qu` VALUES ('337', '抗战初期，国共两个战场的相同之处是(&nbsp;&nbsp;&nbsp;)。', '建立抗日民主政权|积极动员组织民众抗战|与日本侵略军正面作战', '3');
INSERT INTO `qu` VALUES ('338', '标志着全国性抗日战争开始的事件是(&nbsp;&nbsp;&nbsp;)。', '九一八事变|一·二八事件|七七卢沟桥事变', '3');
INSERT INTO `qu` VALUES ('339', '抗日战争时期，中国共产党提出了“发展进步势力，争取中间势力，孤立顽固势力”的方针。以下阶级属于”中间势力”的是(&nbsp;&nbsp;&nbsp;)。', '无产阶级|小资产阶级|开明绅士、民族资产阶级', '3');
INSERT INTO `qu` VALUES ('340', '抗日战争时期，我党在敌后根据地实行的土地政策是(&nbsp;&nbsp;&nbsp;)。', '地主减租减息|没收地主土地|废除封建剥削', '1');
INSERT INTO `qu` VALUES ('341', '中国共产党与国民党两次合作的共同基础是由(&nbsp;&nbsp;&nbsp;)。', '主要社会矛盾决定的|社会性质决定的|国民党的阶级性质决定的', '1');
INSERT INTO `qu` VALUES ('342', '1937年9月，八路军第一一五师在(&nbsp;&nbsp;&nbsp;)伏击侵华H军，取得抗战以来的首次大捷，粉碎了日军”不可战胜”的神话，极大地鼓舞了全国人民的抗战信心。', '平型关|娘子关|忻口', '1');
INSERT INTO `qu` VALUES ('343', '1937年10月，国共两党在南京达成协议，将留在南方八省的红军和游击队(除琼崖红军游击队外)改编为国民革命军陆军新编第四军，由(&nbsp;&nbsp;&nbsp;)担任军长。', '陈毅|项英|叶挺', '3');
INSERT INTO `qu` VALUES ('344', 'B军在1937年底南京大屠杀中杀害的中国军民的人数达(&nbsp;&nbsp;&nbsp;)。', '10万以上|20万以上|30万以上', '3');
INSERT INTO `qu` VALUES ('345', '为了驳斥＂亡国论”和“速胜论”的错误观点，系统阐述党的抗日持久战方针，毛泽东于1938年5月写了(&nbsp;&nbsp;&nbsp;)这篇重要文章。', '《论持久战》|《论联合政府》|《中国革命和中国共产党》', '1');
INSERT INTO `qu` VALUES ('346', '1939年7月，刘少奇在延安马列学院作了题为(&nbsp;&nbsp;&nbsp;)的著名演讲。', '《论共产党员的修养》|《论党》|《论党内斗争》', '1');
INSERT INTO `qu` VALUES ('347', '中国共产党建立的第一个敌后抗日根据地是(&nbsp;&nbsp;&nbsp;)抗日根据地。', '晋察冀|晋绥|晋冀豫', '1');
INSERT INTO `qu` VALUES ('348', '抗日战争时期，毛泽东在《(共产党人〉发刊词》中首次指出中国共产党在中国革命中战胜敌人的三个法宝是(&nbsp;&nbsp;&nbsp;)。', '群众路线，调查研究，团结一致|自力更生，艰苦奋斗，全心全意为人民服务|统一战线，武装斗争，党的建设', '3');
INSERT INTO `qu` VALUES ('349', '1939年底至1940年初，毛泽东先后发表(&nbsp;&nbsp;&nbsp;)和《中国革命和中国共产党》《新民主主义论》著作，完整地阐述了新民主主义理论。', '《改造我们的学习》|《整顿党的作风》|《（共产党人〉发刊词》', '3');
INSERT INTO `qu` VALUES ('350', '＂统帅革命的资产阶级，联合革命的无产阶级，实行资产阶级民主革命”这一观点的错误实质在于(&nbsp;&nbsp;&nbsp;)。', '抹杀农民阶级的革命性|夸大资产阶级的作用|放弃无产阶级的领导权', '3');
INSERT INTO `qu` VALUES ('351', '下列关于抗日民族统一战线与革命统一战线的相同点的表述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '都在中国共产党的倡导和推动下建立|以国共两党合作为基础|都采取党外合作的方式', '3');
INSERT INTO `qu` VALUES ('352', '下列关于抗日民族统一战线与革命统一战线的相同点的表述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '《新华日报》|《挺进报》|《大公报》', '1');
INSERT INTO `qu` VALUES ('353', '第一次提出“毛泽东思想”这一概念的是(&nbsp;&nbsp;&nbsp;)。', '刘少奇|王稼样|周恩来', '2');
INSERT INTO `qu` VALUES ('354', '1940年2月，东北抗日联军第一路军总司令(&nbsp;&nbsp;&nbsp;)在战斗中壮烈牺牲。', '赵尚志|杨靖宇|马占山', '2');
INSERT INTO `qu` VALUES ('355', '1940年3月，在南京成立伪国民政府的是(&nbsp;&nbsp;&nbsp;)。', '蒋介石|汪精卫|溥仪', '2');
INSERT INTO `qu` VALUES ('356', '1940年，由彭德怀等指挥的(&nbsp;&nbsp;&nbsp;)给了日本侵略军以沉重的打击，大大提高了共产党和八路军的威望，坚定了全国人民抗战胜利的信心。', '百团大战|大原会战|徐州会战', '1');
INSERT INTO `qu` VALUES ('357', '1943年，毛泽东应彭真之请为中共中央党校题写的校训是(&nbsp;&nbsp;&nbsp;)。', '为人民服务|好好学习，天天向上|实事求是', '3');
INSERT INTO `qu` VALUES ('358', '＂墙上芦苇，头重脚轻根底浅;山间竹笋，嘴尖皮厚腹中空”是毛泽东对我们党内存在的教条主义的形象比喻。这句话见之于毛泽东的(&nbsp;&nbsp;&nbsp;)一文中。', '《反对本本主义》|《改造我们的学习》|《关于领导方法的若干问题》', '2');
INSERT INTO `qu` VALUES ('359', '抗日战争是一场全民族反抗外敌入侵的正义的民族之战。在抗战初期，在华北战场上规模最大、最激烈的一次战役，也是国共两党两军合作抗日、配合最好的一次战役是(&nbsp;&nbsp;&nbsp;)。', '台儿庄战役|长城抗战|忻口会战', '3');
INSERT INTO `qu` VALUES ('360', '皖南事变发生在(&nbsp;&nbsp;&nbsp;)。', '1939年|1940年|1941年', '3');
INSERT INTO `qu` VALUES ('361', '皖南事变反映出(&nbsp;&nbsp;&nbsp;)。', '蒋介石集团企图重演四一二反革命政变故技|国民政府的政策重心开始由抗日转向反共|在民族危机深重之时，蒋介石集团既要反共又不敢与中国共产党完全决裂', '3');
INSERT INTO `qu` VALUES ('362', '周恩来“千古奇冤，江南一叶;同室操戈，相煎何急?＂的题词是为(&nbsp;&nbsp;&nbsp;)而题。', '四一二反革命政变|七一五反革命政变|皖南事变', '3');
INSERT INTO `qu` VALUES ('363', '皖南事变发生后，中央军委命令重建新四军军部，并任命(&nbsp;&nbsp;&nbsp;)为代理军长，(&nbsp;&nbsp;&nbsp;)为副军长。', '张云逸邓子恢|陈毅粟裕|陈毅张云逸', '3');
INSERT INTO `qu` VALUES ('364', '地道战、地雷战、麻雀战、破袭战、围困战等武装斗争形式是根据地军民在1941年的(&nbsp;&nbsp;&nbsp;)中创造的，充分发挥了人民战争的威力，有效地打击了敌人。', '反“扫荡”斗争|百团大战|枣宜会战', '1');
INSERT INTO `qu` VALUES ('365', '中国共产党在抗日民主根据地实行的政策和措施中，既有利于联合地主阶级抗日，又能调动农民生产积极性的是(&nbsp;&nbsp;&nbsp;)。', '开展大生产运动|建立抗日民主政权|实行“双减“政策', '3');
INSERT INTO `qu` VALUES ('366', '在中国共产党巩固抗日根据地的措施中，为争取抗战胜利奠定物质基础的是(&nbsp;&nbsp;&nbsp;)。', '建立敌后抗日根据地|进行游击战|大生产运动', '3');
INSERT INTO `qu` VALUES ('367', '1942年5月，在太行区反“扫荡”和保卫八路军总部的战斗中，八路军副参谋长(&nbsp;&nbsp;&nbsp;)英勇牺牲。', '左权|周子昆|袁国平', '1');
INSERT INTO `qu` VALUES ('368', '中国共产党的历史上反复出现的右倾和“左”倾机会主义错误，从思想根源来说都是主观主义，都表现为理论同实际相脱离，(&nbsp;&nbsp;&nbsp;)不相符合。', '主观同客观|国内与国外|人民大众利益同党的利益', '1');
INSERT INTO `qu` VALUES ('369', '1942年延安整风是一次全党范围的(&nbsp;&nbsp;&nbsp;)的教育运动。', '党性|毛泽东思想|马克思列宁主义', '3');
INSERT INTO `qu` VALUES ('370', '延安时期，毛泽东写了著名的《实践论》《矛盾论》，主要是为了克服存在于党内严重的(&nbsp;&nbsp;&nbsp;)。', '经验主义|冒险主义|教条主义', '3');
INSERT INTO `qu` VALUES ('371', '延安整风运动的方针是(&nbsp;&nbsp;&nbsp;)。', '惩前愍后，治病救人|批评与自我批评|有则改之，无则加勉', '1');
INSERT INTO `qu` VALUES ('372', '下列对1942年中国共产党开展整风运动的表述，其中正确的是(&nbsp;&nbsp;&nbsp;)。①方针是＂惩前恁后，治病救人”②方法是采取批评与自我批评③通过整风，党从思想上清算了“左”的和右的错误④使全党学会了正确处理入民内部矛盾', '②③④|②③|①②③', '3');
INSERT INTO `qu` VALUES ('373', '民歌《南泥湾》是对1942年陕甘宁边区开展的大生产运动中八路军(&nbsp;&nbsp;&nbsp;)开发南泥湾，使之成为＂陕北好江南”的生动写照。', '第一五九旅|第一二0师|第三五九旅', '3');
INSERT INTO `qu` VALUES ('374', '延安整风运动，其主要内容不包括(&nbsp;&nbsp;&nbsp;)。', '反对主观主义以整顿学风|反对宗派主义以整顿党风|反对军阀主义以整顿军风', '3');
INSERT INTO `qu` VALUES ('375', '对延安整风运动的表述，下列阐述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '这是一次全党范围内的马克思主义思想教育运动|破除党内把马克思主义教条化的伟大思想解放运动|确立了毛泽东思想为全党的指导思想', '3');
INSERT INTO `qu` VALUES ('376', '1943年春，毛泽东提笔为陕甘宁边区工农业生产成绩展览会写下了(&nbsp;&nbsp;&nbsp;)的题词。', '独立自主，艰苦奋斗|发展经济，保障供给|精兵简政，减租减息', '3');
INSERT INTO `qu` VALUES ('377', '1944年侵华日军为挽回在太平洋战场上的失利，打通大陆交通线，发动了“一号作战”，先后占领了郑州、许昌、长沙、衡阳、桂林、柳州、南宁等地。这场被称为(&nbsp;&nbsp;&nbsp;)的失利，充分暴露了国民党军队的腐败。', '河南战役|长沙会战|豫湘桂战役', '3');
INSERT INTO `qu` VALUES ('378', '抗战后期日寇向国民党正面战场发动的规模最大的一次战役是(&nbsp;&nbsp;&nbsp;)。', '台儿庄战役|枣宜会战|豫湘桂战役', '3');
INSERT INTO `qu` VALUES ('379', '日本发动豫湘桂战役的主要目标是(&nbsp;&nbsp;&nbsp;)。', '迫使国民政府最终投降|打通中国的大陆交通线|为进攻东南亚做准备', '2');
INSERT INTO `qu` VALUES ('380', '1945年4月20日，中共六届七中全会通过了(&nbsp;&nbsp;&nbsp;)，对党的历史上若干重大问题作出正式结论，标志着延安整风运动胜利结束。', '《关于若干历史问题的决议》|《关于建国以来党的若干历史问题的决议》|《六大以来党的若干重大问题决定》', '1');
INSERT INTO `qu` VALUES ('381', '关于中共七大，下列阐述不准确的一项是(&nbsp;&nbsp;&nbsp;)。', '毛泽东在七大上作了题为＂论联合政府”的政治报告|认为新中国应该建立社会主义的国家制度|确立了毛泽东思想在全党的指导地位', '2');
INSERT INTO `qu` VALUES ('382', '1945年4月23日至6月11日，中共第七次全国代表大会在延安隆重举行。这次大会负有总结以往革命经验和迎接抗日战争胜利的任务。大会的工作方针是(&nbsp;&nbsp;&nbsp;)。', '团结一致，争取胜利|振兴中华，抗日到底|迎接新的革命高潮，争取最后胜利', '1');
INSERT INTO `qu` VALUES ('383', '中共七大召开时，有正式代表547人、候补代表208人，代表了全国(&nbsp;&nbsp;&nbsp;)万名党员。', '121|110|95', '1');
INSERT INTO `qu` VALUES ('384', '(&nbsp;&nbsp;&nbsp;)通过的《中国共产党章程》是中共独立自主制定的第一部党章。', '中共一大|中共六大|中共七大', '3');
INSERT INTO `qu` VALUES ('385', '中共七大系统地总结了中国共产党24年来领导中国革命的经验，深刻地论述了(&nbsp;&nbsp;&nbsp;)的基本理论。', '统一战线|社会主义|新民主主义', '3');
INSERT INTO `qu` VALUES ('386', '中共七大指出党的政治路线是(&nbsp;&nbsp;&nbsp;)。', '“放手发动群众，壮大人民力量，在我党的领导下，打败日本侵略者，解放全国人民，建立一个新民主主义的新中国”|“放手发动群众，实行土地革命，建立苏维埃＂|“放手发动群众，夺取抗战的最后胜利”', '1');
INSERT INTO `qu` VALUES ('387', '关于中共六届六中全会，下列表述不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '会议目的是确定抗日战争胜利后党的总方针|毛泽东在会上作了《论新阶段》的报告|基本纠正了王明的右倾投降主义错误', '1');
INSERT INTO `qu` VALUES ('388', '把(&nbsp;&nbsp;&nbsp;)作为党的指导思想并写入党章，是中共七大的历史性贡献。', '列宁主义|新民主主义|毛泽东思想', '3');
INSERT INTO `qu` VALUES ('389', '中共七大在党的历史上具有重大意义，其中表述不准确的一项是(&nbsp;&nbsp;&nbsp;)。', '确立毛泽东思想为党的指导思想|做出了把党和国家工作重心转移到城市的决定|实现了全党空前的团结和统一', '2');
INSERT INTO `qu` VALUES ('390', '中共七届一中全会选举(&nbsp;&nbsp;&nbsp;)为中央委员会主席、中央政治局主席和中央书记处主席;选举毛泽东、朱德、刘少奇、周恩来、任弼时为中央书记处书记。', '毛泽东|张闻天|博古', '1');
INSERT INTO `qu` VALUES ('391', '中共七大把党在长期奋斗中形成的优良作风概括为三大作风，这是共产党区别于其他政党的显著标志，是使党的路线、方针得以顺利贯彻的根本保证。下列各项中不属于三大作风的是(&nbsp;&nbsp;&nbsp;)。', '理论和实践相结合的作风|谦虚谨慎、艰苦朴素的工作作风|和人民群众紧密联系在一起的作风', '2');
INSERT INTO `qu` VALUES ('392', '中共七大特别强调，党的(&nbsp;&nbsp;&nbsp;)是党的根本的政治路线和组织路线。', '思想路线|革命路线|群众路线', '3');
INSERT INTO `qu` VALUES ('393', '中共七大特别强调，党员必须全心全意为人民服务，反对脱离群众的命令主义、官僚主义和(&nbsp;&nbsp;&nbsp;)的错误倾向。', '军阀主义|分裂主义|自由主义', '1');
INSERT INTO `qu` VALUES ('394', '中共七大提出建立新民主主义革命中国的具体方案是(&nbsp;&nbsp;&nbsp;)。', '打倒国民党，建立民主联合政府|废除国民党的一党专政，建立民主联合政府|打败日本侵略者，打倒蒋介石', '2');
INSERT INTO `qu` VALUES ('395', '中共提出建立民主联合政府主张的会议有(&nbsp;&nbsp;&nbsp;)。', '中共三大、中共六大|遵义会议、洛川会议|中共七大、北京和谈', '3');
INSERT INTO `qu` VALUES ('396', '皖南事变发生后，中共对国民党顽固派破坏抗战的罪行采取了坚决回击的方针，其主要举措是(&nbsp;&nbsp;&nbsp;)。', '与国民党完全停止合作|把顽固派作为主要军事打击对象|重建新四军军部', '3');
INSERT INTO `qu` VALUES ('397', '明确规定毛泽东思想是中国共产党的指导思想的会议是(&nbsp;&nbsp;&nbsp;)。', '遵义会议|洛川会议|中共七大', '3');
INSERT INTO `qu` VALUES ('398', '新民主主义政治纲领中提出的新民主主义共和国的国体是(&nbsp;&nbsp;&nbsp;)。', '几个革命阶级的联合专政|资产阶级专政|无产阶级专政', '1');
INSERT INTO `qu` VALUES ('399', '中国共产党抗日民族统一战线的策略总方针是(&nbsp;&nbsp;&nbsp;)。', '发展进步势力、争取中间势力、孤立顽固势力|一切经过统一战线，一切服从统一战线|既联合又斗争，以斗争求团结', '1');
INSERT INTO `qu` VALUES ('400', '抗日战争时期，中国共产党领导的各抗日根据地实行的政权形式是(&nbsp;&nbsp;&nbsp;)。', '联合政府|“三三制”政权|共产党一党执政|', '2');
INSERT INTO `qu` VALUES ('401', '抗日民族统一战线、人民民主统一战线和爱国统一战线的相同之处是(&nbsp;&nbsp;&nbsp;)。', '共产党倡导建立、基本任务相同|目标是祖国统一、具有爱国性质|共产党倡导建立、具有爱国性质|', '3');
INSERT INTO `qu` VALUES ('402', '对毛泽东关于“兵民是胜利之本”的论述，下列选项中最准确的解释是(&nbsp;&nbsp;&nbsp;)。', '军队和老百姓是胜利的根本保证|武装民众是胜利的根本保证|政府和军队是胜利的根本保障', '2');
INSERT INTO `qu` VALUES ('403', '日本政府被迫正式宣布无条件投降是在1945年的(&nbsp;&nbsp;&nbsp;)。', '8月8日|8月15日|9月2日|', '2');
INSERT INTO `qu` VALUES ('404', '从大革命失败后到抗日战争时期，中共中央所在地的迁移顺序是(&nbsp;&nbsp;&nbsp;)。', '武汉——瑞金——上海——延安|上海——武汉——瑞金——延安|武汉——上海——瑞金——延安', '0');
INSERT INTO `qu` VALUES ('405', '甲午中日战争与抗日战争一败一胜的关键在于(&nbsp;&nbsp;&nbsp;)。', '是否自始至终坚持抗战|是否取得了国际援助|是否实现了全民族抗战', '3');
INSERT INTO `qu` VALUES ('406', '中国共产党的历史上反复出现的右倾和“左”倾机会主义错误，从思想根源来说都是(&nbsp;&nbsp;&nbsp;)，都表现为理论同实际相脱离，主观同客观不相符合。', '机会主义|教条主义|主观主义', '3');
INSERT INTO `qu` VALUES ('407', '统一战线中的领导权问题，实质上是无产阶级和(&nbsp;&nbsp;&nbsp;)谁领导谁的问题。', '资产阶级|农民阶级|民族资产阶级', '1');
INSERT INTO `qu` VALUES ('408', '关于党的七大，下列表述不准确的一项是(&nbsp;&nbsp;&nbsp;)。', '七大概括了党在长期奋斗中形成的优良传统和作风|七大提出建立一个新民主主义的中国|党的七大通过了《关于若干历史问题的决议》', '3');
INSERT INTO `qu` VALUES ('409', '中共七大政治报告指出:＂房子是应该经常打扫的，不打扫就会积满灰尘;脸是应该经常洗的，不洗也就会灰尘满面。我们同志的思想，我们党的工作，也会沾染灰尘的，也应该打扫和洗涤。”这段话形象地反映了中国共产党在长期革命实践中所形成的(&nbsp;&nbsp;&nbsp;)。', '艰苦奋斗的优良作风|批评与自我批评的优良作风|密切联系群众的优良作风', '2');
INSERT INTO `qu` VALUES ('410', '关于中国抗日战争的胜利，下列说法不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '中国战场是反对日本法西斯侵略的主战场|抗日民族统一战线是争取抗日战争胜利的基本保证|取得抗日战争完全胜利的决定性因素是国民党正面战场', '3');
INSERT INTO `qu` VALUES ('411', '毛泽东指出:“如果我们能够普遍地彻底地解决土地问题，我们就获得了足以战胜敌人的最基本条件。”这里的“最基本条件”指的是(&nbsp;&nbsp;&nbsp;)。', '建立农村革命根据地|消灭封建地主土地所有制|贫雇农支持革命', '3');
INSERT INTO `qu` VALUES ('412', '毛泽东在1945年8月指出:“中国的局面，联合政府的几种形式，现在是独裁加若干民主，并将占相当长的时期，我们还是要钻进去给蒋介石洗脸(即改造)，而不是要砍头。这个弯路使我们党在各方面达到成熟，中国人民更觉悟，然后实现新民主主义的中国。”对这段话理解不正确的一项是(&nbsp;&nbsp;&nbsp;)。', '中国共产党应该加入联合政府|中国应该实现民主与和平|中国应该建立资产阶级共和国', '3');
INSERT INTO `qu` VALUES ('413', '毛泽东亲赴重庆谈判的首要目的是(&nbsp;&nbsp;&nbsp;)。', '尽力争取和平，避免内战|争取人民军队和解放区的合法地位|揭露美蒋反动派假和平真内战的阴谋', '3');
INSERT INTO `qu` VALUES ('414', '1945年8月29日，重庆《大公报》就毛泽东赴重庆谈判发表了《毛泽东先生来了！》的社评，其中写道:“毛泽东先生来了，中国人听了高兴，世界人听了高兴，无疑问的大家都认为这是中国的一件大喜事。”毛泽东赴重庆谈判的目的是(&nbsp;&nbsp;&nbsp;)。', '结束国共内战|商讨联合抗日|争取和平民主', '3');
INSERT INTO `qu` VALUES ('415', '1945年国共重庆谈判签署的协议是(&nbsp;&nbsp;&nbsp;)。', '《和平建国纲领》|《国内和平协定最后修正案》|《双十协定》', '3');
INSERT INTO `qu` VALUES ('416', '1945年“一二·一血案”发生的地点是(&nbsp;&nbsp;&nbsp;)。', '上海|昆明|北平', '2');
INSERT INTO `qu` VALUES ('417', '中国共产党最早规定民主集中制原则为党的指导原则的文献是(&nbsp;&nbsp;&nbsp;)。', '《中国共产党章程》|《中国共产党第一次修正章程决案》|《中国共产党第三次修正章程决案》', '3');
INSERT INTO `qu` VALUES ('418', '中国共产党探索人民民主革命的突出特点是(&nbsp;&nbsp;&nbsp;)。①从中国具体国情出发，创造性地运用马克思主义的基本原理于实践②以农民为主力军，在农村积聚发展革命力植，又团结一切可以团结的力量③用革命的武装反对反革命的武装④继承孙中山的民主共和思想', '①②③|②③④|①③④', '1');
INSERT INTO `qu` VALUES ('419', '解放战争也称第三次国内革命战争，是中国人民解放军(&nbsp;&nbsp;&nbsp;)在中国共产党的领导和广大人民群众的支援下，为推翻国民党统治、解放全中国而进行的战争。', '1945年8月至1949年9月|1945年1月至1950年1月|1946年3月至1949年9月', '1');
INSERT INTO `qu` VALUES ('420', '解放战争时期统一战线的名称是(&nbsp;&nbsp;&nbsp;)。', '民主的统一战线|人民民主统一战线|大革命的统一战线', '2');
INSERT INTO `qu` VALUES ('421', '1946年的政治协商会议争论最激烈的问题是(&nbsp;&nbsp;&nbsp;)。', '政治民主化和党派平等化|政治民主化和军队国家化|政治统一化和党派平等化', '2');
INSERT INTO `qu` VALUES ('422', '解放战争初期，面对国民党军队气势汹汹的全面进攻，毛泽东提出了“一切反动派都是纸老虎”的著名论断。这一论断的主要依据是(&nbsp;&nbsp;&nbsp;)。', '人民解放军具有坚强的战斗力|国统区人民民主运动开始高涨|国民政府统治腐败不得人心', '3');
INSERT INTO `qu` VALUES ('423', '解放战争初期，毛泽东提出“一切反动派都是纸老虎”的论断。毛泽东作出这一论断的理由不包括(&nbsp;&nbsp;&nbsp;)。', '看事物看其本质，反动派不会得到人民的支持，人民是真老虎|历史无数次证明了貌似强大的反动派是纸老虎|反动派代表反动，进步必然战胜反动', '1');
INSERT INTO `qu` VALUES ('424', '解放战争爆发时，国民党军队首先进攻的解放区是(&nbsp;&nbsp;&nbsp;)。', '中原解放区|陕甘宁解放区|山东解放区', '1');
INSERT INTO `qu` VALUES ('425', '1947年3月，国民党军胡宗南部25万人围攻(&nbsp;&nbsp;&nbsp;)解放区，标志着国民党从全面进攻转为重点进攻的开始。', '华东|陕北|晋察冀', '2');
INSERT INTO `qu` VALUES ('426', '1947年5月，以(&nbsp;&nbsp;&nbsp;)为高潮，反饥饿、反内战、反迫害运动扩大到国民党统治区60多个大中城市，形成了人民革命的第二条战线。', '五卅运动|一二·九运动|五二O运动', '3');
INSERT INTO `qu` VALUES ('427', '国民政府以“非法团体”为罪名，首先强令解散的民主党派是(&nbsp;&nbsp;&nbsp;)。', '民主同盟|民主建国会|农工民主党', '1');
INSERT INTO `qu` VALUES ('428', '下列战役中，不是由西北野战军进行的战役是(&nbsp;&nbsp;&nbsp;)。', '孟良固战役|青化贬战役|羊马河战役', '1');
INSERT INTO `qu` VALUES ('429', '陈毅等指挥华东解放军全歼国民党整编74师的战役是(&nbsp;&nbsp;&nbsp;)。', '青化贬战役|羊马河战役|孟良固战役', '3');
INSERT INTO `qu` VALUES ('430', '孟良尚战役发生在内战爆发后的时期是(&nbsp;&nbsp;&nbsp;)。', '国民党军队发动全面进攻时期|国民党军队发动重点进攻时期|人民解放军同国民党军队战略决战时期', '2');
INSERT INTO `qu` VALUES ('431', '1947年率领人民解放军主力首先挺进中原的是(&nbsp;&nbsp;&nbsp;)。①刘伯承、邓小平②彭德怀、贺龙③陈赓、谢富治④陈毅、粟裕', '①②③|②③④|①③④', '3');
INSERT INTO `qu` VALUES ('432', '1947年刘邓大军挺进大别山，其最主要的意义是(&nbsp;&nbsp;&nbsp;)。', '为解放长江以南奠定基础|歼灭敌人有生力量，威胁南京和武汉|标志着人民解放军开始转入战略反攻', '3');
INSERT INTO `qu` VALUES ('433', '1947年6月30日，刘邓大军强渡黄河，(&nbsp;&nbsp;&nbsp;)，揭开了人民解放军战略进攻的序幕。', '挺进大别山|进军豫皖苏|转战大西南', '1');
INSERT INTO `qu` VALUES ('434', '1947年9月，(&nbsp;&nbsp;&nbsp;)率领华东野战军主力六个纵队18万人兵分五路，横越陇海路南下豫皖苏地区，协同刘邓大军、陈谢部队执行外线作战任务。', '林彪、罗荣桓|陈毅、粟裕|聂荣臻、叶剑英', '2');
INSERT INTO `qu` VALUES ('435', '毛泽东在1947年召开的十二月会议上提出了十大军事原则，其核心是(&nbsp;&nbsp;&nbsp;)。', '诱敌深入，打运动战|打歼灭战，不断歼灭敌人有生力量|打游击战，在运动中消灭敌人', '2');
INSERT INTO `qu` VALUES ('436', '中国共产党1931年、1947年土地革命路线的相同之处是(&nbsp;&nbsp;&nbsp;)。①领导者相同②依靠对象相同③联合对象相同④产生的影响相同', '①②③|②③④|①②③④', '3');
INSERT INTO `qu` VALUES ('437', '中共在民主革命时期制定土地革命政策的理论依据是(&nbsp;&nbsp;&nbsp;)。', '农民是无产阶级的革命同盟军|中共是代表农民利益的革命政党|中国革命是资产阶级民主革命', '3');
INSERT INTO `qu` VALUES ('438', '新民主主义革命阶段，“中国人民”所包容的阶级阶层最广泛的是(&nbsp;&nbsp;&nbsp;)时期。', '北伐战争|十年内战|抗日战争', '3');
INSERT INTO `qu` VALUES ('439', '解放战争时期，国民党统治区人民民主运动高涨的根本原因是(&nbsp;&nbsp;&nbsp;)。', '中国共产党组织了反蒋统治的第二条战线|上海的学生举行了声势浩大的“三反“斗争|国民党蒋介石集团的经济崩溃和政治危机', '3');
INSERT INTO `qu` VALUES ('440', '解放战争时期，战略决战的第一次战役是(&nbsp;&nbsp;&nbsp;)。', '淮海战役|平津战役|辽沈战役', '3');
INSERT INTO `qu` VALUES ('441', '从1947年9月至1949年1月，人民解放军先后进行了辽沈、淮海、(&nbsp;&nbsp;&nbsp;)三大战役，基本上歼灭了国民党军主力，解放了长江中下游以北的地区。', '平津|武汉|渡江', '1');
INSERT INTO `qu` VALUES ('442', '东北解放军在辽沈战役中，对下列城市的解放，其先后顺序应是(&nbsp;&nbsp;&nbsp;)。', '长春、沈阳、锦州|锦州、沈阳、长春|锦州、长春、沈阳', '3');
INSERT INTO `qu` VALUES ('443', '解放战争初期，人民解放军的主要作战方法是(&nbsp;&nbsp;&nbsp;)。', '攻坚战|游击战|运动战', '3');
INSERT INTO `qu` VALUES ('444', '1947年人民解放军转入战略反攻，其主攻方向是(&nbsp;&nbsp;&nbsp;)。', '山东地区|陕甘宁地区|中原地区', '3');
INSERT INTO `qu` VALUES ('445', '国民党军队的主力基本上被消灭是在(&nbsp;&nbsp;&nbsp;)。', '重点进攻被粉碎以后|解放战争战略反攻阶段|三大战役中', '3');

-- ----------------------------
-- Table structure for scene
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene` (
  `id` int(10) unsigned NOT NULL COMMENT '场景id',
  `scene` varchar(500) NOT NULL COMMENT '场景文字',
  `bk` varchar(20) NOT NULL COMMENT '场景图片',
  `img` varchar(20) DEFAULT NULL COMMENT '场景人物图片',
  `item` int(11) DEFAULT NULL,
  `achv` int(11) DEFAULT NULL,
  `mon` int(11) DEFAULT NULL COMMENT '出现敌人',
  `gam` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES ('1000', '1915年1月18日，日本驻华公使日置益以归国返任为由晋见袁世凯，正式向中国递交了包含“二十一条”要求的文件，并要求“绝对保密，尽速答复”……', '0101.jpg', '101.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1001', '（翻开一本两个月之前的《甲寅》杂志）\r\n“国家者，保障人民之权利，谋益人民之幸福者也。不此之务，其国也存之无所荣，亡之无所惜。若中国之为国，外无以御侮，内无以保民，不独无以保民，且适以残民，朝野同科，人民绝望。”\r\n', '0101.jpg', '102.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1002', '“国人无爱国心者，其国恒亡。国人无自觉心者，其国亦殆。二者俱无，国必不国。呜呼!国人其已陷此境界否耶?”', '0101.jpg', '103.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1003', '“最初反问，我需国家，必有其的，苟中其的，则国家者，方为可爱。设与背驰，爱将何起？必欲爱之，非愚则妄。”', '0101.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1004', '自觉之义，即在改进立国之精神， 求一可爱之国家而爱之，不宜因其国家之不足爱，遂致断念于国家而不爱。这位独秀山民先生其实也是好意，希望能用当头棒喝让大家知耻而后勇。', '0101.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1005', '我也想认识一下这位独秀山民先生，这里有我的一篇文章《厌世心与自觉心》，你帮我带给先生吧，这身【白衬衫】就送给你了，辛苦了。', '0101.jpg', '010.png', '302', '5', null, null);
INSERT INTO `scene` VALUES ('1010', '前面的道路被拥堵了，有很多人再围观……', '0101.jpg', '104.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1011', '原来是一个喝醉的日本浪人堵住了几个留学生……<br>“来啊，中国人都是懦夫吗？”', '0101.jpg', '901.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1012', '战斗结束了……', '0101.jpg', '100.png', null, null, '101', null);
INSERT INTO `scene` VALUES ('1015', '你好，来杂志社有什么事儿吗？', '0105.jpg', '015.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1016', '哦，你是说独秀山民老师啊，我这里有个谜语，你来猜猜吧：“天下府上来祝贺，枯桐叶落枝梢折“。', '0105.jpg', '015.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1017', '哈哈哈，你也太理所当然了，这位先生叫陈庆同，天下为“大“，府上为”广“，正是一个”庆字，而后半阙“木“为枝梢，“桐”去了枝梢自然是“同”。至于为什么叫独秀山民需要你自己去问他了，地址就在这里。', '0105.jpg', '015.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1018', '不错不错，这位先生本姓陈，号实庵，安徽怀宁人，地址就在这里。', '0105.jpg', '015.png', '402', '5', null, null);
INSERT INTO `scene` VALUES ('1020', '呼，终于有了陈先生的地址了，前面……', '0105.jpg', '901.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1021', '第二次了……这个浪人……', '0105.jpg', '100.png', null, null, '102', null);
INSERT INTO `scene` VALUES ('1025', '你好，我是陈庆同，也就是你要找的独秀山民。', '1010.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1026', '哪里哪里，不是我不自谦，是因为我的家乡有座独秀山，而我只是山下一个老百姓，故取其意叫做“独秀山民”。', '1010.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1027', '（陈先生默默的读着文章）<br>“自觉之义，即在改进立国之精神，求一可爱之国家而爱之，不宜因其国家之不足爱，遂致断念于国家而不爱。更不宜以吾民从未享有可爱之国家，遂乃自暴自弃，以侪于无国之民，自居为无建可爱之国之能力者也。”', '1010.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1028', '好，写的真好，虽然我们达的角度和方式不同，但在爱国主义立场和思想上完全是一致的。你能帮我问问这位先生叫什么名字吗？我非常想认识他，这篇《厌世心与自觉心》你帮我带到《甲寅》杂志社吧。', '1010.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1029', '我先看看这篇文章……我大概知道您所说的这位大叔是谁了。不过要不要在杂志上发表，你得跟我玩个小游戏，最简单的石头、剪刀、布知道吧？', '0105.jpg', '015.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1030', '刚才只是开个小小的玩笑，不管输赢，文章都是会发表的。', '0105.jpg', '015.png', null, null, null, '303');
INSERT INTO `scene` VALUES ('1032', '那位大叔就在那里了，可是前面拦住路的是……', '0101.jpg', '901.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1033', '战斗结束了……希望是最后一次……', '0101.jpg', '100.png', null, null, '103', null);
INSERT INTO `scene` VALUES ('1035', '（找到了大叔，大叔沉吟）<br>唔，陈庆同，陈独秀，吾道不孤啊。我跟章士钊老先生也认识，文章的事情不必担心。', '0101.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1036', '我叫李大钊，字守常，河北乐亭人，现在正在早稻田大学学习政治经济学。', '0101.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1100', '1915年6月，陈独秀先生因妻子高君曼在上海发病，数函催返，于中旬回国。', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1101', '幸会幸会，多日不见，我对如何提高国民“自觉心”也在不停的思考。\n', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1102', '回国后，我见到了孟邹，一番长谈下，有所感悟，“让我办十年杂志，全国思想都全改观。”青年之于社会，犹新鲜活泼细胞之在人身，所以对于你们青年来说，只有一个期望——“学习本无底，前进莫旁徨”。你们要崇尚自由、进步、科学，要有世界眼光，要讲求实行和进取。', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1103', '我打算创办一本杂志，我跟孟邹谈过了，这本杂志就叫《青年杂志》。<br>当前的中国，中国搞政治革命是没有意义的，而欲“救中国、建共和“，首先得进行思想革命！我计划用这本杂志在哲学、文学、教育、法律、伦理等广阔领域向封建意识形态发起挑战。', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1104', '上海！我回国前在日本跟守常先生深谈过，我们得有一个坚强得领导核心，所以我已经在老渔阳里2号选定了地址，守常先生将在北京发展我们的事业。', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1105', '有件事情需要麻烦一下，您能帮我把这篇发刊词《敬告青年》带到杂志社吗？我这里实在有点儿走不开……', '0201.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1106', '咦，报社得地址在哪儿？好像刚才陈先生说过吧……', '0201.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1107', '好像走错路了，应该是老渔阳里2号……唉……', '0202.jpg', '201.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1108', '这里……就是老渔阳里吧……这是一条石库门弄堂，2号在……', '0203.jpg', '202.png', '404', '5', null, null);
INSERT INTO `scene` VALUES ('1109', '站住，把身上得钱都交出来！', '0203.jpg', '902.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1110', '战斗结束了……', '0203.jpg', '100.png', null, null, '104', null);
INSERT INTO `scene` VALUES ('1111', '终于把《敬告青年》得手稿送到了报社，等待《青年杂志》发刊吧……', '0203.jpg', '210.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1115', '《青年杂志》发刊啦！快看看《敬告青年》这篇发刊词！', '0201.jpg', '206.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1116', '……<br>什么是自我觉醒？自我觉醒是新鲜活泼的青年的价值和责任，是能够自我审视、认识自己而不自我看轻。什么是奋斗？奋斗是用我们所拥有的智慧和才能，奋力去排除那些陈腐朽败的人，将他们视作仇敌，视作洪水猛兽，并不与他们亲近，不被他们身上的菌毒所传染。', '0201.jpg', '206.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1117', '青年人啊！是否有能够自告奋勇担此大任的人呢？如果你们能够明白是非对错的道理，我在这里真诚提出以下六点要求，以供决择，希望你们能够放平心态细细品读。', '0201.jpg', '206.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1118', '自主的而非奴隶的……，进步的而非保守的……，进取的而非退隐的……，世界的而非锁国的……，实利的而非虚文的……，科学的而非想象的……', '0201.jpg', '206.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1120', '1916年，群益书社接到上海基督教青年会来信，信上说该杂志同青年会杂志《青年》、《上海青年》同名，要求《青年杂志》改名，《青年杂志》易名《新青年》出版。', '0204.jpg', '203.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1121', '这篇文章《新青年》提出了“新青年“得标准：生理上身体强壮；心理上是\"斩尽涤绝做官发财思想\"，而\"内图个性之发展，外图贡献于其群\";以自力创造幸福，而\"不以个人幸福损害国家社会\"。', '0204.jpg', '204.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1122', '果然是陈先生的文章！这篇文章写的也很犀利……<br>“青年之字典，无困难之字，青年之口头，无障碍之语；惟知跃进，惟知雄飞，惟知其本身自由之精神，奇僻之思想，锐敏之直觉，活泼之生命，以创造环境，征服历史。<br>……<br>题诗寄汝非无意，莫负青春取自惭， —— 于谦为世界进文明，为人类造幸福，以青春之我，创建青春之家庭，青春之国家，青春之民族，青春之人类，青春之地球，青春之宇宙，资以乐其无涯之生。“<br>\n让我猜猜这篇文章的作者是谁……', '0204.jpg', '204.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1123', ' 啊，猜错了，原来是守常先生的《青春》……我早该猜到的……', '0204.jpg', '205.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1124', '果然是守常先生的作品，《青春》……真是振聋发聩……', '0204.jpg', '205.png', '411', '5', null, null);
INSERT INTO `scene` VALUES ('1125', '1916年3月，袁世凯被迫取消帝制，一场丑态百出的闹剧终于夭折，随后李大钊应邀赴北京担任《晨钟报》主编……', '0205.jpg', '207.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1126', '嗯，虽然被早稻田大学以长期欠习为名除名，可我却反而松了口气，终于可以心无旁骛的搞革命了。', '0205.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1127', '（路边一个妇人抱着怀里生病的孩子跪在地上，苦苦哀求人们施舍着钱给孩子治病。李大钊招呼车夫停下，却看到一个男人冲过去拼命要拉着妇人离开……）', '0205.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1128', '（妇人是男人的妻子，男人愤怒穷人的命是等死，但死也得站着死，可妻子只想要孩子活下去，她重重地磕着头，男人悲愤难忍竟脱下鞋抽打着妻子。）', '0205.jpg', '903.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1129', '这世道，老百姓也不容易啊……', '0205.jpg', '100.png', null, null, '105', null);
INSERT INTO `scene` VALUES ('1130', '（李大钊扶起妇人，提着行李来到当铺，将衣服和怀表当掉，并预支了《晨钟报》的薪水交给男人）<br>先生……这……', '0205.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1131', '这30块银元拿着吧，赶紧带孩子去看病……', '0205.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1135', '1917年1月，陈独秀应北大校长蔡元培多次邀请，赴北大就任文科学长，并把《新青年》杂志从上海带去北京出版发行。年底，李大钊入职北京大学，担任图书馆主任兼任经济学教授，并参加《新青年》杂志编辑部的工作。', '0206.jpg', '208.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1136', '多亏章士钊先生的推荐，我又能跟仲甫并肩作战了！', '0206.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1137', '《新青年》已经被列入北大校本刊物，蔡元培校长即将召开编译处会议，我跟仲甫都要参会，我先失陪了。', '0206.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1138', '（片刻之后，北大红楼）', '0207.jpg', '211.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1139', '守常，你现在还作诗吗？', '0207.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1140', '惭愧，已经许久未作了。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1141', '守常，我很喜欢你的诗，你的诗朴实中有英雄气，很像你的为人。', '0207.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1142', '癸丑年到日本，大家心情都不好，我也闷得慌，那时写的东西都脱不了一个愁字。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1143', '守常你写文章很容易随季节变化而受到影响呢。', '0207.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1144', '嗯，确是如此，回到国内心情也是不一样了，近日图书馆忙搬迁，闲时我多做几篇。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1145', '那就静候佳音了，仲甫愿与守常先生并肩作战！', '0207.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1200', '1917年11月7日俄国爆发了以列宁为首的布尔什维克领导的十月革命。三天后，上海的《民国日报》以“突如其来之俄国大政变”报道了这一消息，接着其他报纸对十月革命也做了报道。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1201', '广义派只不过是一个说法，我一直再搜集着有关十月革命的一切信息，也许长期求索中的“理想的中华”，只有在马克思主义的指导下依靠工人阶级走十月革命的道路，才能成为现实。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1202', '俄国革命最近之形势，政权全归急进社会党之手，将从来之政治组织、社会组织根本推翻，俄国今日之革命，诚与昔者法兰西革命同为影响于未来世纪文明之绝大变动。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1203', '对，我认为这两次革命是人类历史上的两个转折阶段。法国革命奠定了新时代的基础，决定了19世纪文明的发展，而十月革命则为已经到来的时代奠定了基础。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1204', '这不是“布尔什维克”的阴谋而是政治和社会革命，是人类历史上的转折阶段，这次俄国时间对我有了极大的鼓舞和启发，只有社会主义才能救中国。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1205', '俄罗斯之革命是二十世纪初期之革命，是立于社会主义上之革命，是社会的革命而并着世界的革命之彩色。时代之精神不同，革命之性质自异，故迴非可同日而语。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1206', '这篇文章的手稿就送给你吧，要把现代的文明，从根底输到社会里，非把知识阶级与劳工阶级打成一气不可。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1207', '仔细端详，这篇文章叫做……', '0207.jpg', '302.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1208', '猜错了，原来这篇文章叫《法俄革命之比较观》，最早发表在《言治》季刊上……', '0207.jpg', '301.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1210', '正是发表在《言治》季刊上的文章《法俄革命之比较观》！', '0207.jpg', '301.png', '404', '5', null, null);
INSERT INTO `scene` VALUES ('1220', '1918年11月15日，北京大学在天安门前举办演讲大会……', '0210.jpg', '303.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1221', '我们庆祝，不是为那一国或那一国的一部分人庆祝，是为全世界的庶民庆祝。不是为打败德国人庆祝，是为打败世界的军国主义庆祝。这回大战，有两个结果：一个是政治的，一个是社会的。政治的结果，是“大……主义”失败，民主主义战胜。', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1222', '我们中国也有“大北方主义”、“大西南主义”等等名词出现。“大北方主义”、“大西南主义”的范围以内，又都有“大……主义”等等名词出现。这样推演下去，人之欲大，谁不如我，于是两大的中间有了冲突，于是一大与众小的中间有了冲突，所以境内境外战争迭起，连年不休。“大……主义”就是专制的隐语，就是仗看自己的强力蹂躏他人欺压他人的主义。', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1223', '世间资本家占最少数，从事劳工的人占最多数。因为资本家的资产，不是靠看家族制度的继袭，就是靠着资本主义经济组织的垄断，才能据有。这劳工的能力，是人人都有的，劳工的事情，是人人都可以作的，所以劳工主义的战胜，也是庶民的胜利。民主主义劳工主义既然占了胜利，今后世界的人人都成了庶民，也就都成了工人。', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1224', '守常先生的演讲余音绕梁，不由得想让人仔细回味……', '0210.jpg', '210.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1225', '这回大战，有两个结果：一个是政治的，一个是社会的！一个新命的诞生，必经一番苦痛，必冒许多危险；这种潮流，是祗能迎，不可拒的、这场会议。恐怕必须有主张公道破除国界的人士占列席的多数，须知今后的世界，变成劳工的世界。快去作工呵！', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1226', '这回大战，有两个结果：一个是政治的，一个是社会的！一个新命的诞生，必经一番苦痛，必冒许多危险；这种潮流，是祗能迎，不可拒的、这场会议。恐怕必须有主张公道破除国界的人士占列席的多数，须知今后的世界，变成劳工的世界。快去作工呵！', '0210.jpg', '010.png', '412', '5', null, null);
INSERT INTO `scene` VALUES ('1230', '对了，还有一件事情需要麻烦你一下……', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1231', '我写了一篇研究俄国十月革命的文章《布尔什维主义的胜利》，本来是打算拿到《新青年》上发表的，可是经过山洞时候给弄丢了，你能帮我把文章找回来吗？', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1232', '据说北边村里时代都是在山那边生活，你可以去看一下有没有什么线索。', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1233', '试看将来的环球，必是吾辈赤旗的世界！还在犹豫什么呢？别怕，这件这件【皮夹克】送给你防身。', '0210.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1240', '爸爸的爸爸叫什么？ 爸爸的爸爸叫爷爷。 爸爸的妈妈叫什么？ 爸爸的妈妈叫奶奶……', '0211.jpg', '304.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1241', '你会背《千字文》吗？不会背会被私塾的先生打手心的！', '0211.jpg', '304.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1242', '别提什么山洞不山洞啦，来，石头剪刀布，赢了我啥都告诉你！', '0211.jpg', '304.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1243', '据说那个山洞跟迷魂阵一样……不知道能不能顺利走出来……', '0211.jpg', '304.png', null, null, null, '412');
INSERT INTO `scene` VALUES ('1244', '这只野狼可真不好对付……', '0215.jpg', '100.png', null, null, '106', null);
INSERT INTO `scene` VALUES ('1251', '这是山洞的入口吧，只有微微的光亮，有上方、左侧、右侧三个通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1252', '唉，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1253', '嗨，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1254', '唔，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1255', '看不清啊，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1256', '我在哪儿，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1257', '该走哪条路呢？有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1258', '唉，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1259', '我在哪儿？山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1260', '到哪儿了？山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1261', '哎，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1262', '嗨，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1263', '该怎么走呢，山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1264', '是不是迷路了？山洞里只有微微的光亮，有上方、下方、左侧、右侧四条通道……', '0215.jpg', '305.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1265', '呼，终于走出来了，幸而不辱使命，拿到了手稿。<br>不好，前面有老虎！！！', '0216.jpg', '905.png', '412', '5', null, null);
INSERT INTO `scene` VALUES ('1266', '这不会是到了野狼窝吧……', '0215.jpg', '100.png', null, null, '107', null);
INSERT INTO `scene` VALUES ('1267', '这不会是到了野狼窝吧……', '0215.jpg', '100.png', null, null, '116', null);
INSERT INTO `scene` VALUES ('1270', '这只老虎可真难对付……', '0216.jpg', '100.png', null, null, '108', null);
INSERT INTO `scene` VALUES ('1280', '终于找到手稿了，真是太谢谢了！', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1281', '布尔什维主义就是革命的社会主义，它奉马克思为宗主，其目的在把资本家独占利益的生产制度打破。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1282', '赤色旗到处翻飞，劳工会纷纷成立，革命称为是二十世纪式的革命，这种无产阶级的社会主义革命是世界历史的潮流，是二十世纪的群众运动，是一种伟大不可抗的社会力。什么皇帝，贵族，军阀，官僚，军国主义，资本主义，他们遇见这种不可当的潮流，都像枯黄的树叶遇见凛冽的秋风一般，一个个地飞落在地。', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1283', '由今以后，到处所见的，都是布尔什维主义战胜的旗。到处所闻的，都是布尔什维主义凯歌的声。人道的警钟响了，自由的曙光现了！试看将来的环球，必是赤旗的世界', '0207.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1300', '快来，这是我在《新青年》上新发表的文章！', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1301', '主张文学革命，受到旧势力的非难，乃意料中事，封建顽固派和复古派四处造谣，攻击谩骂，还企图煽动军阀镇压我们，于是我就写了这篇文章答辩！', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1302', '我把《新青年》创刊以来所受到的反对和攻击，一一摆出来示众，然后再进行有力的回击和驳斥，我们不仅无罪，而且有功，新文化运动就要高举“德先生”和“赛先生”两面旗帜！', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1303', '是啊，你能猜出“德先生”和“赛先生”分别是谁吗？', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1304', '不错哟，猜对啦！', '0105.jpg', '011.png', '404', '5', null, null);
INSERT INTO `scene` VALUES ('1305', '真可惜，只猜对一半儿。', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1306', '一个都没说对……', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1307', '本志同人本来无罪，只因为拥护那德莫克拉西 (Democracy) 和赛因斯(Science)两位先生，才犯了这几条滔天的大罪。', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1308', '要拥护那德先生，便不得不反对孔教，礼法，贞节，旧伦理，旧政治；要拥护那赛先生，便不得不反对旧艺术，旧宗教。', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1309', '要拥护德先生，又要拥护赛先生，便不得不反对国粹和旧文学，只有拥护“德先生”、“赛先生”，才能救中国。', '0105.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1320', '1919年，巴黎和会上中国代表提出取消帝国主义在中国特权的七项希望条件：废除外国在中国的势力范围；撤退外国军队、巡警；裁撤外国邮局及有线无线电报机关；撤销领事裁判权；还有……', '0405.jpg', '405.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1321', '还有归还租界和关税自由权，除此之外，还有废除袁世凯与日本签订的“二十一条”，取消一战中被日本夺去的德国在山东的各项条件。', '0405.jpg', '405.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1322', '另外，废除袁世凯与日本签订的“二十一条”，取消一战中被日本夺去的德国在山东的各项条件。', '0405.jpg', '405.png', '411', '5', null, null);
INSERT INTO `scene` VALUES ('1325', '在英、美、法的主持下，根本无视中国的要求，并在合约中明文规定把原来德国在山东掠夺的条件全部转让给日本，使许多中国人期待的“公理战胜强权”瞬时化为泡影，进一步激化了帝国主义同中华民族的矛盾。', '0405.jpg', '409.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1330', '1919年5月4日下午，北京三所高校的3000多名学生代表冲破军警阻挠，云集天安门……', '0210.jpg', '404.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1331', '站住，想去哪儿，这条路已经被封了！', '0210.jpg', '909.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1332', '战斗结束……', '0210.jpg', '100.png', null, null, '109', null);
INSERT INTO `scene` VALUES ('1335', '前面有岔路，怎么走……', '0210.jpg', '407.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1336', '站住，都说了此路不通！', '0210.jpg', '908.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1337', '（墙洞后一个小朋友挡住了路）<br>陪我玩一把剪刀石头布就让你过去！', '0210.jpg', '304.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1338', '战斗结束……', '0210.jpg', '100.png', null, null, '111', null);
INSERT INTO `scene` VALUES ('1339', '总算把这个“小祖宗”应付过去了……', '0210.jpg', '210.png', null, null, null, '404');
INSERT INTO `scene` VALUES ('1345', '终于到了天安门广场了，已经有学生抵达了！他们是……', '0210.jpg', '404.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1346', '走近一看，原来是北京高等师范学校的师生……', '0210.jpg', '404.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1347', '果然是北京高等师范学校的师生！', '0210.jpg', '404.png', '404', '5', null, null);
INSERT INTO `scene` VALUES ('1350', '“誓死力争，还我青岛”、“收回山东权利”、“拒绝在巴黎和约上签字”、“废除二十一条”、“抵制日货”、“宁肯玉碎，勿为瓦全”、“外争主权，内除国贼”……', '0210.jpg', '404.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1351', '惩办国贼曹汝霖（交通总长）、陆宗舆（币制局总裁）、章宗祥（驻日公使）！！！', '0210.jpg', '404.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1352', '学生游行队伍移至曹宅，痛打了章宗祥，北京高等师范学校数理部的匡互生第一个冲进曹宅，并带头火烧曹宅……', '0404.jpg', '408.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1355', '战斗结束……', '0404.jpg', '100.png', null, null, '110', null);
INSERT INTO `scene` VALUES ('1356', '32位同学被军警逮捕了……', '0404.jpg', '406.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1357', '1919年6月5日，上海两万人以上工人开始大规模罢工，以响应学生；6月6日、7日、9日，上海的电车工人、船坞工人、清洁工人、轮船水手，也相继罢工。<br>上海工人罢工波及各地，京汉铁路长辛店工人，京奉铁路工人及九江工人都举行罢工和示威游行，自此，运动的主力也由北京转向了上海。<br>1919年6月6日，上海各界联合会成立，反对开课、开市，并且联合其他地区，告知上海罢工主张。通过上海的三罢运动，全国22个省150多个城市都有不同程度的反映……', '0201.jpg', '410.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1358', '1919年6月11日，陈独秀等人到北京前门外闹市区散发《北京市民宣言》，“政府不接受市民要求，我等学生商人劳工军人等，惟有直接行动以图根本之改造！”<br>（突然几个军警冲了过来：“把陈独秀抓起来！”）', '0406.jpg', '411.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1360', '战斗结束……', '0406.jpg', '100.png', null, null, '112', null);
INSERT INTO `scene` VALUES ('1361', '军警来的太多，陈先生被抓走了……', '0406.jpg', '411.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1362', '守常先生正在城南游艺园发送传单……', '0407.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1363', '什么？先别急，我现在就给章土钊先生拍电报，请他找龚心湛代总理说说情。', '0407.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1364', '之后，李大钊先生接连在3期《每周评论》上发表文章，“仲甫(陈独秀字仲甫)是小监狱，我们是大监狱。”“我们对于世界的新生活，都是瞎子。亏了‘只眼’(陈独秀笔名)，常常给我们点光明……是谁夺了我们的光明?” “要靠自己的努力……从那黑暗的牢狱中，打出一道光明来。”', '0105.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1365', '9月16日，北洋政府被迫同意陈独秀保释出狱，李大钊坐在藤椅上与躺在床上的陈独秀闲谈……', '0402.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1366', '你今出狱了，我们很欢喜！他们的强权和威力，终竟战不胜真理，仲甫有机会一定要出去走一走……', '0402.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1367', '守常，世界文明发源地有二，一是科学研究室，一是监狱。我们青年要立志出了研究室就入监狱，出了监狱就入研究室，这才是人生最高尚优美的生活。', '0402.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1370', '面对强大社会舆论压力，曹、陆、章相继被免职，总统徐世昌提出辞职。<br>1919年6月28日，中国代表没有在和约上签字。', '0405.jpg', '405.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1400', '（1920年2月，为躲避反动军阀政府的迫害，陈独秀从北京秘密迁移上海，李大钊在护送陈独秀离京途中……）<br>\n守常，我想通了，我们得建党，我们得有一个坚强的领导核心。', '0501.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1401', '你想建一个什么样的党？', '0501.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1402', '一个用马克思学说武装起来的先进政党，一个可以把中国引向光明、让中国人能够过上好日子的无产阶级的政党。', '0501.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1403', '你为什么要建这个政党？', '0501.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1404', '我为了他们，我为了他们能够像人一样地活着，为了他们能够拥有人的权利、人的快乐、人的尊严！', '0501.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1405', '好，仲甫兄，让我们对着这些同胞宣誓吧。', '0501.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1406', '来，让我们宣誓。', '0501.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1407', '为了让你们不再流离失所，为了让中国的老百姓过上富裕幸福的生活，为了让穷人不再受欺负，人人都能当家做主，为了人人都受教育，少有所教，老有所依，为了中华民富国强，为了民族再造复兴，我愿意奋斗终身。', '0501.jpg', '099.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1410', '（一段时间之后……）<br>仲甫来信了。', '0401.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1411', '广东省省长兼粤军总司令陈炯明邀仲甫赴广州任教育委员长，仲甫很感兴趣，但怕影响到正在进行的建党工作。', '0401.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1412', '是好事儿，李大钊提笔写下回信：“广东是孙中山的革命活动中心，在广东发起组建共产主义小组，有特别的意义。”', '0401.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1413', '陈独秀上任后，仍保持惯常作风，雷厉风行，大刀阔斧，先后制定出“教育委员会组织法”“全省学校系统图”“教育经费概算表”，均被孙中山、陈炯明接受。同时，他还积极筹办编译局、宣传员养成所、劳动补习学校等，大力传播新思想，倡导新文化。', '0502.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1414', '1921年春，陈独秀推动改组广东早期党组织，“开始成立真正的共产党”。', '0502.jpg', '011.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1415', '同时，由于北洋政府的精力财力都集中于争夺地盘、攫取统治权，当局连续数月拖欠教育经费，教职员工发不出薪水，生活无法维持，李大钊紧锣密鼓地领导北京八所国立院校展开“索薪斗争”。', '0503.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1416', '“索薪”表面上是为解决高等院校教职员工十分迫切的生活问题，而实质却是反对北洋政府的黑暗统治。', '0503.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1417', '1921年6月初，共产国际代表马林和共产国际远东书记处代表尼克尔斯基先后来到上海，经过商谈后，建议及早召开全国代表大会，宣告党的成立。北京党支部接到上海党组织的通知，要求派遣两名代表赴沪出席中共一大……', '0503.jpg', '511.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1418', '反对北洋军阀政府的“索薪斗争”正如火如荼，我实在是脱不开身，加之我现在是北洋政府关注和监视的人物，去参加会议反而可能带来危险，所以我们北京支部选举了刘仁静和张国焘两位同志参加会议。', '0503.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1419', '仲甫因为兼任大学预科校长，正在争取建校舍的一笔款子，他要一走款子就办不成了，应该也去不了了。由包惠僧同志代表他和陈公博同志一起参会。', '0503.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1420', '对，在哪里也是战斗，我要留在北京战斗，会议将在上海法租界望志路106号举行，你要保护好大家。', '0503.jpg', '010.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1425', '上海……会议的地址是？', '0201.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1426', '不对，应该是在法租界，是法租界望志路106号……', '0201.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1427', '没错，就是这里，法租界望志路106号。', '0201.jpg', '200.png', '411', '5', null, null);
INSERT INTO `scene` VALUES ('1428', '到了，就是这里！<br>怎么路口有个地痞？', '0504.jpg', '511.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1429', '喂，你在这儿干什么呢？<br>“你管老子！”地痞说完抽身想逃……', '0504.jpg', '910.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1435', '战斗结束……', '0504.jpg', '100.png', null, null, '113', null);
INSERT INTO `scene` VALUES ('1436', '大家都已经到齐了呀，他们代表了全国的50多名党员，让我看看，一共有多少名中共党员……', '0504.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1437', '嗯，中共党员代表一共有13名！', '0504.jpg', '210.png', '412', '5', null, null);
INSERT INTO `scene` VALUES ('1438', '中共党员代表是13名，加上共产国际代表才有15人!', '0504.jpg', '210.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1439', '他们是上海的李达、李汉俊；北京的张国焘、刘仁静；长沙的毛泽东、何叔衡；武汉的董必武、陈潭秋；济南的王尽美、邓恩铭；广州的陈公博、包惠僧；旅日的周佛海……', '0504.jpg', '501.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1440', '代表仲甫先生参加会议的是？', '0504.jpg', '200.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1441', '想起来了，是包惠僧……', '0504.jpg', '210.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1442', '对，就是包惠僧！', '0504.jpg', '210.png', '404', '5', null, null);
INSERT INTO `scene` VALUES ('1450', '会议从1921年7月23日开始持续了几天，7月30日晚上，突然一个中年男人猛地推开餐厅门闯了进来……', '0504.jpg', '911.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1451', '我？我找社联的王主席……', '0504.jpg', '911.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1452', '（中年男子用目光偷偷瞄向角落里的共产国际代表马林和尼科尔斯基……）<br>“啊，那对不起，我找错人了！”男人转身出门。', '0504.jpg', '911.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1453', '中年男子出了门，鬼鬼祟祟往法租界走……', '0504.jpg', '911.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1455', '战斗结束……', '0504.jpg', '100.png', null, null, '114', null);
INSERT INTO `scene` VALUES ('1456', '中年男子逃走时不小心掉下一个证件……', '0504.jpg', '502.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1460', '把证件拿给大家看，代表们相当警觉，马上转移了所有人员和重要文件，李达的夫人王会悟提议，到离上海不远的嘉兴去开会……', '0504.jpg', '501.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1461', '掩护代表们撤退后，发现一个持枪的特务摸了过来……', '0504.jpg', '912.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1465', '战斗结束……', '0504.jpg', '100.png', null, null, '115', null);
INSERT INTO `scene` VALUES ('1470', '代表们互相装作不认识各自坐在不同的地方，到达嘉兴车站后登上王会悟事先租好的南湖画舫……', '0506.jpg', '511.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1471', '大会通过了《中国共产党的第一个纲领》和《中国共产党第一决议》，纲领的第一条写明“本党定名为‘中国共产党’”，并选举陈独秀为中央局书记，李达为宣传主任，张国焘为组织主任，由三人组成中央局。', '0506.jpg', '511.png', null, null, null, null);
INSERT INTO `scene` VALUES ('1472', '时间定格在这一刻——中国共产党诞生了！', '0506.jpg', '511.png', null, null, null, null);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '401');
INSERT INTO `shop` VALUES ('2', '402');
INSERT INTO `shop` VALUES ('3', '411');
INSERT INTO `shop` VALUES ('4', '201');
INSERT INTO `shop` VALUES ('5', '301');
INSERT INTO `shop` VALUES ('6', '202');
INSERT INTO `shop` VALUES ('7', '203');
INSERT INTO `shop` VALUES ('8', '302');

-- ----------------------------
-- Table structure for usr
-- ----------------------------
DROP TABLE IF EXISTS `usr`;
CREATE TABLE `usr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usr` varchar(20) NOT NULL COMMENT '登录账号，只能是英文数字',
  `pwd` char(13) NOT NULL COMMENT '登录密码',
  `nam` varchar(10) DEFAULT NULL COMMENT '角色姓名，只能中文',
  `sex` int(1) DEFAULT NULL COMMENT '性别，1为男性，2为女性',
  `atk` int(3) NOT NULL DEFAULT '5' COMMENT '攻击，最高999，默认5',
  `def` int(3) NOT NULL DEFAULT '2' COMMENT '防御，最高999，默认2',
  `hp` int(5) NOT NULL DEFAULT '50' COMMENT '现有体力，最高99999，默认50',
  `mhp` int(5) NOT NULL DEFAULT '50' COMMENT '最高体力，最高99999，默认50',
  `lip` varchar(15) DEFAULT NULL,
  `ltim` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `achv` int(5) NOT NULL DEFAULT '0' COMMENT '成就点',
  `mun` int(5) NOT NULL DEFAULT '0' COMMENT '银元',
  `sid` int(11) NOT NULL DEFAULT '1000' COMMENT '所处场景id',
  `power` varchar(255) NOT NULL DEFAULT '0',
  `circ` int(255) NOT NULL DEFAULT '0' COMMENT '重新开始次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
