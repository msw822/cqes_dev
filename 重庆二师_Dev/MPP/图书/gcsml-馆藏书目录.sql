-- ----------------------------
-- Table structure for 馆藏书目库
-- ----------------------------
CREATE TABLE "ods"."tushu_gcsml" (
"KJM" int(5) NOT NULL COMMENT'库键码',
"ZJM" int(10) NOT NULL COMMENT'主键码',
"TM" VARCHAR(200) NULL COMMENT'题名',
"TMSX" VARCHAR(16) NULL COMMENT'题名缩写',
"YZ" VARCHAR(3) NULL COMMENT'语种',
"BC" VARCHAR(16) NULL COMMENT'版次',
"ZRZ" VARCHAR(200) NULL COMMENT'责任者',
"CBS" VARCHAR(50) NULL COMMENT'出版者',
"CBD" VARCHAR(30) NULL COMMENT'出版地',
"CBRQ" VARCHAR(40) NULL COMMENT'出版日期',
"BZBM" VARCHAR(20) NULL COMMENT'标准编码',
"SSH" VARCHAR(40) NULL COMMENT'索书号',
"CS" int(5) DEFAULT 0  NULL COMMENT'册数',
"KWJS" int(5) DEFAULT 0  NULL COMMENT'可外借数',
"YWJS" int(5) DEFAULT 0  NULL COMMENT'已外借数',
"YYS" int(5) DEFAULT 0  NULL COMMENT'预约数',
"TXYS" int(5) DEFAULT 0  NULL COMMENT'图象页数',
"JB" VARCHAR(10) NULL COMMENT'卷标',
"CZY" int(5) NULL COMMENT'操作员',
"XGRY" int(5) NULL COMMENT'修改人员',
"CLRQ" DATETIME NULL COMMENT'处理日期',
"SYWJCS" int(5) DEFAULT 0  NOT NULL COMMENT'上月外借册数',
"BYWJCS" int(5) DEFAULT 0  NOT NULL COMMENT'本月外借册数',
"QNWJCS" int(5) DEFAULT 0  NOT NULL COMMENT'去年外借册数',
"JNWJCS" int(5) DEFAULT 0  NOT NULL COMMENT'今年外借册数',
"LJWJCS" int(10) DEFAULT 0  NOT NULL COMMENT'累计外借册数',
"TM2" VARCHAR(200) NULL COMMENT'题名2',
"ZRZ_2" VARCHAR(200) NULL COMMENT'责任者2',
"CBZ2" VARCHAR(50) NULL COMMENT'出版者2',
"SGJM" int(4) NULL COMMENT'首馆键码',
"SSHA" VARCHAR(40) NULL COMMENT'索书号A',
"CJSJ" DATETIME NULL COMMENT'创建时间',
"SMJLH" VARCHAR(50 ) NULL COMMENT'书目记录号',
"FM" BLOB NULL COMMENT'封面',
"JG" int DEFAULT 0  NULL COMMENT'价格',
"WXLX" int DEFAULT 0  NULL COMMENT'文献类型',
"ZRZ1" VARCHAR(200 ) NULL COMMENT'责任者一',
"ZRZ2" VARCHAR(200 ) NULL COMMENT'责任者二',
"ZRZ3" VARCHAR(200 ) NULL COMMENT'责任者三',
"ZRZ4" VARCHAR(200 ) NULL COMMENT'责任者四',
"FLH" VARCHAR(200 ) NULL COMMENT'分类号',
"CBSH" int DEFAULT 0  NULL COMMENT'采编审核',
"CBSHY" int NULL COMMENT'采编审核员',
"CBSHRQ" DATETIME NULL COMMENT'采编审核日期',
"BMSH" int DEFAULT 0  NULL COMMENT'编目审核',
"BMSHY" int NULL COMMENT'编目审核员',
"BMSHRQ" DATETIME NULL COMMENT'编目审核日期',
"PJH" VARCHAR(50 ) NULL COMMENT'排架号',
"SUMMARYS" VARCHAR(4000 ) NULL ,
"COVERPATH" VARCHAR(500 ) NULL ,
"CSM" VARCHAR(200 ) NULL COMMENT'丛书名',
"FL" VARCHAR(200 ) NULL COMMENT'分类',
"ZC" int NULL COMMENT'种次',
"MARCLX" int NULL COMMENT'MARC类型'
)COMMENT'馆藏书目库'