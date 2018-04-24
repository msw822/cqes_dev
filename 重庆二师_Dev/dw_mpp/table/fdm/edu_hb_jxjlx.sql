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
DROP TABLE IF EXISTS `edu_hb_jxjlx`;
CREATE TABLE IF NOT exists "edu_hb_jxjlx" (
  "DM" char(2) NOT NULL COMMENT '代码',
  "MC" varchar(20) NOT NULL COMMENT '名称'
) DEFAULT CHARSET=utf8 COMMENT='[奖学金类型代码]规定了高等学校和中等职业学校设立的奖学金分类。采用顺序码，用一位数字表示';

-- ----------------------------
-- Records of edu_hb_jxjlx
-- ----------------------------
insert into edu_hb_jxjlx values ('01','国家奖助类'),
('02','综合优秀类'),
('03','学业优秀类'),
('04','科技创新类'),
('05','学术竞赛优胜类'),
('06','艺术杰出类'),
('07','体育优胜类'),
('08','社会实践优秀类'),
('09','社会工作优秀类'),
('10','自立自强逆境成才类'),
('11','杰出志愿者类'),
('12','学习进步突出类'),
('13','少数民族优秀学生类'),
('14','港澳台侨优秀学生类'),
('15','优秀新生类'),
('30','来华留学生奖学金'),
('31','中国政府奖学金'),
('32','外国汉语教师短期研修奖学金'),
('33','HSK 优胜者奖学金'),
('34','中华文化研究奖学金'),
('35','长城奖学金'),
('36','优秀生奖学金'),
('99','其他');