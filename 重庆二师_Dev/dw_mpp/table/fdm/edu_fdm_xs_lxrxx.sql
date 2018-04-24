/*
#  DESCRIPTION: 联系人信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_LXRXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_LXRXX (
  `XH` VARCHAR(20) NOT NULL COMMENT '学号',
  `JTGXM`	  varchar(10) COMMENT'关系码,见[edu_hb_jtgx]',
  `LXRXM` varchar(36) COMMENT '联系人姓名',
  `YZBM`  varchar(10) COMMENT '邮政编码',
  `TXDZ`  varchar(100) COMMENT	'通讯地址,指包括省(自治区、直辖市)/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址',
  `DH`    varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `YDDH`  varchar(30) COMMENT	'移动电话',
  `CZDH`  varchar(30) COMMENT '传真电话',
  `DZXX`  varchar(40) COMMENT	'电子信箱,电子邮件地址', 
  `WLDZ`  varchar(60) COMMENT '网络地址,如主页、博客、微博网址',
  `JSTXH` varchar(40) COMMENT '即时通讯号,如MSN/QQ 等号码'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8  COMMENT = '[联系人信息表]关系关系基础表,全量更新';
