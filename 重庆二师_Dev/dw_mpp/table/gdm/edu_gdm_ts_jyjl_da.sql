/*
#  DESCRIPTION: 
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
use gdm;
DROP TABLE IF EXISTS gdm.edu_gdm_ts_jyjl_da;
CREATE TABLE
IF NOT EXISTS gdm.edu_gdm_ts_jyjl_da (
  `TSTM` VARCHAR(20) NOT NULL COMMENT '图书条码',
  `TSMC`  VARCHAR(100) COMMENT '图书名称',
  `DZTM`  VARCHAR(20) NOT NULL COMMENT '读者条码',
  `SFRZH` VARCHAR(20) COMMENT '身份认证号',
  `XH`      VARCHAR(20) COMMENT '学号、教工号',
  `XM` VARCHAR (255) COMMENT '姓名',
  `XBM` VARCHAR (2) COMMENT '性别码',
  `XBM_MC` VARCHAR (2) COMMENT '性别',
  `RXNY` VARCHAR (6) COMMENT '入学年月',
  `SZNJ` VARCHAR (8) COMMENT '所在年级',
  `SZBH` VARCHAR (50) COMMENT '所在班号',
  `BJMC` VARCHAR (200) COMMENT '班级名称',
  `ZYM` VARCHAR (50) COMMENT '专业码',
  `ZYM_MC` VARCHAR (200) COMMENT '专业名称',
  `SSYXM` VARCHAR (50) COMMENT '所属院校码',
  `SSYXM_MC` VARCHAR (200) COMMENT '所属院校',
  `PYCCM` VARCHAR (50) COMMENT '培养层次码',
  `PYCCM_MC` VARCHAR (200) COMMENT '培养层次',
  `SFZJH` VARCHAR (20) COMMENT '身份证件号',
  `CSRQ` VARCHAR (10) COMMENT '出生日期',
  `JSRQ`  VARCHAR(18) COMMENT '结束时间 YYYYMMDD HH:mm:ss',
  `YHRQ`  VARCHAR(18) COMMENT '归还时间 YYYYMMDD HH:mm:ss',
  `DZXM`  VARCHAR(40) COMMENT '读者姓名',
  `WJSJ`  VARCHAR(18) COMMENT '外借时间 YYYYMMDD HH:mm:ss',
  `XJCS`  tinyint(3)  COMMENT '续借次数',
  `CSBM`  VARCHAR(20) COMMENT '库室编码',
  `CSMC`  VARCHAR(20) COMMENT '库室名称',
  `TSLB` VARCHAR(2) COMMENT '[edu_hb_tslb]图书类别',
  `TSLB_MC` VARCHAR(100) COMMENT '[edu_hb_tslb]图书类别名称'   
)DEFAULT CHARSET=utf8 COMMENT='图书借阅记录宽表';