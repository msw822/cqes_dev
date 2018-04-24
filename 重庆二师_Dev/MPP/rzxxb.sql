DROP TABLE rzxxb
CREATE TABLE rzxxb (
"username" VARCHAR(12) NOT NULL COMMENT  '上网帐号',
"logintime" varchar(20) not NULL COMMENT  '上线时间',
"logouttime" varchar(20) not NULL COMMENT  '下线时间',
"usetime" varchar(20) not NULL COMMENT  '使用时长',
"useflow" varchar(20)  NULL COMMENT  '使用流量',
"costmoney" varchar(20)  NULL COMMENT  '消费金额',
"userip" varchar(18)  NULL COMMENT  '用户ip',
"internetupflow" varchar(20)  NULL ,
"internetdownflow" varchar(20)  NULL ,
"chinanetupflow" varchar(20)  NULL ,
"chinanetdownflow" varchar(20)  NULL ,
"otherflow" varchar(20)  NULL ,
"macaddress" varchar(24)  NULL COMMENT  '用户MAC'
)COMMENT  '上网认证信息表';