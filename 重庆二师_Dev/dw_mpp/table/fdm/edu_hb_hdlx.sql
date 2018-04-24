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
DROP TABLE IF EXISTS edu_hb_hdlx;
CREATE TABLE edu_hb_hdlx (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(40) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[HDLX活动类型代码]规定了高等学校科学研究活动的分类.第一位表示大类，第二位表示小类';

-- ----------------------------
-- Records of edu_hb_hdlx
-- ----------------------------
INSERT INTO `edu_hb_hdlx` VALUES ('10', '基础研究');
INSERT INTO `edu_hb_hdlx` VALUES ('20', '应用研究');
INSERT INTO `edu_hb_hdlx` VALUES ('21', '应用基础研究');
INSERT INTO `edu_hb_hdlx` VALUES ('22', '应用技术研究');
INSERT INTO `edu_hb_hdlx` VALUES ('23', '应用基础与应用技术研究');
INSERT INTO `edu_hb_hdlx` VALUES ('24', '应用理论研究');
INSERT INTO `edu_hb_hdlx` VALUES ('30', '试验发展');
INSERT INTO `edu_hb_hdlx` VALUES ('31', '开发研究');
INSERT INTO `edu_hb_hdlx` VALUES ('32', '基本数据积累');
INSERT INTO `edu_hb_hdlx` VALUES ('40', 'R＆D 成果应用');
INSERT INTO `edu_hb_hdlx` VALUES ('50', '其他科技服务');
INSERT INTO `edu_hb_hdlx` VALUES ('99', '其他');
