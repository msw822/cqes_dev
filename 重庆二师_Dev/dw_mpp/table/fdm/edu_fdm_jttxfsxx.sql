/*
#  DESCRIPTION: 家庭通讯方式信息表
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
DROP TABLE IF EXISTS FDM.EDU_FDM_XS_JTTXFSXX;
CREATE TABLE
IF NOT EXISTS FDM.EDU_FDM_XS_JTTXFSXX (
  `XH` VARCHAR(20) NOT NULL COMMENT '学号',
  `JTZZ`	VARCHAR(180) DEFAULT NULL  COMMENT'家庭住址,指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址',
  `JTYZBM`	VARCHAR(10) COMMENT '家庭邮政编码',
  `JTDH`	VARCHAR(30) COMMENT '家庭电话',
  `JTDZXX`	VARCHAR(40) COMMENT '家庭电子信箱',
  `XZZ` VARCHAR(180)	COMMENT '现住址',
  `HKSZD`	VARCHAR(10) COMMENT '户口所在地,见中华人民共和国行政区划代码表[edu_hb_xzqh]',
  `HKLBM`	tinyint(3) COMMENT '见户口类别码,见表[edu_hb_hkxz]'
)DISTRIBUTED BY('XH') DEFAULT CHARSET=utf8 COMMENT = '[家庭通讯方式信息表]关于家庭方面的联系信息';
