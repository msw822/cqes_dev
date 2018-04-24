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
DROP TABLE IF EXISTS `edu_hb_jldj`;
CREATE TABLE IF NOT exists "edu_hb_jldj" (
  "DM" char(1) NOT NULL COMMENT '代码',
  "MC" varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[奖励等级码]规定了奖励等级的分类。采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_jldj
-- ----------------------------
INSERT INTO `edu_hb_jldj` VALUES ('1', '特等');
INSERT INTO `edu_hb_jldj` VALUES ('2', '一等');
INSERT INTO `edu_hb_jldj` VALUES ('3', '二等');
INSERT INTO `edu_hb_jldj` VALUES ('4', '三等');
INSERT INTO `edu_hb_jldj` VALUES ('5', '四等');
INSERT INTO `edu_hb_jldj` VALUES ('6', '未评等级');
INSERT INTO `edu_hb_jldj` VALUES ('9', '其他');