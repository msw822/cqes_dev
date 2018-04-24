/*
#  DESCRIPTION: 科研-成果奖人员
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
use fdm;
DROP TABLE IF EXISTS `edu_fdm_ky_cgj_ry`;
CREATE TABLE `edu_fdm_ky_cgj_ry` (
  `RYH` varchar(100) NOT NULL COMMENT '人员号,参与项目人员号（教工填写工号，学生填写学号）',
  `XM` varchar(100) NOT NULL COMMENT '姓名',
  `XB` char(2) DEFAULT NULL COMMENT '性别',
  `ZC` varchar(20) DEFAULT NULL COMMENT '职称',
  `DWH` varchar(100) DEFAULT NULL COMMENT '单位号,见[edu_dim_dw]',
  `DWMC` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `GZL` DECIMAL(6,2) DEFAULT NULL COMMENT '工作量,个人参与项目的工作量比例，单位：％',
  `MNGZYS` int(4) DEFAULT NULL COMMENT '每年工作月数,按折合的全时人月数计算，参照国家自然科学基金的工作量计算方式',
  `JSM` char(3) DEFAULT NULL COMMENT '角色码,见[edu_hb_js]',
  `RYLXM` varchar(64) DEFAULT NULL COMMENT '人员类型码,自编',
  `RYLXMC` varchar(64) DEFAULT NULL COMMENT '人员类型:学生,校内老师,校外老师',
  `SMSX` varchar(20) DEFAULT NULL COMMENT '署名顺序',
  `XLM` varchar(64) DEFAULT NULL COMMENT '学历码,见[edu_hb_xl]',
  `KYBH` varchar(40) DEFAULT NULL COMMENT '专利成果/项目编号',
  `CREATED_TIME` varchar(20) DEFAULT NULL  COMMENT '创建时间',
  `MODIFIED_time` varchar(20) DEFAULT NULL COMMENT '修改时间或处理时间'
)DEFAULT CHARSET=utf8 COMMENT='[科研-成果奖人员]人员基础表,全量更新';