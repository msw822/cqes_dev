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
use FDM;
DROP TABLE IF EXISTS `EDU_HB_SHJJXY`;
CREATE TABLE IF NOT exists "EDU_HB_SHJJXY" (
  "DM" char(2) NOT NULL COMMENT '代码',
  "MC" varchar(60) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[社会经济效益码]本代码代替2002年的DM-SHJJXY《社会经济效益代码》。';

-- ----------------------------
-- Records of EDU_HB_SHJJXY
-- ----------------------------
INSERT INTO `EDU_HB_SHJJXY` VALUES ('01', '陆地、海洋与大气的开发、估价');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('02', '民用宇宙空间');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('03', '农业、林业与渔业的发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('04', '促进工业的发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('05', '能源的生产、储存与分配');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('06', '交通、通讯事业的发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('07', '教育事业的发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('08', '卫生事业的发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('09', '社会发展和社会经济服务');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('10', '环境保护');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('11', '知识的全面发展');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('12', '其他民用目标');
INSERT INTO `EDU_HB_SHJJXY` VALUES ('13', '国防');
