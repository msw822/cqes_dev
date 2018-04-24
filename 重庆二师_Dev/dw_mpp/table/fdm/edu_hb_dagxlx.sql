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
-- Table structure for edu_hb_dagxlx
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_dagxlx;
CREATE TABLE edu_hb_dagxlx (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[档案关系类型代码]规定档案文件管理的关系类型。';

-- ----------------------------
-- Records of edu_hb_dagxlx
-- ----------------------------
INSERT INTO `edu_hb_dagxlx` VALUES ('01', '文件—文件');
INSERT INTO `edu_hb_dagxlx` VALUES ('02', '文件—案卷');
INSERT INTO `edu_hb_dagxlx` VALUES ('03', '案卷—文件');
INSERT INTO `edu_hb_dagxlx` VALUES ('04', '案卷—案卷');
INSERT INTO `edu_hb_dagxlx` VALUES ('05', '文件—单位');
INSERT INTO `edu_hb_dagxlx` VALUES ('06', '文件—内设机构');
INSERT INTO `edu_hb_dagxlx` VALUES ('07', '文件—个人');
INSERT INTO `edu_hb_dagxlx` VALUES ('08', '案卷—单位');
INSERT INTO `edu_hb_dagxlx` VALUES ('09', '案卷—内设机构');
INSERT INTO `edu_hb_dagxlx` VALUES ('10', '案卷—个人');
INSERT INTO `edu_hb_dagxlx` VALUES ('11', '文档—单位');
INSERT INTO `edu_hb_dagxlx` VALUES ('12', '文档—内设机构');
INSERT INTO `edu_hb_dagxlx` VALUES ('13', '文档—个人');
INSERT INTO `edu_hb_dagxlx` VALUES ('14', '文件—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('15', '案卷—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('16', '文档—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('17', '单位—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('18', '内设机构—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('19', '个人—业务');
INSERT INTO `edu_hb_dagxlx` VALUES ('20', '文档—文档');
INSERT INTO `edu_hb_dagxlx` VALUES ('21', '文档—文件');
INSERT INTO `edu_hb_dagxlx` VALUES ('22', '文件—文档');
INSERT INTO `edu_hb_dagxlx` VALUES ('23', '个人—内设机构');
INSERT INTO `edu_hb_dagxlx` VALUES ('24', '内设机构—单位');
INSERT INTO `edu_hb_dagxlx` VALUES ('25', '个人—单位');
INSERT INTO `edu_hb_dagxlx` VALUES ('26', '业务—文件—机构人员');
INSERT INTO `edu_hb_dagxlx` VALUES ('27', '业务—案卷—机构人员');
INSERT INTO `edu_hb_dagxlx` VALUES ('28', '业务—文档—机构人员');
