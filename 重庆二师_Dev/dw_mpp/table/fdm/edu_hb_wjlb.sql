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
DROP TABLE IF EXISTS `edu_hb_wjlb`;
CREATE TABLE `edu_hb_wjlb` (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT= '[违纪类别代码]高等学校学生违纪违法类别的划分';
-- ----------------------------
-- Records of edu_hb_wjlb
-- ----------------------------
INSERT INTO `edu_hb_wjlb` VALUES ('01', '触犯刑法');
INSERT INTO `edu_hb_wjlb` VALUES ('02', '违反治安管理条例');
INSERT INTO `edu_hb_wjlb` VALUES ('03', '学业违纪（考试作弊、旷课）');
INSERT INTO `edu_hb_wjlb` VALUES ('04', '涂改、伪造证件或证明');
INSERT INTO `edu_hb_wjlb` VALUES ('05', '侵犯他人人身权利');
INSERT INTO `edu_hb_wjlb` VALUES ('06', '侵犯公私财物');
INSERT INTO `edu_hb_wjlb` VALUES ('07', '侵犯学校权益');
INSERT INTO `edu_hb_wjlb` VALUES ('08', '危害公共安全');
INSERT INTO `edu_hb_wjlb` VALUES ('09', '扰乱公共场所秩序');
INSERT INTO `edu_hb_wjlb` VALUES ('10', '违反社团管理规定');
INSERT INTO `edu_hb_wjlb` VALUES ('11', '违反课外活动规定');
INSERT INTO `edu_hb_wjlb` VALUES ('12', '违反宿舍管理规定');
INSERT INTO `edu_hb_wjlb` VALUES ('13', '违反网络管理规定');
INSERT INTO `edu_hb_wjlb` VALUES ('99', '其他');
