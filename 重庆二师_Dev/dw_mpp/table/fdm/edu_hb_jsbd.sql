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
DROP TABLE IF EXISTS `edu_hb_jsbd`;
CREATE TABLE `edu_hb_jsbd` (
  `DM` char(3) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称',
  `JYTJSYXX` varchar(30) NOT NULL COMMENT '教育统计适用学校'
) DEFAULT CHARSET=utf8 COMMENT= '[教师变动代码]教育统计所要求的各级各类学校（机构）专任教师变动情况';
-- ----------------------------
-- Records of edu_hb_jsbd
-- ----------------------------
INSERT INTO `edu_hb_jsbd` VALUES ('111', '录用毕业生', '小学、初中、普通高中、特殊教育、中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('112', '研究生', '中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('113', '本科生', '中职');
INSERT INTO `edu_hb_jsbd` VALUES ('114', '本校研究生', '高校');
INSERT INTO `edu_hb_jsbd` VALUES ('121', '调入', '小学、初中、普通高中、特殊教育');
INSERT INTO `edu_hb_jsbd` VALUES ('122', '外单位教师调入', '中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('123', '外单位高校教师调入', '高校');
INSERT INTO `edu_hb_jsbd` VALUES ('124', '外单位中职教师调入', '中职');
INSERT INTO `edu_hb_jsbd` VALUES ('131', '校内外非教师调入', '中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('132', '本校调整', '中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('133', '增加校内变动', '小学、初中、普通高中、特殊教育');
INSERT INTO `edu_hb_jsbd` VALUES ('141', '增加其他', '小学、初中、普通高中、特殊教育、中职');
INSERT INTO `edu_hb_jsbd` VALUES ('211', '自然减员', '小学、初中、普通高中、特殊教育');
INSERT INTO `edu_hb_jsbd` VALUES ('212', '调离教师岗位', '中职、高校');
INSERT INTO `edu_hb_jsbd` VALUES ('213', '调出', '小学、初中、普通高中、特殊教育');
INSERT INTO `edu_hb_jsbd` VALUES ('214', '减少校内变动', '小学、初中、普通高中、特殊教育');
INSERT INTO `edu_hb_jsbd` VALUES ('215', '减少其他', '小学、初中、普通高中、特殊教育、中职、高校');
