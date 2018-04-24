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
DROP TABLE IF exists `edu_hb_ksxs`;
CREATE TABLE `edu_hb_ksxs`(
`DM` VARCHAR(2) NULL ,
`MC` VARCHAR(10) NULL 
) DEFAULT CHARSET=utf8 COMMENT='[考试形式码]本代码规定了课程考试的形式分类，采用顺序码，用一位数字表示.';

-- ----------------------------
-- Records of T_ZXBZ_KSXS
-- ----------------------------
INSERT INTO `edu_hb_ksxs` VALUES ('1', '考试');
INSERT INTO `edu_hb_ksxs` VALUES ('2', '考查');
