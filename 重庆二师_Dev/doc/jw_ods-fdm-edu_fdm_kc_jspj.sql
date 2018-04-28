truncate table fdm.edu_fdm_kc_jspj;
insert into fdm.edu_fdm_kc_jspj
SELECT
	PJNR,
	KCDM KCH,
	NULL XH,
	XN,
	XQ,
	PJH,
	NULL PJSJ,
	DJ,
	NULL PF,
	JSZGH JGH
FROM
	ods.jw_jsdjrstjb;

