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
DROP TABLE IF EXISTS edu_hb_rxfs;
CREATE TABLE edu_hb_rxfs (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(20) NOT NULL COMMENT '名称',
  `syxx` varchar(60) DEFAULT NULL COMMENT '适用学校'
)DEFAULT CHARSET=utf8 COMMENT='[入学方式代码表]规定了高等学校本科学生,入学方式的分类,用二位数字表示';

-- ----------------------------
-- Records of edu_hb_rxfs
-- ----------------------------
INSERT INTO `edu_hb_rxfs` VALUES ('01', '统一招生考试/普通入学','中小学校、中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('02', '保送','中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('03', '民族班','中小学校、中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('04', '定向培养','中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('05', '体育特招','中小学校、中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('06', '文艺特招','中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('07', '学生干部保送','中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('08', '考试推荐','中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('09', '外校转入','中小学校、中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('10', '恢复入学资格','中小学校、中等职业学校、高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('11', '预科','高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('12', '来华留学','高等学校');
INSERT INTO `edu_hb_rxfs` VALUES ('99', '其他','中小学校、中等职业学校、高等学校');