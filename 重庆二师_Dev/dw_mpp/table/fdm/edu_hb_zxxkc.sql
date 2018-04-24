/*
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wu.yabing@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/07
#     REVIEWER:
#     REVISION: ---
*/

-- ----------------------------
-- Table structure for edu_hb_zxxkc
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_zxxkc;
CREATE TABLE edu_hb_zxxkc (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL,
  `SYXX` varchar(60) DEFAULT NULL
)  DEFAULT CHARSET=utf8 COMMENT='[中小学课程代码]规定中小学校开设的课程。';

-- ----------------------------
-- Records of edu_hb_zxxkc
-- ----------------------------
INSERT INTO `edu_hb_zxxkc` VALUES ('11', '品德与生活（社会）', '小学');
INSERT INTO `edu_hb_zxxkc` VALUES ('12', '思想品德（政治）', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('13', '语文', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('14', '数学', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('15', '科学', '小学、初中');
INSERT INTO `edu_hb_zxxkc` VALUES ('16', '物理', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('17', '化学', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('18', '生物', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('19', '历史与社会', '初中');
INSERT INTO `edu_hb_zxxkc` VALUES ('20', '地理', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('21', '历史', '初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('22', '体育与健康', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('23', '艺术', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('24', '音乐', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('25', '美术', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('26', '信息技术', '普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('27', '通用技术', '普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('40', '外语', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('41', '英语', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('42', '日语', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('43', '俄语', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('49', '其他外国语', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('60', '综合实践活动', '小学、初中、普通高中');
INSERT INTO `edu_hb_zxxkc` VALUES ('61', '信息技术', '小学、初中');
INSERT INTO `edu_hb_zxxkc` VALUES ('62', '劳动与技术', '小学、初中');
