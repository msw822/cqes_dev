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
#      CREATED: 2017/06/29
#     REVIEWER:--
#     REVISION: ---
*/
use gdm;
DROP TABLE IF EXISTS edu_gdm_ky_detail_sum;
CREATE TABLE IF NOT EXISTS "edu_gdm_ky_detail_sum" (
    `DWH` varchar(100) DEFAULT NULL COMMENT '单位号',
    `DWMC` varchar(150) DEFAULT NULL COMMENT '单位名称',
	`KY_BH` varchar(64) DEFAULT NULL COMMENT '各自编号',
	`KY_MC` varchar(64) DEFAULT NULL COMMENT '项目/专利/著作/成果 名称',
    `LY_LX` varchar(50) NOT NULL  COMMENT '(各科研自己的)类型',
    `KY_LB` varchar(50) NOT NULL  COMMENT '科研类型:项目、专利、著作',
    `HJMC` varchar(1000) COMMENT '获奖名称',
    `KY_DJ` varchar(200) COMMENT '级别',
	`KY_ZZ` varchar(200) COMMENT '作者',
	`KY_RQ` varchar(8) COMMENT '(各科研自己的)日期'
) DEFAULT CHARSET=utf8 COMMENT='各科研-汇总表';