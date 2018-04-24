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
DROP TABLE IF EXISTS edu_hb_lzlb;
CREATE TABLE edu_hb_lzlb (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[LZLB 论著类别代码]规定了学术论文、著作等学术成果的类别。第一位表示大类，第二位表示小类。';

-- ----------------------------
-- Records of edu_hb_lzlb
-- ----------------------------
INSERT INTO `edu_hb_lzlb` VALUES ('10', '著作');
INSERT INTO `edu_hb_lzlb` VALUES ('11', '专著');
INSERT INTO `edu_hb_lzlb` VALUES ('12', '编著');
INSERT INTO `edu_hb_lzlb` VALUES ('13', '译著');
INSERT INTO `edu_hb_lzlb` VALUES ('14', '教材');
INSERT INTO `edu_hb_lzlb` VALUES ('15', '科普读物');
INSERT INTO `edu_hb_lzlb` VALUES ('20', '辞典、字典');
INSERT INTO `edu_hb_lzlb` VALUES ('21', '手册');
INSERT INTO `edu_hb_lzlb` VALUES ('30', '图集');
INSERT INTO `edu_hb_lzlb` VALUES ('40', '文艺作品');
INSERT INTO `edu_hb_lzlb` VALUES ('41', '作曲');
INSERT INTO `edu_hb_lzlb` VALUES ('42', '书法');
INSERT INTO `edu_hb_lzlb` VALUES ('43', '绘画');
INSERT INTO `edu_hb_lzlb` VALUES ('44', '摄影');
INSERT INTO `edu_hb_lzlb` VALUES ('45', '工艺美术');
INSERT INTO `edu_hb_lzlb` VALUES ('49', '其他文艺作品');
INSERT INTO `edu_hb_lzlb` VALUES ('50', '报告');
INSERT INTO `edu_hb_lzlb` VALUES ('60', '论文');
INSERT INTO `edu_hb_lzlb` VALUES ('61', '发表论文');
INSERT INTO `edu_hb_lzlb` VALUES ('62', '会议论文');
INSERT INTO `edu_hb_lzlb` VALUES ('70', '教学软件');
INSERT INTO `edu_hb_lzlb` VALUES ('71', '软件');
INSERT INTO `edu_hb_lzlb` VALUES ('80', '技术标准');
INSERT INTO `edu_hb_lzlb` VALUES ('99', '其他');