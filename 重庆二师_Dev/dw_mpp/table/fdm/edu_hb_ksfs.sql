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
DROP TABLE IF EXISTS `edu_hb_ksfs`;
CREATE TABLE `edu_hb_ksfs` (
"DM" char(1) NOT NULL COMMENT '代码',
"MC" VARCHAR(10) NOT NULL COMMENT '名称',
"SM" VARCHAR(100)  DEFAULT NULL COMMENT '说明'
) DEFAULT CHARSET=utf8 COMMENT='[考试方式码]规定了中小学校、中等职业学校和高等学校的考试方式分类'
;

-- ----------------------------
-- Records of T_ZXBZ_KSXZ
-- ----------------------------
INSERT INTO `edu_hb_ksfs` VALUES ('1', '笔试',null);
INSERT INTO `edu_hb_ksfs` VALUES ('2', '口试', null);
INSERT INTO `edu_hb_ksfs` VALUES ('3', '面试', null);
INSERT INTO `edu_hb_ksfs` VALUES ('4', '操作', '指对某种设备或系统的操作演示，包括文艺或体育专业的演示');
INSERT INTO `edu_hb_ksfs` VALUES ('5', '机考', null);
INSERT INTO `edu_hb_ksfs` VALUES ('6', '大作业', null);
INSERT INTO `edu_hb_ksfs` VALUES ('7', '实验报告', null);
INSERT INTO `edu_hb_ksfs` VALUES ('9', '其他', null);