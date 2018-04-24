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
use tmp;
DROP TABLE IF EXISTS TMP.EDU_TMP_SWXX2;
CREATE TABLE
IF NOT EXISTS TMP.EDU_TMP_SWXX2(
  "xh" varchar(50) NOT NULL,
  "login_time" varchar(20) DEFAULT NULL,
  "logout_time" varchar(20) DEFAULT NULL
)DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT='tmp表2';
