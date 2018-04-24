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
DROP TABLE IF EXISTS edu_hb_xjydlb;
CREATE TABLE edu_hb_xjydlb (
  `DM` char(2) NOT NULL COMMENT '代码',
  `MC` varchar(10) NOT NULL COMMENT '名称'
)DEFAULT CHARSET=utf8 COMMENT='[学籍异动类别码表]本代码规定了学生学籍异动的类别。';

-- ----------------------------
-- Records of edu_hb_xjydlb
-- ----------------------------
INSERT INTO `edu_hb_xjydlb` VALUES ('01', '公派留学');
INSERT INTO `edu_hb_xjydlb` VALUES ('02', '留级');
INSERT INTO `edu_hb_xjydlb` VALUES ('03', '降级');
INSERT INTO `edu_hb_xjydlb` VALUES ('04', '跳级');
INSERT INTO `edu_hb_xjydlb` VALUES ('05', '试读');
INSERT INTO `edu_hb_xjydlb` VALUES ('06', '延长年限');
INSERT INTO `edu_hb_xjydlb` VALUES ('07', '试读通过');
INSERT INTO `edu_hb_xjydlb` VALUES ('08', '回国复学');
INSERT INTO `edu_hb_xjydlb` VALUES ('11', '休学');
INSERT INTO `edu_hb_xjydlb` VALUES ('12', '复学');
INSERT INTO `edu_hb_xjydlb` VALUES ('13', '停学');
INSERT INTO `edu_hb_xjydlb` VALUES ('14', '保留入学资格');
INSERT INTO `edu_hb_xjydlb` VALUES ('15', '恢复入学资格');
INSERT INTO `edu_hb_xjydlb` VALUES ('16', '取消入学资格');
INSERT INTO `edu_hb_xjydlb` VALUES ('17', '恢复学籍');
INSERT INTO `edu_hb_xjydlb` VALUES ('18', '取消学籍');
INSERT INTO `edu_hb_xjydlb` VALUES ('19', '保留学籍');
INSERT INTO `edu_hb_xjydlb` VALUES ('21', '转学（转出）');
INSERT INTO `edu_hb_xjydlb` VALUES ('22', '转学（转入）');
INSERT INTO `edu_hb_xjydlb` VALUES ('23', '转专业');
INSERT INTO `edu_hb_xjydlb` VALUES ('24', '专升本');
INSERT INTO `edu_hb_xjydlb` VALUES ('25', '本转专');
INSERT INTO `edu_hb_xjydlb` VALUES ('26', '转系');
INSERT INTO `edu_hb_xjydlb` VALUES ('27', '硕转博');
INSERT INTO `edu_hb_xjydlb` VALUES ('28', '博转硕');
INSERT INTO `edu_hb_xjydlb` VALUES ('29', '转班级');
INSERT INTO `edu_hb_xjydlb` VALUES ('31', '退学');
INSERT INTO `edu_hb_xjydlb` VALUES ('42', '开除学籍');
INSERT INTO `edu_hb_xjydlb` VALUES ('51', '死亡');
INSERT INTO `edu_hb_xjydlb` VALUES ('61', '提前毕业');
INSERT INTO `edu_hb_xjydlb` VALUES ('62', '结业');
INSERT INTO `edu_hb_xjydlb` VALUES ('63', '肄业');
INSERT INTO `edu_hb_xjydlb` VALUES ('64', '国内访学');
INSERT INTO `edu_hb_xjydlb` VALUES ('65', '国内访学后返校');
INSERT INTO `edu_hb_xjydlb` VALUES ('99', '其他');