insert into app.edu_app_xs_jbxx  
SELECT
	DISTINCT xh,
	xm,
	xb,
	mz.mz,
	zjdm,
	'中国' as JG_GJ,
	qx1.sm,
	qx2.dsmc,
	qx3.XZQHMC,
	jtdz,
	to_date(substring(sfzh,7,8),'YYYYMMDD') as csrq,
	sfzh,
	hkxz,
	zzmm1.zzmmmc,
	rxrq,
	xjztm,
	zslb,
	null as xxdm,
	xydm,
	xy,
	zydm,
	zymc,
	bjdm,
	bjmc,
	null as ssdm,
	ssld,
	nj,
	xz,
	xldm,
	'中国' as JG_GJ,
	qx1.sm,
	qx2.dsmc,
	qx3.XZQHMC,
	rxqdw,
	lxdh,
	dzyx,
	null as wxh,
	jtdh
FROM
	ods.zfsoft_xg_xsxxb as xsxxb
left join ods.dmk_mz as mz on xsxxb.mz = mz.mzm
left join ods.edu_hb_xzqh as qx1 on  concat(substring(xsxxb.sfzh,0,3),'000') = qx1.ssqh
left join ods.edu_hb_xzqh as qx2 on  concat(substring(xsxxb.sfzh,0,4),'00') = qx2.dsqh
left join ods.edu_hb_xzqh as qx3 on substring(xsxxb.sfzh,0,6) = qx3.XZQH
left join ods.dmk_zzmm as zzmm1 on xsxxb.zzmm = zzmm1.dm
WHERE
	nj >= 2014;
	
	
入学日期的sql还需要修改，有的有数据，有的没有，有的是yyyymmdd格式，有的是yyyy-mm-dd格式