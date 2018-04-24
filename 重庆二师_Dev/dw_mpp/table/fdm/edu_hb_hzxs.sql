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
DROP TABLE IF EXISTS edu_hb_hzxs;
CREATE TABLE edu_hb_hzxs (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[HZXS 合作形式代]本代码规定了高等学校科技项目合作方式的分类';

-- ----------------------------
-- Records of edu_hb_hzxs
-- ----------------------------

INSERT INTO `edu_hb_hzxs` VALUES ('1', '与国外合作');
INSERT INTO `edu_hb_hzxs` VALUES ('2', '与国内高校合作');
INSERT INTO `edu_hb_hzxs` VALUES ('3', '与国内研究机构合作');
INSERT INTO `edu_hb_hzxs` VALUES ('4', '与在华外商独资企业合作');
INSERT INTO `edu_hb_hzxs` VALUES ('5', '与国内其他企业合作');
INSERT INTO `edu_hb_hzxs` VALUES ('6', '独立完成');
INSERT INTO `edu_hb_hzxs` VALUES ('9', '其他');
