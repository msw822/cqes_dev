use ods;
DROP TABLE IF EXISTS ods.jw_XSPFTJB;
CREATE TABLE IF NOT EXISTS ods.jw_XSPFTJB (
`XN` VARCHAR(10 ) NOT NULL COMMENT '099学年' ,
`XQ` decimal(1) NOT NULL COMMENT '099学期' ,
`XH` VARCHAR(15 ) NOT NULL COMMENT '099学号' ,
`KCDM` VARCHAR(20 ) NOT NULL COMMENT '099课程代码' ,
`JSZGH` VARCHAR(255 ) NOT NULL COMMENT '099教师职工号' ,
`DJSPF` decimal(6,3) COMMENT '099对教师评分',
`DKCPF` decimal(6,3) COMMENT '099对课程评分',
`DJCPF` decimal(6,3) COMMENT '099对教材评分',
`DXDM` VARCHAR(10 ) NOT NULL COMMENT '099对象代码' ,
`HSDJ` VARCHAR(20 ) COMMENT '099换算等级',
`BSX` VARCHAR(20 ) NOT NULL COMMENT '' ,
`FCMYS` VARCHAR(20 ) COMMENT '',
`BJMYS` VARCHAR(20 ) COMMENT '',
`JBMYS` VARCHAR(20 ) COMMENT '',
`BMYS` VARCHAR(20 ) COMMENT '',
`FCBMYS` VARCHAR(20 ) COMMENT '',
`XKKH` VARCHAR(40 ) COMMENT '',
`ZTPF` VARCHAR(20 ) COMMENT '' 
)DEFAULT CHARSET=utf8 COMMENT ='学生评分统计表';