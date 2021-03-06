/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/

DROP TABLE IF EXISTS FDM.EDU_FDM_SW_BEHAVIOR;
CREATE TABLE IF NOT EXISTS FDM.EDU_FDM_SW_BEHAVIOR (
  USER_ID VARCHAR(50) NOT NULL COMMENT '用户ID',
  USER_NAME VARCHAR(100) COMMENT '用户名',
  SERVICE VARCHAR(100) COMMENT '服务',
  APP VARCHAR(100) COMMENT '应用',
  TIME_LENGTH INT COMMENT '停留时长',
  RECORD_DATE VARCHAR(20) COMMENT '记录时间'
) DEFAULT CHARSET=utf8 COMMENT='[EDU_FDM_SW_BEHAVIOR]上网行为表';