/*
#  DESCRIPTION: 校区信息表
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
DROP TABLE IF EXISTS FDM.EDU_DIM_XQ;
CREATE TABLE
IF NOT EXISTS FDM.EDU_DIM_XQ(
 `XQH`      VARCHAR(2) NOT NULL COMMENT '校区号,学校自编',
 `XQMC`	    VARCHAR(30) COMMENT '校区名称',
 `XQDZ`     VARCHAR(180) COMMENT '校区地址指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址',
 `XQYZBM`	VARCHAR(6) COMMENT '校区邮政编码',
 `XQLXDH`	VARCHAR(30) COMMENT '校区联系电话',
 `XQCZDH`	VARCHAR(30) COMMENT '校区传真电话',
 `XQFZRH`	VARCHAR(20) COMMENT'校区负责人号,学号或工号' 
)DEFAULT CHARSET=utf8 COMMENT = '[校区信息表]关于校区的维度表';