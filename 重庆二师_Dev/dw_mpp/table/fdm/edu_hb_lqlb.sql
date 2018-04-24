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
DROP TABLE IF EXISTS `edu_hb_lqlb`;
CREATE TABLE `edu_hb_lqlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[录取类别代码]高等学校学生入学的类别';
-- ----------------------------
-- Records of edu_hb_lqlb
-- ----------------------------
INSERT INTO `edu_hb_lqlb` VALUES ('01', '统一招生考试');
INSERT INTO `edu_hb_lqlb` VALUES ('02', '保送（或免试）');
INSERT INTO `edu_hb_lqlb` VALUES ('03', '学生干部保送');
INSERT INTO `edu_hb_lqlb` VALUES ('04', '考试推荐');
INSERT INTO `edu_hb_lqlb` VALUES ('05', '国防定向培养');
INSERT INTO `edu_hb_lqlb` VALUES ('06', '其他定向培养');
INSERT INTO `edu_hb_lqlb` VALUES ('07', '代培');
INSERT INTO `edu_hb_lqlb` VALUES ('08', '第二学位');
INSERT INTO `edu_hb_lqlb` VALUES ('09', '港澳');
INSERT INTO `edu_hb_lqlb` VALUES ('10', '港澳代培');
INSERT INTO `edu_hb_lqlb` VALUES ('11', '台湾');
INSERT INTO `edu_hb_lqlb` VALUES ('12', '内地班');
INSERT INTO `edu_hb_lqlb` VALUES ('13', '民族班');
INSERT INTO `edu_hb_lqlb` VALUES ('14', '体育特招');
INSERT INTO `edu_hb_lqlb` VALUES ('15', '文艺特招');
INSERT INTO `edu_hb_lqlb` VALUES ('16', '预科班');
INSERT INTO `edu_hb_lqlb` VALUES ('17', '恢复入学资格');
INSERT INTO `edu_hb_lqlb` VALUES ('18', '外校转入');
INSERT INTO `edu_hb_lqlb` VALUES ('19', '自主招生');
INSERT INTO `edu_hb_lqlb` VALUES ('20', '国内交换生');
INSERT INTO `edu_hb_lqlb` VALUES ('21', '境外交换生');
INSERT INTO `edu_hb_lqlb` VALUES ('22', '来华留学');
INSERT INTO `edu_hb_lqlb` VALUES ('99', '其他');
