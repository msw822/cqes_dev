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
DROP TABLE IF EXISTS `edu_hb_fwyfpgg`;
CREATE TABLE `edu_hb_fwyfpgg` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(1) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[服务业发票规格代码]高等学校财务管理使用发票的规格分类';
-- ----------------------------
-- Records of edu_hb_fwyfpgg
-- ----------------------------
INSERT INTO `edu_hb_fwyfpgg` VALUES ('1', '卷');
INSERT INTO `edu_hb_fwyfpgg` VALUES ('2', '本');
