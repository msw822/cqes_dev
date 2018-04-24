/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: song.shengjie@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_hb_jzgdqzt`;
CREATE TABLE `edu_hb_jzgdqzt` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(5) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[教职工当前状态代码]';
-- ----------------------------
-- Records of edu_hb_jzgdqzt
-- ----------------------------
INSERT INTO `edu_hb_jzgdqzt` VALUES ('01', '退休');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('02', '离休');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('03', '死亡');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('04', '返聘');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('05', '调出');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('06', '辞职');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('07', '离职');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('08', '开除');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('09', '下落不明');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('11', '在职');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('12', '延聘');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('13', '待退休');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('14', '长病假');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('15', '因公出国');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('16', '停薪留职');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('17', '待岗');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('99', '其他');
INSERT INTO `edu_hb_jzgdqzt` VALUES ('', '');
