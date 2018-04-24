/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: song.shengjie@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/
set names utf8;
use FDM;
DROP TABLE IF EXISTS `edu_hb_yzblxw`;
CREATE TABLE `edu_hb_yzblxw` (
  `DM` char(1) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[严重不良行为代码]依据《中华人民共和国预防未成年人犯罪法》规定了未成年人严重不良行为的种类';
-- ----------------------------
-- Records of edu_hb_yzblxw
-- ----------------------------
INSERT INTO `edu_hb_yzblxw` VALUES ('1', '纠集他人结伙滋事，扰乱治安');
INSERT INTO `edu_hb_yzblxw` VALUES ('2', '携带管制刀具，屡教不改');
INSERT INTO `edu_hb_yzblxw` VALUES ('3', '多次拦截殴打他人或者强行索要他人财物');
INSERT INTO `edu_hb_yzblxw` VALUES ('4', '传播淫秽的读物或者音像制品等');
INSERT INTO `edu_hb_yzblxw` VALUES ('5', '进行淫乱或者色情、卖淫活动');
INSERT INTO `edu_hb_yzblxw` VALUES ('6', '多次偷窃');
INSERT INTO `edu_hb_yzblxw` VALUES ('7', '参与赌博，屡教不改');
INSERT INTO `edu_hb_yzblxw` VALUES ('8', '吸食、注射毒品');
INSERT INTO `edu_hb_yzblxw` VALUES ('9', '其他严重危害社会的行为');
