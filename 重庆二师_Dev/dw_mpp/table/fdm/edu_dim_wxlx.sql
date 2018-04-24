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
DROP TABLE IF EXISTS edu_dim_wxlx;
CREATE TABLE edu_dim_wxlx (
  `DM` char(1) NOT NULL COMMENT '序号',
  `MC` char(4) NOT NULL COMMENT '名称',
  `JC` char(2) NOT NULL COMMENT '简称',
  `SZM` char(2) NOT NULL COMMENT '双子码',
  `DZM` char(1) NOT NULL COMMENT '单子码'
)DEFAULT CHARSET=utf8 COMMENT='[文献类型代码]本代码引自GB/T 3469-1983。';

-- ----------------------------
-- Records of edu_dim_wxlx
-- ----------------------------
INSERT INTO `edu_dim_wxlx` VALUES ('1', '专著','著','ZZ','M');

