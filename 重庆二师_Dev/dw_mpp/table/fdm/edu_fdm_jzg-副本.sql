/*
#  DESCRIPTION: 教职工基本信息
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: li.zhanlei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/29
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use fdm;
DROP TABLE IF EXISTS `EDU_FDM_JZG`;
CREATE TABLE IF NOT EXISTS `EDU_FDM_JZG` (
  `GH` varchar(100) NOT NULL COMMENT '工号',
  `DWH` varchar(64)  COMMENT '单位号',
  `XM` varchar(100) NOT NULL COMMENT '姓名',
  `YWXM` varchar(100) DEFAULT NULL COMMENT '英文姓名',
  `XMPY` varchar(100) DEFAULT NULL COMMENT '姓名拼音',
  `CYM` varchar(100) DEFAULT NULL COMMENT '曾用名',
  `XBM` char(1) DEFAULT NULL COMMENT ' 性别码，见[edu_hb_xb]',
  `CSRQ` varchar(10) DEFAULT NULL COMMENT '出生日期',
  `CSDM` varchar(100) DEFAULT NULL COMMENT '出生地码,见[edu_hb_xzqh]',
  `JGM` varchar(100) DEFAULT NULL COMMENT '籍贯码,见[edu_hb_xzqh]',
  `MZM` char(5) DEFAULT NULL COMMENT '民族码,见[edu_hb_mz]',
  `GJDQM` char(2) DEFAULT NULL COMMENT '国籍/地区,见[edu_hb_gjdq]',
  `SFZJLXM` char(3) DEFAULT NULL COMMENT '身份证件类型,见[edu_hb_sfzjlx]',
  `SFZJH` varchar(20) DEFAULT NULL COMMENT '身份证件号',
  `HYZTM` char(2) DEFAULT NULL COMMENT '婚姻状况码，见[edu_hb_hyzk]',
  `GATQWM` varchar(100) DEFAULT NULL COMMENT '港澳台侨外码，见[edu_hb_gatqw]',
  `ZZMMM` char(2) DEFAULT NULL COMMENT '政治面貌码,见[edu_hb_zzmm]',
  `JKZKM` char(2) DEFAULT NULL COMMENT '健康状况码，见[edu_hb_jkzk]',
  `XYZJM` char(2) DEFAULT NULL COMMENT '信仰宗教码，见[edu_hb_xyzj]',
  `XXM` char(1) DEFAULT NULL COMMENT '血型码,见[edu_hb_xx]',
  `ZP` varchar(255) DEFAULT NULL COMMENT '照片',
  `SFZJYXQ` VARCHAR(20)  COMMENT '身份证件有效期',
  `XQH` varchar(100) DEFAULT NULL COMMENT '校区号,见[edu_dim_xq]',
  `ZGXLM` varchar(30)  COMMENT '最高学历码,见[edu_hb_xl]',
  `WHCDM` varchar(30)  COMMENT '文化程度码 指本人实际具有的文化水平,见[edu_hb_xl]',
  `CJGZNY` varchar(30) DEFAULT NULL COMMENT '参加工作年月JY/T 1002 JCTB010202',
  `LXRQ` VARCHAR(8) DEFAULT NULL COMMENT '来校日期,来校工作的实际报到日期，以人事部门记载为准',
  `QXRQ` VARCHAR(8) DEFAULT NULL COMMENT 'JY/T 1002JCTB010203 起薪日期,人事部门正式开始计算薪水的日期',
  `CJNY` varchar(30) DEFAULT NULL COMMENT 'JY/T 1002 JCTB010202 从教年月,指本人开始从事教育工作的年月',
  `BZLBM` char(2) DEFAULT NULL COMMENT 'BZLB 编制类别代码，见[edu_hb_bzlb]',
  `JZGLBM` char(2) DEFAULT NULL COMMENT 'JZGLB教职工类别代码,见[edu_hb_jzglb]',
  `RKZKM` char(2) DEFAULT NULL COMMENT '任课状况代码,见[edu_hb_rkzk]',
  `DABH` varchar(10) DEFAULT NULL COMMENT '档案编号',
  `DAWB` varchar(255) DEFAULT '' COMMENT '档案文本',
  `DQZTM` char(2) DEFAULT NULL COMMENT '当前状态码 JY/T 1001 JZGDQZT教职工当前状态代码 两位代码的第一位 0 表示不在职，1 表示在职',
  `TC` varchar(100) DEFAULT NULL COMMENT '特长',
  `XKLBM` char(2) DEFAULT NULL COMMENT '学科类别码,学位授予和人才培养学科目录,取其前2位,见[edu_hb_xkml]',
  `YJXKM` char(4) DEFAULT NULL COMMENT '一级学科码,学位授予和人才培养学科目录,取其前4 位代码,见[edu_hb_xklb]',
  `EJXKM` char(6) DEFAULT NULL COMMENT '二级学科码,学位授予和人才培养学科目录,见[edu_hb_xklb]',
  `YJFX` varchar(100) DEFAULT NULL COMMENT '研究方向,从事研究方向的名称',
  `ZC` varchar(20) DEFAULT NULL COMMENT '职称'
) DEFAULT CHARSET=utf8 COMMENT='[教职工基本信息]关于教师信息的基础表';