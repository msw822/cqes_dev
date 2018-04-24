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
use adm;
DROP TABLE IF EXISTS ADM.EDU_ADM_YKT_ZY_DA;
CREATE TABLE
IF NOT EXISTS ADM.EDU_ADM_YKT_ZY_DA (
  "ZYM" varchar(50) DEFAULT NULL COMMENT '专业码',
  "XF_ZYJE" decimal(36,6) DEFAULT NULL COMMENT '专业均消费金额',
  "XFJE_HIGH" decimal(36,6) DEFAULT NULL COMMENT '该专业均消费金额最高值',
  "XFJE_LOW" decimal(36,6) DEFAULT NULL COMMENT '该专业均消费金额最低值'
) DEFAULT CHARSET=utf8 COMMENT '一卡通专业消费表';
