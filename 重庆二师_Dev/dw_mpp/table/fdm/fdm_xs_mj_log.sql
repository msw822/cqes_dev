--  DESCRIPTION: 本科生门禁记录[图书馆，宿舍等有门禁的]
--
--     OPTIONS: ---
-- REQUIREMENTS: ---
--        BUGS: ---
--        NOTES: (2018/02/11 li.zhanlei@h3c.com 修改表名、增加字段)
--       AUTHOR: song.shengjie@h3c.com
--     COMPANY: h3c.bigdata
--      VERSION: 1.0
--     CREATED: 2017/08/11
--    REVIEWER:
--    REVISION:
DROP TABLE IF EXISTS fdm.fdm_xs_mj;
CREATE TABLE fdm.fdm_xs_mj (
  xh varchar(20) COMMENT '学号',
  xm VARCHAR(60) COMMENT '姓名',
  lb varchar(5) COMMENT '类别【新本科生】',
  bj varchar(10) COMMENT '班级',
  sksj varchar(20) COMMENT '刷卡时间',
  gateno varchar(10) COMMENT '门号【几号门】',
  act char(1) COMMENT '进出类型枚举：1出；2入；3潜入；4潜出；5无出；6反入，7无入，8潜入的状态',
  jqbh varchar(10) comment '刷卡机编号',
  wzbh varchar(10) comment '刷卡位置编号'
)DISTRIBUTED BY('xh') DEFAULT CHARSET=utf8 COMMENT '[门禁记录]记录门禁信息'

