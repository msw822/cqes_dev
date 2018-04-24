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

DROP TABLE IF EXISTS ADM.EDU_ADM_JYXX_ZY_SUM;
CREATE TABLE IF NOT EXISTS ADM.EDU_ADM_JYXX_ZY_SUM (
  ZYM VARCHAR (50) COMMENT '专业码',
  ZYM_MC VARCHAR (200) COMMENT '专业名称',
  BYNF VARCHAR(10) COMMENT '毕业年份',
  JYLX VARCHAR(10) COMMENT '就业类型(留学/升学/参加工作/未就业)',
  JYRS INT COMMENT '就业人数,对应JYLX的人数',
  ZYJYL DECIMAL(10, 2) COMMENT '专业就业率(JYRS/专业总人数)',
  ZYXZ DECIMAL(10, 2) COMMENT '就业薪资'
) DEFAULT CHARSET=utf8 COMMENT='专业就业信息汇总表';