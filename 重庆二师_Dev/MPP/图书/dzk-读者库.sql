-- ----------------------------
-- Table structure for 读者库
-- ----------------------------

CREATE TABLE "ods"."tushu_dzk" (
"JSZH" VARCHAR(15 ) NOT NULL COMMENT'借书证号',
"DZTM" VARCHAR(15 ) NOT NULL COMMENT'读者条码',
"XM" VARCHAR(30 ) NOT NULL COMMENT'姓名',
"XB" VARCHAR(2 ) NULL COMMENT'性别',
"SFZH" VARCHAR(18 ) NULL COMMENT'身份证号',
"DZJB" VARCHAR(20 ) NOT NULL COMMENT'读者级别',
"JBDM" VARCHAR(6 ) NOT NULL COMMENT'级别代码',
"DWDM" VARCHAR(6 ) NOT NULL COMMENT'单位代码',
"DW" VARCHAR(100 ) NOT NULL COMMENT'单位',
"DH" VARCHAR(40 ) NULL COMMENT'电话',
"LXDZ" VARCHAR(60 ) NULL COMMENT'联系地址',
"YZBM" VARCHAR(6 ) NULL COMMENT'邮政编码',
"EMAIL" VARCHAR(40 ) NULL COMMENT'EMAIL',
"YJ" double(19,4) DEFAULT 0  NOT NULL COMMENT'押金',
"KWJ" int DEFAULT 0  NOT NULL COMMENT'可外借',
"YWJ" int DEFAULT 0  NOT NULL COMMENT'已外借',
"FZRQ" DATEtime NULL COMMENT'发证日期',
"SXRQ" DATEtime NULL COMMENT'失效日期',
"GSZX" VARCHAR(4 ) NULL COMMENT'挂失注销',
"GSRQ" DATEtime NULL COMMENT'挂失日期',
"QFK" double(20,4) DEFAULT 0  NOT NULL COMMENT'欠罚款',
"QPK" double(20,4) DEFAULT 0  NOT NULL COMMENT'欠赔款',
"SCDGSJ" DATEtime NULL COMMENT'上次到馆时间',
"SYWJCS" int(4) DEFAULT 0  NOT NULL COMMENT'上月外借册数',
"BYWJCS" int(4) DEFAULT 0  NOT NULL COMMENT'本月外借册数',
"JNWJCS" int(4) DEFAULT 0  NOT NULL COMMENT'今年外借册数',
"QNWJCS" int(4) DEFAULT 0  NOT NULL COMMENT'去年外借册数',
"LJWJCS" int(4) DEFAULT 0  NOT NULL COMMENT'累计外借册数',
"LJCQCS" int(4) DEFAULT 0  NOT NULL COMMENT'累计超期册数',
"LJJFK" double(10,4) DEFAULT 0  NOT NULL COMMENT'累计交罚款',
"LJPK" double(10,4) DEFAULT 0  NOT NULL COMMENT'累计赔款',
"BYDGCS" int(4) DEFAULT 0  NOT NULL COMMENT'本月到馆次数',
"SYDGCS" int(4) DEFAULT 0  NOT NULL COMMENT'上月到馆次数',
"JNDGCS" int(4) DEFAULT 0  NOT NULL COMMENT'今年到馆次数',
"QNDGCS" int(4) DEFAULT 0  NOT NULL COMMENT'去年到馆次数',
"LJDGCS" int(4) DEFAULT 0  NOT NULL COMMENT'累计到馆次数',
"MM" VARCHAR(100 ) NULL COMMENT'密码',
"BZ" BLOB NULL COMMENT'备注',
"ZP" BLOB NULL COMMENT'照片',
"BLXX" BLOB NULL COMMENT'保留信息',
"MZ" VARCHAR(10 ) NULL COMMENT'民族',
"YLSWJ" int(4) DEFAULT 0  NOT NULL COMMENT'阅览室外借',
"DLR" VARCHAR(10 ) NULL COMMENT'代理人',
"YE" double(19,4) DEFAULT 0  NOT NULL COMMENT'余额',
"ZJ" FLOAT DEFAULT 0  NOT NULL COMMENT'总计',
"MFJS" FLOAT DEFAULT 0  NOT NULL COMMENT'免费机时',
"TJYJ" double(19,4) DEFAULT 0  NOT NULL COMMENT'特借押金',
"YTJJS" int(5) DEFAULT 0  NOT NULL COMMENT'已借特借书',
"ZJM" int(10) NOT NULL COMMENT'主键码',
"GJM" int(4) NOT NULL COMMENT'馆键码',
"TYRQ" DATEtime NULL COMMENT'停用日期',
"TYTS" int DEFAULT 0  NULL COMMENT'停用天数',
"BJ" VARCHAR(50 ) NULL COMMENT'班级',
"YYWZCS" int DEFAULT 0  NULL COMMENT'预约违章次数',
"FWF" double(19,4) DEFAULT 0  NULL COMMENT'服务费',
"EYTJCS" int DEFAULT 0  NULL COMMENT'恶意推荐次数',
"NJ" VARCHAR(200 ) NULL COMMENT'年级',
"ZY" VARCHAR(200 ) NULL COMMENT'专业',
"XIB" VARCHAR(200 ) NULL COMMENT'系别',
"SJ" VARCHAR(200 ) NULL COMMENT'手机',
"YHLX" int DEFAULT 0  NULL COMMENT'用户类型',
"IMAGEPATH" VARCHAR(300 )   NULL COMMENT'IMAGEPATH',
"JD" int DEFAULT 0  NULL COMMENT'金豆',
"SGYJ" int DEFAULT 0  NULL COMMENT'书柜押金',
"GLY" int DEFAULT 0  NULL COMMENT'管理员',
"SSXQ" int DEFAULT 0  NULL COMMENT'所属校区',
"WHCC" VARCHAR(50 ) NULL COMMENT'文化层次'
)COMMENT'读者库'