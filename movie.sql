/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-01-08 12:32:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cinema`
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `cinema_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(255) DEFAULT NULL,
  `cinema_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cinema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='电影院表';

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('1', '大地影院', '顺德区人昌路美的新都荟广场');
INSERT INTO `cinema` VALUES ('2', '万达影城', '黄埔区科学城科学大道高德汇购物中心');
INSERT INTO `cinema` VALUES ('3', '成龙影城', '白云区钟落潭广从五路钟港大厦');
INSERT INTO `cinema` VALUES ('4', '飞扬影城', '天河区天河路228号正佳购物广场');
INSERT INTO `cinema` VALUES ('5', '中华广场电影城', '越秀区中山三路33号中华广场8楼');
INSERT INTO `cinema` VALUES ('6', '金逸影城', '花都区狮岭镇阳光路丽莎广场七层');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `comment_content` text,
  `movie_id` bigint(20) DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `comment_score` int(10) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('5', '1', '我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错我觉得这部电影不错', '4', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('7', '1', '12345', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('9', '9', '1234', '3', '2020-01-02 22:00:00', '2');
INSERT INTO `comment` VALUES ('13', '9', '2222', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('14', '9', '12312313', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('15', '9', '123213', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('16', '9', '123123', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('17', '9', '123123', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('18', '9', '123', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('19', '9', '1231', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('20', '9', '13', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('21', '9', '123123', '2', '2020-01-02 22:00:00', '9');
INSERT INTO `comment` VALUES ('23', '1', '111111', '2', '2020-01-02 22:00:00', '10');
INSERT INTO `comment` VALUES ('24', '1', '12', '6', '2020-01-04 20:28:31', '5');
INSERT INTO `comment` VALUES ('25', '1', '13', '7', '2020-01-04 20:28:42', '2');
INSERT INTO `comment` VALUES ('26', '1', '14', '8', '2020-01-04 20:28:52', '3');
INSERT INTO `comment` VALUES ('27', '1', '15', '9', '2020-01-04 20:28:59', '5');
INSERT INTO `comment` VALUES ('28', '1', '16', '10', '2020-01-04 20:29:08', '6');
INSERT INTO `comment` VALUES ('29', '1', '17', '11', '2020-01-04 20:29:15', '7');
INSERT INTO `comment` VALUES ('31', '1', '18', '16', '2020-01-04 20:30:35', '3');
INSERT INTO `comment` VALUES ('32', '1', '19', '17', '2020-01-04 20:30:46', '1');
INSERT INTO `comment` VALUES ('33', '1', '18', '11', '2020-01-04 21:41:12', '1');
INSERT INTO `comment` VALUES ('34', '9', '2201', '2', '2020-01-04 22:01:35', '9');
INSERT INTO `comment` VALUES ('35', '1', '11', '2', '2020-01-05 13:53:44', '1');
INSERT INTO `comment` VALUES ('36', '9', '202016', '2', '2020-01-05 13:54:46', '10');

-- ----------------------------
-- Table structure for `hall`
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `hall_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(255) DEFAULT NULL,
  `hall_capacity` int(10) DEFAULT NULL,
  `cinema_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hall_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='放映厅';

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES ('2', '二号厅', '100', '1');
INSERT INTO `hall` VALUES ('3', '一号厅', '50', '1');
INSERT INTO `hall` VALUES ('4', '三号厅', '100', '1');
INSERT INTO `hall` VALUES ('5', '四号厅', '50', '1');
INSERT INTO `hall` VALUES ('6', '五号放映厅', '10', '1');
INSERT INTO `hall` VALUES ('7', '一号厅', '100', '2');
INSERT INTO `hall` VALUES ('8', '2号厅', '50', '2');
INSERT INTO `hall` VALUES ('9', '3号厅', '50', '2');
INSERT INTO `hall` VALUES ('10', '1号厅', '50', '3');
INSERT INTO `hall` VALUES ('11', '2号厅', '50', '3');
INSERT INTO `hall` VALUES ('12', '3号厅', '50', '3');
INSERT INTO `hall` VALUES ('13', '1号厅', '50', '4');
INSERT INTO `hall` VALUES ('14', '2号厅', '50', '4');
INSERT INTO `hall` VALUES ('15', '3号厅', '50', '4');
INSERT INTO `hall` VALUES ('16', '1号厅', '50', '5');
INSERT INTO `hall` VALUES ('17', '2号厅', '50', '5');
INSERT INTO `hall` VALUES ('18', '3号厅', '50', '5');
INSERT INTO `hall` VALUES ('19', '1号厅', '50', '6');
INSERT INTO `hall` VALUES ('20', '2号厅', '50', '6');
INSERT INTO `hall` VALUES ('21', '3号厅', '50', '6');

-- ----------------------------
-- Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `movie_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `movie_cn_name` varchar(255) DEFAULT NULL,
  `movie_fg_name` varchar(255) DEFAULT NULL,
  `movie_actor` varchar(255) DEFAULT NULL,
  `movie_director` varchar(255) DEFAULT NULL,
  `movie_detail` text,
  `movie_duration` varchar(255) DEFAULT NULL,
  `movie_type` varchar(255) DEFAULT NULL,
  `movie_score` float(10,1) DEFAULT NULL,
  `movie_boxOffice` float(10,2) DEFAULT NULL,
  `movie_commentCount` bigint(20) DEFAULT '0',
  `movie_releaseDate` datetime DEFAULT NULL,
  `movie_picture` varchar(255) DEFAULT NULL,
  `movie_country` varchar(255) DEFAULT NULL,
  `movie_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='电影表';

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('2', '叶问4：完结篇', '葉問4', '甄子丹:叶问,吴樾:万宗华,吴建豪:赫文,斯科特·阿金斯:巴顿,李宛妲:若男', '叶伟信', '因故来到美国唐人街的叶问（甄子丹 饰），意外卷入一场当地军方势力与华人武馆的纠纷，面对日益猖狂的民族歧视与压迫，叶问挺身而出，在美国海军陆战队军营拼死一战，以正宗咏春，向世界证明了中国功夫。', '120分钟', '动作', '8.7', null, '14', '2019-11-30 00:00:00', '/file/upload/head/53a1f31f-1b86-4fce-9ab9-c07981bff888.jpg', '中国大陆', '1');
INSERT INTO `movie` VALUES ('3', '误杀', 'Sheep Without a Shepherd', '肖央:李维杰', '柯文丽', '李维杰（肖央 饰）与妻子阿玉（谭卓 饰）打拼多年，膝下育有两个女儿。一个雨夜，一场意外，打破了这个家庭的宁静。而李维杰作为一个父亲，为了保全自己的家人，他不顾一切地决定瞒天过海……', '112分钟', '剧情 犯罪', '3.7', null, '1', '2019-11-29 00:00:00', '/file/upload/movies/c9dfbe5a616041ab8ccf593f46548f92.jpg', '中国大陆', '1');
INSERT INTO `movie` VALUES ('4', '宠爱', 'Adoring', '张子枫:江楠,于和伟:高铭,吴磊:陈乐云', '杨子', '电影《宠爱》共由6段温暖的故事组成，不同年龄段的人们，在宠物的陪伴和守护中，收获爱、发现爱，更重新学会爱。在“爱”的主线下，一系列关于亲情、友情、爱情的故事逐一展开。电影《宠爱》将于12月31日，全国公映，陪大家一起温暖跨年。', '108分钟', '喜剧 爱情 剧情', '9.0', null, '1', '2020-01-01 00:00:00', '/file/upload/head/a11b37ba-c96d-4ad2-bc92-4215e744914b.jpg', '中国大陆', '1');
INSERT INTO `movie` VALUES ('6', '叶问', 'ye2', ':', '叶问2', '', '', '动作', '5.0', null, '1', '2020-01-03 00:00:00', '/file/upload/head/f03d48aa-f31c-46b9-a7df-a5b8b676084a.jpg', '大陆', '1');
INSERT INTO `movie` VALUES ('7', '中国机长', 'The Captain', '张涵予:刘长健,欧豪:徐奕辰,杜江:梁栋,袁泉:毕男,李沁:周雅文', '刘伟强', '根据2018年5月14日四川航空3U8633航班机组成功处置特情真实事件改编。机组执行航班任务时，在万米高空突遇驾驶舱风挡玻璃爆裂脱落、座舱释压的极端罕见险情，生死关头，他们临危不乱、果断应对、正确处置，确保了机上全部人员的生命安全，创造了世界民航史上的奇迹', '111分钟', '剧情', '2.0', null, '1', '2019-09-30 00:00:00', '/file/upload/head/679e5220-af24-4e37-ab23-221b07b6a7c9.jpg', '大陆', '1');
INSERT INTO `movie` VALUES ('8', '唐人街探案2', 'Detective Chinatown 2', '王宝强:唐仁,刘昊然:秦风,肖央:宋义,刘承羽:陈英', ' 陈思诚', '秦风接到唐仁的邀请来纽约参加其与阿香的婚礼。壕气逼人的唐仁迎接秦风，极尽招摇。岂料“婚礼”是唐仁为巨额奖金而参加的世界名侦大赛，比赛的内容是寻找杀害唐人街教父七叔的孙子的凶手。 受骗的秦风怒极欲走，却被纽约华人刑警陈英送来的讯息所吸引。七叔孙子的死法离奇，寻人上升为悬赏缉凶。“名侦探”们各显“其能”，鸡飞狗跳。众人调查的同时另一起案件发生，作案手法极其相似。原本锁定的凶手竟有了不在场证明，秦风不禁对自己的推理产生了怀疑。第三起案件发生连环案件。秦风、唐仁二人再次披挂，摆脱各路纠缠，闹翻纽约，几欲接近真相。第四起，与凶手失之交臂，诡计呼之欲出。真凶伏法，动机令人不寒而栗。看似完美结案的背后却隐藏着另一个发人深省的谜题 。', '121分钟', '喜剧 动作 悬疑', '3.0', null, '1', '2018-02-16 00:00:00', '/file/upload/head/d9e1bf6e-385f-4a0f-875d-46627e85dd55.jpg', '大陆', '1');
INSERT INTO `movie` VALUES ('9', '航海王：狂热行动', 'ONE PIECE STAMPEDE', '田中真弓:蒙奇·D·路飞（配音）,冈村明美:娜美（配音）,中井和哉:罗罗诺亚·索隆（配音）,山口胜平:乌索普（配音）,平田广明:香吉士（配音）', '大塚隆史', '“航海王系列”第14部剧场版，也是《航海王》动画二十周年纪念之作。 以超新星为代表的众多航海家纷纷现身世界最大的航海家庆典——航海世博会。草帽航海团也收到了主办者费斯塔的邀请函，搭乘万里阳光号前往。原以为航海家们的狂热世博会只是为争夺“航海王罗杰留下的宝藏”，就在神秘宝藏争夺战如火如荼之际，阻挡在路飞等人面前的可怕威胁道格拉斯·巴雷特突然现身！暗藏阴谋的敌我混战一触即发……', '101分钟', '动画 冒险', '5.0', null, '1', '2019-10-08 00:00:00', '/file/upload/head/c61bbee2-75ee-4bc2-b4c9-d33156dc36e8.jpg', '日本', '1');
INSERT INTO `movie` VALUES ('10', 'aa', 'a', 'a:a', 'a', 'a', 'a', '传记', '6.0', null, '1', '2100-01-10 00:00:00', '/file/upload/head/3c0a744c-66fa-48fd-9b87-ce170cf7142c.jpg', '大陆', '1');
INSERT INTO `movie` VALUES ('11', '勇敢者游戏：决战丛林', 'Jumanji: Welcome to the Jungle', '道恩·强森:斯宾塞,凯文·哈特:弗里奇,杰克·布莱克:贝瑟尼,凯伦·吉兰:玛莎,尼克·乔纳斯:亚历克斯', '杰克·卡斯丹', '本片讲述了四名性格迥异的高中生意外穿越到险象环生的勇敢者游戏中，变身成为与自身性格外貌截然不同的游戏角色：瘦小“弱鸡”斯宾塞变成了大块头冒险家(道恩·强森 饰)，高大威猛的运动员福基变成了身材迷你的龟速行李手 (凯文· 哈特 饰)，万人迷校花贝瑟尼变成一个中年发福教授(杰克·布莱克 饰)，自闭内向的学霸玛莎变成了魅力十足的热辣女打手(凯伦·吉兰 饰)。四人惊魂 未定，就发现更大的危机已经来临：在各类猛兽的恐怖袭击和邪恶势力的夺命追逐中，他们必须要利用自身技能，并肩作战，才能赢得游戏，而这也是他们重返现实的唯一途径⋯⋯', '119分钟', '动作 冒险', '4.0', null, '2', '2018-01-12 00:00:00', '/file/upload/head/716578ec-308e-41b9-a581-e7613f7c548f.jpg', '美国', '1');
INSERT INTO `movie` VALUES ('13', 'a', 'a', 'a:a', 'a', 'a', 'a', 'a', '0.0', null, '0', '2020-01-02 00:00:00', '/file/upload/head/a905a2dc-af5c-4543-9f78-806cb2cad8cd.jpg', 'a', '1');
INSERT INTO `movie` VALUES ('14', 'a', 'a', 'a:a', 'a', 'a', 'a', 'a', '0.0', null, '0', '2020-01-02 00:00:00', '/file/upload/head/fc25b7bb-b95e-4246-8e24-422b1c302937.jpg', 'a', '1');
INSERT INTO `movie` VALUES ('16', '2', '2', '2:2', '2', '2', '2', '2', '3.0', null, '1', '2020-01-04 00:00:00', '/file/upload/head/81e455a3-21bb-488f-8ef3-13843751172c.jpg', '2', '1');
INSERT INTO `movie` VALUES ('17', '3', '3', '3:3', '3', '3', '3', '3', '1.0', null, '1', '2020-01-04 00:00:00', '/file/upload/head/cbac3225-e231-4490-8ad7-360eaed02b75.jpg', '3', '1');
INSERT INTO `movie` VALUES ('18', '4', '4', '4:4', '4', '4', '4', '4', '0.0', null, '0', '2020-01-04 00:00:00', '/file/upload/head/0ba3641a-94af-4431-a04f-95cf6c0bf019.jpg', '4', '1');
INSERT INTO `movie` VALUES ('20', '13', '13', '13:1', '13', '3', '13', '13', '0.0', null, '0', '2015-08-08 00:00:00', '/file/upload/head/dd76493e-4f8b-4636-8e7f-a275aef0e95a.jpg', '31', '1');
INSERT INTO `movie` VALUES ('21', '红海行动', 'Operation Red Sea', '张译:杨锐,黄景瑜:顾顺,海清:夏楠,杜江:徐宏,蒋璐霞:佟莉', '林超贤', '本片主要讲述了索马里海域外，中国商船遭遇劫持，船员全数沦为阶下囚。蛟龙突击队沉着应对，潜入商船进行突袭，成功解救全部人质。返航途中，非洲北部伊维亚共和国发生政变，恐怖组织连同叛军攻入首都，当地华侨面临危险，海军战舰接到上级命令改变航向，前往执行撤侨任务。蛟龙突击队八人，整装待发。时间紧迫，在“撤侨遇袭可反击，相反则必须避免交火，以免引起外交冲突”的大原则下，海军战舰及蛟龙突击队深入伊维亚，在恶劣的环境之下，借助海陆等多种装备，成功转移等候在码头的中国侨民，并在激烈的遭遇战之后，营救了被恐怖分子追击的中国领事馆巴士。然而事情尚未完结，就在掩护华侨撤离之际，蛟龙突击队收到中国人质被恐怖分子劫持的消息。众人深感责任重大，义无反顾地再度展开营救行动。前方路途险恶，蛟龙突击队即将遭遇的，远不止人质营救那么简单,恐怖分子的惊天阴谋即将浮出水面…..', '138分钟', '剧情 动作', '0.0', null, '0', '2018-02-16 00:00:00', '/file/upload/head/3ea74b51-9d77-48b5-9bbb-6ea776e2de56.jpg', '大陆', '1');

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `order_id` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `schedule_id` bigint(20) DEFAULT NULL,
  `order_position` varchar(255) DEFAULT NULL,
  `order_state` int(10) DEFAULT NULL,
  `order_price` int(10) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('2020010100010606', '1', '2', '6排6座', '1', '30', '2020-01-01 16:44:06');
INSERT INTO `orderinfo` VALUES ('2020010100010607', '1', '2', '6排7座', '1', '30', '2020-01-01 16:44:06');
INSERT INTO `orderinfo` VALUES ('2020010100010608', '1', '2', '6排8座', '1', '30', '2020-01-01 16:44:06');
INSERT INTO `orderinfo` VALUES ('2020010100010609', '1', '2', '6排9座', '1', '30', '2020-01-01 16:44:06');
INSERT INTO `orderinfo` VALUES ('2020010100010709', '1', '2', '7排9座', '1', '30', '2020-01-01 16:45:15');
INSERT INTO `orderinfo` VALUES ('2020010100010809', '1', '2', '8排9座', '1', '30', '2020-01-01 16:45:15');
INSERT INTO `orderinfo` VALUES ('2020010100010909', '1', '2', '9排9座', '1', '30', '2020-01-01 16:46:22');
INSERT INTO `orderinfo` VALUES ('2020010100011009', '1', '2', '10排9座', '1', '30', '2020-01-01 16:40:58');
INSERT INTO `orderinfo` VALUES ('2020010200010108', '1', '4', '1排8座', '1', '60', '2020-01-02 14:53:18');
INSERT INTO `orderinfo` VALUES ('2020010200010510', '1', '5', '5排10座', '1', '40', '2020-01-02 14:56:18');
INSERT INTO `orderinfo` VALUES ('2020010200010610', '1', '1', '6排10座', '1', '100', '2020-01-02 13:45:17');
INSERT INTO `orderinfo` VALUES ('2020010200010709', '1', '1', '7排9座', '1', '100', '2020-01-02 13:45:17');
INSERT INTO `orderinfo` VALUES ('2020010200010710', '1', '1', '7排10座', '1', '100', '2020-01-02 13:45:17');
INSERT INTO `orderinfo` VALUES ('2020010200010712', '1', '1', '7排12座', '1', '100', '2020-01-02 13:45:17');
INSERT INTO `orderinfo` VALUES ('2020010200010809', '1', '5', '8排9座', '1', '40', '2020-01-02 14:55:48');
INSERT INTO `orderinfo` VALUES ('2020010200010812', '1', '5', '8排12座', '1', '40', '2020-01-02 14:56:05');
INSERT INTO `orderinfo` VALUES ('2020010200010912', '1', '5', '9排12座', '1', '40', '2020-01-02 14:56:05');
INSERT INTO `orderinfo` VALUES ('2020010200011005', '1', '5', '10排5座', '1', '40', '2020-01-02 14:55:48');
INSERT INTO `orderinfo` VALUES ('2020010200011007', '1', '5', '10排7座', '1', '40', '2020-01-02 14:55:48');
INSERT INTO `orderinfo` VALUES ('2020010200011010', '1', '5', '10排10座', '1', '40', '2020-01-02 14:55:48');
INSERT INTO `orderinfo` VALUES ('2020010200090101', '9', '1', '1排1座', '1', '100', '2020-01-02 15:43:33');
INSERT INTO `orderinfo` VALUES ('2020010200090102', '9', '1', '1排2座', '1', '100', '2020-01-02 15:43:33');
INSERT INTO `orderinfo` VALUES ('2020010200090103', '9', '1', '1排3座', '1', '100', '2020-01-02 15:43:33');
INSERT INTO `orderinfo` VALUES ('2020010400010606', '1', '6', '6排6座', '1', '50', '2020-01-04 10:43:09');
INSERT INTO `orderinfo` VALUES ('2020010400010607', '1', '6', '6排7座', '1', '50', '2020-01-04 10:43:08');
INSERT INTO `orderinfo` VALUES ('2020010400010608', '1', '6', '6排8座', '1', '50', '2020-01-04 10:43:08');
INSERT INTO `orderinfo` VALUES ('2020010400010609', '1', '6', '6排9座', '1', '50', '2020-01-04 10:43:08');
INSERT INTO `orderinfo` VALUES ('2020010400010709', '1', '7', '7排9座', '1', '40', '2020-01-04 21:01:03');
INSERT INTO `orderinfo` VALUES ('2020010500010305', '1', '28', '3排5座', '1', '50', '2020-01-05 20:57:19');
INSERT INTO `orderinfo` VALUES ('2020010500010306', '1', '9', '3排6座', '1', '50', '2020-01-05 22:16:54');
INSERT INTO `orderinfo` VALUES ('2020010500010504', '1', '20', '5排4座', '1', '61', '2020-01-05 14:37:29');
INSERT INTO `orderinfo` VALUES ('2020010500010605', '1', '9', '6排5座', '1', '50', '2020-01-05 22:14:46');
INSERT INTO `orderinfo` VALUES ('2020010500090509', '9', '20', '5排9座', '1', '61', '2020-01-05 14:38:43');
INSERT INTO `orderinfo` VALUES ('2020010500090712', '9', '20', '7排12座', '1', '61', '2020-01-05 14:38:43');
INSERT INTO `orderinfo` VALUES ('2020010500090806', '9', '20', '8排6座', '1', '61', '2020-01-05 14:38:43');
INSERT INTO `orderinfo` VALUES ('2020010500150406', '15', '20', '4排6座', '1', '71', '2020-01-05 14:42:12');
INSERT INTO `orderinfo` VALUES ('2020010500150507', '15', '20', '5排7座', '1', '71', '2020-01-05 14:42:13');
INSERT INTO `orderinfo` VALUES ('2020010500150607', '15', '20', '6排7座', '1', '71', '2020-01-05 14:42:13');
INSERT INTO `orderinfo` VALUES ('2020010500160111', '16', '26', '1排11座', '1', '65', '2020-01-05 14:40:18');
INSERT INTO `orderinfo` VALUES ('2020010500160209', '16', '26', '2排9座', '1', '65', '2020-01-05 14:40:07');
INSERT INTO `orderinfo` VALUES ('2020010500160410', '16', '20', '4排10座', '1', '71', '2020-01-05 14:39:56');
INSERT INTO `orderinfo` VALUES ('2020010600010311', '1', '22', '3排11座', '1', '72', '2020-01-06 16:47:25');
INSERT INTO `orderinfo` VALUES ('2020010600010907', '1', '29', '9排7座', '1', '50', '2020-01-06 13:47:16');

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `schedule_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hall_id` bigint(20) DEFAULT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  `schedule_startTime` varchar(255) DEFAULT NULL,
  `schedule_price` int(10) DEFAULT NULL,
  `schedule_remain` int(10) DEFAULT NULL,
  `schedule_state` int(10) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='场次表';

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '6', '2', '2019-12-30 09:00', '100', '3', '1');
INSERT INTO `schedule` VALUES ('2', '3', '4', '2020-01-02 10:00', '30', '35', '1');
INSERT INTO `schedule` VALUES ('3', '5', '2', '2020-01-03 15:00', '50', '0', '1');
INSERT INTO `schedule` VALUES ('4', '6', '2', '2020-01-02 00:00', '60', '9', '1');
INSERT INTO `schedule` VALUES ('5', '7', '2', '2020-01-03 15:00', '40', '92', '1');
INSERT INTO `schedule` VALUES ('6', '2', '2', '2020-01-04 12:00', '60', '96', '1');
INSERT INTO `schedule` VALUES ('7', '2', '2', '2020-01-05 00:00', '50', '99', '1');
INSERT INTO `schedule` VALUES ('8', '2', '2', '2020-01-04 20:17', '60', '100', '1');
INSERT INTO `schedule` VALUES ('9', '2', '2', '2020-01-06 00:00', '60', '97', '1');
INSERT INTO `schedule` VALUES ('10', '3', '2', '2020-01-03 00:00', '30', '50', '1');
INSERT INTO `schedule` VALUES ('11', '7', '2', '2020-01-05 00:00', '40', '100', '1');
INSERT INTO `schedule` VALUES ('12', '6', '2', '2020-01-18 00:00', '120', '10', '1');
INSERT INTO `schedule` VALUES ('13', '3', '4', '2020-01-05 00:00', '50', '50', '1');
INSERT INTO `schedule` VALUES ('14', '3', '6', '2020-01-04 00:00', '67', '50', '0');
INSERT INTO `schedule` VALUES ('15', '2', '6', '2020-01-05 00:00', '67', '100', '0');
INSERT INTO `schedule` VALUES ('16', '3', '2', '2020-01-05 20:17', '60', '50', '0');
INSERT INTO `schedule` VALUES ('17', '7', '2', '2020-01-05 20:17', '40', '100', '0');
INSERT INTO `schedule` VALUES ('18', '3', '2', '2020-01-05 13:17', '20', '50', '0');
INSERT INTO `schedule` VALUES ('19', '6', '2', '2020-01-05 00:00', '70', '10', '1');
INSERT INTO `schedule` VALUES ('20', '2', '2', '2020-01-05 17:00', '71', '92', '1');
INSERT INTO `schedule` VALUES ('21', '3', '2', '2020-01-06 00:00', '81', '50', '1');
INSERT INTO `schedule` VALUES ('22', '6', '2', '2020-01-07 00:00', '82', '9', '1');
INSERT INTO `schedule` VALUES ('24', '5', '2', '2020-01-07 00:00', '59', '0', '1');
INSERT INTO `schedule` VALUES ('25', '2', '2', '2020-01-05 00:00', '65', '100', '0');
INSERT INTO `schedule` VALUES ('26', '2', '2', '2020-01-05 17:43', '65', '98', '1');
INSERT INTO `schedule` VALUES ('27', '2', '2', '2020-01-05 00:00', '40', '100', '1');
INSERT INTO `schedule` VALUES ('28', '7', '2', '2020-01-06 00:00', '60', '99', '0');
INSERT INTO `schedule` VALUES ('29', '3', '2', '2020-01-07 00:00', '60', '49', '1');
INSERT INTO `schedule` VALUES ('30', '6', '2', '2020-01-08 00:00', '6', '10', '0');
INSERT INTO `schedule` VALUES ('31', '2', '2', '2020-01-09 00:00', '80', '100', '1');
INSERT INTO `schedule` VALUES ('32', '3', '2', '2020-01-06 13:58', '50', '50', '1');
INSERT INTO `schedule` VALUES ('33', '7', '2', '2020-01-07 00:00', '60', '100', '1');
INSERT INTO `schedule` VALUES ('34', '10', '2', '2020-01-07 00:00', '70', '50', '1');
INSERT INTO `schedule` VALUES ('35', '13', '2', '2020-01-07 00:00', '80', '50', '1');
INSERT INTO `schedule` VALUES ('36', '16', '2', '2020-01-07 00:00', '77', '50', '1');
INSERT INTO `schedule` VALUES ('37', '20', '2', '2020-01-07 00:00', '55', '50', '1');
INSERT INTO `schedule` VALUES ('38', '3', '2', '2020-01-07 01:00', '30', '50', '1');
INSERT INTO `schedule` VALUES ('39', '4', '2', '2020-01-07 02:00', '33', '100', '1');
INSERT INTO `schedule` VALUES ('40', '5', '2', '2020-01-07 04:00', '50', '50', '1');
INSERT INTO `schedule` VALUES ('41', '6', '2', '2020-01-07 02:00', '30', '10', '1');
INSERT INTO `schedule` VALUES ('42', '6', '2', '2020-01-07 03:00', '34', '10', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_role` int(10) DEFAULT NULL,
  `user_headImg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '823810399@qq.com', '1', '/file/upload/head/c51a29cf-fe73-49d0-924a-cf7be0852d0f.jpg');
INSERT INTO `user` VALUES ('2', 'test', '123456', '2222', '0', null);
INSERT INTO `user` VALUES ('3', 'abc', '123456', 'abc2222', '0', '/file/upload/head/5bf2b66e-97aa-41ed-a1c1-5de685c616fa.jpg');
INSERT INTO `user` VALUES ('5', '1234567', '1234567', '346641214@qq.com', '0', null);
INSERT INTO `user` VALUES ('6', '12345678', '1234567', '346641214@qq.com', '0', null);
INSERT INTO `user` VALUES ('7', '123456789', '1234567', '346641214@qq.com', '0', null);
INSERT INTO `user` VALUES ('8', 'xj123', 'xj123', '346614@qq.com', '0', null);
INSERT INTO `user` VALUES ('9', 'ww', '12345', '314@qq.com', '0', null);
INSERT INTO `user` VALUES ('10', '111', '111', '111', '0', null);
INSERT INTO `user` VALUES ('11', '222', '222', '222', '0', null);
INSERT INTO `user` VALUES ('12', '333', '333', '333', '0', null);
INSERT INTO `user` VALUES ('13', 'jjjj', '123', '123', '0', null);
INSERT INTO `user` VALUES ('14', 'asdfg', '123123', '123@qq.com', '0', null);
INSERT INTO `user` VALUES ('15', 'test2', '123', '123', '0', '/file/upload/head/b790274a-55bd-484a-8433-92ba73dd3dd9.jpg');
INSERT INTO `user` VALUES ('16', 'test3', '123', '123@qq.com', '0', null);
INSERT INTO `user` VALUES ('17', 'testRole', '123456', '123', '0', null);
INSERT INTO `user` VALUES ('18', 'test4', '123', '123', '0', null);
INSERT INTO `user` VALUES ('19', 'test5', '123456', '1234', '0', null);
INSERT INTO `user` VALUES ('20', 'test6', '12345', '123@qq.com', '0', null);
cinemacinema