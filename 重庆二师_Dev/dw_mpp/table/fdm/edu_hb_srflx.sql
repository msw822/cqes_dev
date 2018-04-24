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
DROP TABLE IF EXISTS `edu_hb_srflx`;
CREATE TABLE `edu_hb_srflx` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT ='[受让方类型代码]技术转让受让方的单位类型。适用于中小学校、中等职业学校和高等学校';
-- ----------------------------
-- Records of edu_hb_srflx
-- ----------------------------
INSERT INTO `edu_hb_srflx` VALUES ('1', '国有大中型企业');
INSERT INTO `edu_hb_srflx` VALUES ('2', '国有小型企业');
INSERT INTO `edu_hb_srflx` VALUES ('3', '集体企业');
INSERT INTO `edu_hb_srflx` VALUES ('4', '乡镇企业');
INSERT INTO `edu_hb_srflx` VALUES ('5', '私营企业');
INSERT INTO `edu_hb_srflx` VALUES ('6', '三资企业');
INSERT INTO `edu_hb_srflx` VALUES ('7', '国外（境外）企业');
INSERT INTO `edu_hb_srflx` VALUES ('9', '其他');
