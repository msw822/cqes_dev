/*
#  DESCRIPTION: 计算 每个学生的总学分，总学时，平均分 adm 层
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use adm;
DROP TABLE IF EXISTS adm.edu_adm_kc_cj_sum_da;
CREATE TABLE IF NOT EXISTS adm.edu_adm_kc_cj_sum_da (
  `XH` varchar(20) NOT NULL COMMENT '学号',
  `KC_ZKS` varchar(256) COMMENT '总课程数',
  `KC_ZXS` decimal(5,1) DEFAULT NULL COMMENT '总学时',
  `KC_ZXF` decimal(5,1) DEFAULT NULL COMMENT '总学分',
  `KC_PJCJ` decimal(5,2) COMMENT '课程平均分',
  `ZH_KCH` varchar(256) COMMENT '最好成绩课程号'
) DEFAULT CHARSET=utf8 COMMENT='[课程成绩记录]课程模型，每日全量更新'; 