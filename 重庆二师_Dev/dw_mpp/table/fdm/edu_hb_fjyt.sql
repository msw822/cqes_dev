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
-- Table structure for edu_hb_fjyt
-- ----------------------------
set names utf8;
use fdm;
DROP TABLE IF EXISTS edu_hb_fjyt;
CREATE TABLE edu_hb_fjyt (
  `DM` char(3) DEFAULT NULL,
  `MC` varchar(60) DEFAULT NULL,
  `SYXX` varchar(60) DEFAULT NULL
) DEFAULT CHARSET=utf8 COMMENT='[房间用途代码]规定中小学校、中等职业学校、高等学校和幼儿园对房间（校舍）用途的分类。';

-- ----------------------------
-- Records of edu_hb_fjyt
-- ----------------------------
INSERT INTO `edu_hb_fjyt` VALUES ('1', '教学及辅助用房', '高等教育、中职教育、小学、中学、职业初中、幼儿园、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('111', '教室', '高等教育、中职教育、小学、中学、职业初中、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('112', '专用教室', '特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('113', '活动室', '幼儿园');
INSERT INTO `edu_hb_fjyt` VALUES ('114', '卫生间', '幼儿园');
INSERT INTO `edu_hb_fjyt` VALUES ('115', '睡眠室', '幼儿园');
INSERT INTO `edu_hb_fjyt` VALUES ('116', '保健室', '幼儿园');
INSERT INTO `edu_hb_fjyt` VALUES ('117', '卫生室', '');
INSERT INTO `edu_hb_fjyt` VALUES ('121', '实验室、实习场所', '高等教育、中职教育、小学、中学、职业初中、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('122', '专用科研用房', '高等教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('123', '计算机房', '小学、中学、职业初中、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('124', '语音室', '小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('131', '图书馆', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('132', '图书室', '小学、中学、职业初中、幼儿园、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('141', '体育馆/体育活动室', '小学、中学、职业初中、高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('151', '会堂', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('199', '其他教学及辅助用房', '');
INSERT INTO `edu_hb_fjyt` VALUES ('2', '行政办公用房', '高等教育、中职教育、小学、中学、职业初中、幼儿园、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('211', '教师办公室', '小学、中学、职业初中、幼儿园、特殊教育');
INSERT INTO `edu_hb_fjyt` VALUES ('299', '其他行政办公用房', '');
INSERT INTO `edu_hb_fjyt` VALUES ('3', '生活用房', '高等教育、中职教育、小学、中学、职业初中、幼儿园、特殊教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('311', '学生宿舍（公寓）', '高等教育、中职教育、小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('312', '教工宿舍', '小学、中学、职业初中、高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('313', '教工周转宿舍', '小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('321', '食堂', '小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('322', '学生食堂', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('323', '教工食堂', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('324', '厨房', '幼儿园');
INSERT INTO `edu_hb_fjyt` VALUES ('331', '厕所', '小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('332', '浴室', '');
INSERT INTO `edu_hb_fjyt` VALUES ('333', '锅炉房', '');
INSERT INTO `edu_hb_fjyt` VALUES ('341', '生活福利及附属用房', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('399', '其他生活用房', '小学、中学、职业初中');
INSERT INTO `edu_hb_fjyt` VALUES ('4', '教工住宅', '高等教育、中职教育学校');
INSERT INTO `edu_hb_fjyt` VALUES ('9', '其他用房', '小学、中学、职业初中、幼儿园、特殊教育学校');

