/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/08
#     REVIEWER:
#     REVISION: ---
*/
-- ----------------------------
-- Table structure for edu_hb_dzwjlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dzwjlx;
CREATE TABLE edu_hb_dzwjlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[电子文件类型代码]';

-- ----------------------------
-- Records of edu_hb_dzwjlx
-- ----------------------------
INSERT INTO `edu_hb_dzwjlx` VALUES ('01', '文本');
INSERT INTO `edu_hb_dzwjlx` VALUES ('02', '图像');
INSERT INTO `edu_hb_dzwjlx` VALUES ('03', '图形');
INSERT INTO `edu_hb_dzwjlx` VALUES ('04', '声音');
INSERT INTO `edu_hb_dzwjlx` VALUES ('05', '影像');
INSERT INTO `edu_hb_dzwjlx` VALUES ('06', '超媒体链接');
INSERT INTO `edu_hb_dzwjlx` VALUES ('07', '程序');
INSERT INTO `edu_hb_dzwjlx` VALUES ('08', '数据文件');
INSERT INTO `edu_hb_dzwjlx` VALUES ('09', '动画');
INSERT INTO `edu_hb_dzwjlx` VALUES ('99', '其他');

