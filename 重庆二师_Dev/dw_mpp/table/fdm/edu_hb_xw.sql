/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_xw;
CREATE TABLE edu_hb_xw (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[中华人民共和国学位代码]本代码引自GB/T 6864-2003.';

-- ----------------------------
-- Records of edu_hb_xw
-- ----------------------------
INSERT INTO `edu_hb_xw` VALUES ('1', '名誉博士');
INSERT INTO `edu_hb_xw` VALUES ('2', '博士');
INSERT INTO `edu_hb_xw` VALUES ('201', '哲学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('202', '经济学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('203', '法学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('204', '教育学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('205', '文学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('206', '历史学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('207', '理学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('208', '工学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('209', '农学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('210', '医学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('211', '军事学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('212', '管理博士学位');
INSERT INTO `edu_hb_xw` VALUES ('245', '临床医学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('248', '兽医博士学位');
INSERT INTO `edu_hb_xw` VALUES ('250', '口腔医学博士学位');
INSERT INTO `edu_hb_xw` VALUES ('3', '硕士');
INSERT INTO `edu_hb_xw` VALUES ('301', '哲学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('302', '经济学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('303', '法学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('304', '教育学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('305', '文学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('306', '历史学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('307', '理学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('308', '工学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('309', '农学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('310', '医学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('311', '军事学硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('312', '管理硕士学位');
INSERT INTO `edu_hb_xw` VALUES ('341', '法律硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('342', '教育硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('343', '工程硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('344', '建筑学硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('345', '临床学硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('346', '工商管理硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('347', '农业推广硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('348', '兽医硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('349', '公共管理硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('350', '口腔医学硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('351', '公共卫生硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('352', '军事硕士专业学位');
INSERT INTO `edu_hb_xw` VALUES ('4', '学士');
INSERT INTO `edu_hb_xw` VALUES ('401', '哲学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('402', '经济学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('403', '法学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('404', '教育学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('405', '文学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('406', '历史学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('407', '理学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('408', '工学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('409', '农学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('410', '医学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('411', '军事学学士学位');
INSERT INTO `edu_hb_xw` VALUES ('412', '管理学士学位');
INSERT INTO `edu_hb_xw` VALUES ('444', '建筑学学士专业学位');