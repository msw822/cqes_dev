use ods;
DROP TABLE IF EXISTS ods.jw_JSDJRSTJB;
CREATE TABLE IF NOT EXISTS  ods.jw_JSDJRSTJB(
"XN" varchar(9) COMMENT '099ѧ��',
"XQ" varchar(1) COMMENT '099ѧ��',
"JSZGH" varchar(255) COMMENT '099��ʦְ����',
"KCDM" varchar(10) COMMENT '099�γ̴���',
"PJH" varchar(10) COMMENT '099���ۺ�',
"DXDM" varchar(10) COMMENT '099�������',
"DJ" varchar(20) COMMENT '099�ȼ�',
"PJNR" varchar(250) COMMENT '099��������',
"RS" int COMMENT '�����',
"BSX" varchar(20) 
)DEFAULT CHARSET=utf8 COMMENT='jw_JSDJRSTJB';


select * from ods.jw_JSDJRSTJB;