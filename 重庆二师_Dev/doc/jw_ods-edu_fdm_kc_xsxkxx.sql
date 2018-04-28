truncate table fdm.edu_fdm_kc_xsxkxx;
insert into fdm.edu_fdm_kc_xsxkxx
SELECT
	J.KCDM,
	null KXH,
	X.XKNJ,
	X.XN,
	J.JSZGH,
	X.XH,
	X.XKKH,
	J.RS XKRSXD,
	X.XQ XKXQM,
	null SJXKRS
FROM
	 ods.jw_xsxkb X
LEFT JOIN (
	SELECT
		XKKH,
		sum (RS) RS,
		MAX (KCDM) KCDM,
		MAX (JSZGH) JSZGH
	FROM
	  ods.jw_jxrwb
	GROUP BY
		XKKH
) J ON x.XKKH = j.XKKH