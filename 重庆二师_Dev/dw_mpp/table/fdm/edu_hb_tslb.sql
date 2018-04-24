/*
#  DESCRIPTION: 图书行标表
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: wang.longfei@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---
*/
use fdm;
DROP TABLE IF EXISTS fdm.edu_hb_tslb;
CREATE TABLE
IF NOT EXISTS fdm.edu_hb_tslb (
  `DM` VARCHAR(2) NOT NULL COMMENT '类别代码',
  `MC`	VARCHAR(100) NOT NULL COMMENT '类别名称'
)DEFAULT CHARSET=utf8 COMMENT='[图书类别码]来自中国图书馆分类法。';

/*
--navicat 运行此语句，中文乱码，用DataEngine 运行此SQL语句
 */
TRUNCATE TABLE fdm.edu_hb_tslb;
insert into fdm.edu_hb_tslb values
  ('A','马克思主义、列宁主义、毛泽东思想、邓小平理论'),
  ('B','哲学、宗教'),
  ('C','社会科学总论'),
  ('D','政治、法律'),
  ('E','军事'),
  ('F','经济'),
  ('G','文化、科学、教育、体育'),
  ('H','语言、文字'),
  ('I','文学'),
  ('J','艺术'),
  ('K','历史、地理'),
  ('N','自然科学总论'),
  ('O','数理科学和化学'),
  ('P','天文学、地球科学'),
  ('Q','生物科学'),
  ('R','医药、卫生'),
  ('S','农业科学'),
  ('T','工业科学'),
  ('U','交通运输'),
  ('V','航空、航天'),
  ('X','环境科学、劳动保护科学'),
  ('Z','综合性图书');