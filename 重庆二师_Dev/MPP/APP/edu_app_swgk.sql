DROP TABLE  app.edu_app_swgk;
CREATE TABLE app.edu_app_swgk(
"XH" VARCHAR(20 ) NOT NULL COMMENT '学号',
"XM" VARCHAR(50 ) NULL COMMENT '姓名',
"HKLX" VARCHAR(10 ) NULL COMMENT '户口类型',
"XB" VARCHAR(2 ) NULL COMMENT  '性别',
"YXDM" VARCHAR(10 ) NULL COMMENT '院系代码',
"YXMC" VARCHAR(30 ) NULL COMMENT '院系名称',
"ZYDM" VARCHAR(10 ) NULL COMMENT '专业代码',
"ZYMC" VARCHAR(30 ) NULL COMMENT '专业名称',
"XZNJ" VARCHAR(4 ) NULL COMMENT '所在年级',
"XZ" INT(10 ) NULL COMMENT '学制',
"BJMC" VARCHAR(50 ) NULL COMMENT '班级名称',
"LJGKSL" INT NULL COMMENT '累计挂科数量',
"LJGKXF" FLOAT NULL COMMENT '累计挂科学分',
"RJSWSC" FLOAT NULL COMMENT '日均上网时长',
"BXQRJSWSC" FLOAT NULL COMMENT '本学期日均上网时长',
"RJYSSC" FLOAT NULL COMMENT '日均游戏时长',
"JYYSWSC" FLOAT NULL COMMENT '近一月上网时长'
)