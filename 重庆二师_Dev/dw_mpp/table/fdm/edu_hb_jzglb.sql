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
DROP TABLE IF EXISTS edu_hb_jzglb;
CREATE TABLE edu_hb_jzglb (
  `DM` char(2) DEFAULT NULL,
  `MC` varchar(40) DEFAULT NULL,
  `SM` VARCHAR(100) DEFAULT NULL
)DEFAULT CHARSET=utf8 COMMENT='[教职工类别]规定了高等学校、中等职业学校和中小学校的教职工类别,第一位表示大类，第二位表示小类。';

-- ----------------------------
-- Records of edu_hb_jzglb
-- ----------------------------
INSERT INTO `edu_hb_jzglb` VALUES ('10', '校本部教职工',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('11', '专任教师',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('12', '教辅人员',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('13', '行政人员',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('14', '工勤人员',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('19', '其他校本部教职工',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('20', '科研机构人员','仅用于高等学校');
INSERT INTO `edu_hb_jzglb` VALUES ('30', '校办企业职工/校办工厂、农（林）场职工',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('40', '其他附设机构人员',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('50', '50',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('51', '来自高校以外科研、事业单位',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('52', '来自校外企业',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('53', '国外聘请',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('54', '来自其他高校',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('55', '代课教师','仅中小学适用');
INSERT INTO `edu_hb_jzglb` VALUES ('56', '兼任教师','仅中小学适用');
INSERT INTO `edu_hb_jzglb` VALUES ('59', '其他兼任（职）教师',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('60', '其他人员',NULL);
INSERT INTO `edu_hb_jzglb` VALUES ('61', '附属中小学幼儿园教职工','仅用于高等学校');
INSERT INTO `edu_hb_jzglb` VALUES ('62', '集体所有制人员','仅用于高等学校');
INSERT INTO `edu_hb_jzglb` VALUES ('99', '其他教职工',NULL);