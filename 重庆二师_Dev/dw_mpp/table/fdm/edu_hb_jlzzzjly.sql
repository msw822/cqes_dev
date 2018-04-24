/*
#  DESCRIPTION: 奖学金类型代码
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
use FDM;
DROP TABLE IF EXISTS `edu_hb_jlzzzjly`;
CREATE TABLE IF NOT exists "edu_hb_jlzzzjly" (
  "DM" char(2) NOT NULL COMMENT '代码',
  "MC" varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[奖学金类型代码]规定了高等学校、中小学校和中等职业学校奖励资助资金来源的分类。采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_jlzzzjly
-- ----------------------------
insert into edu_hb_jlzzzjly values ('01','中央财政'),
('02','省级财政'),
('03','市级财政'),
('04','县级财政'),
('05','学校事业收入提取'),
('06','企事业单位、社会或个人捐赠'),
('07','金融机构'),
('09','其他');