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
use fdm;
DROP TABLE IF EXISTS edu_hb_gatqw;
CREATE TABLE edu_hb_gatqw (
  `DM` CHAR(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称',
  `SM` varchar(60) DEFAULT NULL COMMENT '说明'
)DEFAULT CHARSET=utf8 COMMENT='[港澳台侨外码表]以此为准';

-- ----------------------------
-- Records of edu_hb_gatqw
-- ----------------------------
INSERT INTO `edu_hb_gatqw` VALUES ('01', '香港同胞',NULL);
INSERT INTO `edu_hb_gatqw` VALUES ('02', '香港同胞亲属','亲属指父母、子女、兄弟姐妹');
INSERT INTO `edu_hb_gatqw` VALUES ('03', '澳门同胞',NULL);
INSERT INTO `edu_hb_gatqw` VALUES ('04', '澳门同胞亲属','亲属：父母、子女、兄弟姐妹');
INSERT INTO `edu_hb_gatqw` VALUES ('05', '台湾同胞',NULL);
INSERT INTO `edu_hb_gatqw` VALUES ('06', '台湾同胞亲属','亲属：父母、子女、兄弟姐妹');
INSERT INTO `edu_hb_gatqw` VALUES ('11', '华侨','长期在海外居住生活、未加入外国国籍的中国人');
INSERT INTO `edu_hb_gatqw` VALUES ('12', '侨眷','华侨在国内配偶、子女');
INSERT INTO `edu_hb_gatqw` VALUES ('13', '归侨','归国华侨');
INSERT INTO `edu_hb_gatqw` VALUES ('14', '归侨子女',NULL);
INSERT INTO `edu_hb_gatqw` VALUES ('21', '归国留学人员','从国外留学归国工作的中国人');
INSERT INTO `edu_hb_gatqw` VALUES ('31', '非华裔中国人','加入中国籍的非中国血统人士');
INSERT INTO `edu_hb_gatqw` VALUES ('41', '外籍华裔人','加入外国籍的中国血统人士');
INSERT INTO `edu_hb_gatqw` VALUES ('51', '外国人','非华裔外国人');
INSERT INTO `edu_hb_gatqw` VALUES ('99', '其他',NULL);