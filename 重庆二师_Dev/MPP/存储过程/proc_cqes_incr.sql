DELIMITER |

CREATE PROCEDURE `fdm`.`proc_cqes_incr`()

BEGIN 


DELETE fdm.edu_fdm_ts_jyjl WHERE DT= DATE_SUB(curdate(),INTERVAL 1 DAY) ;
INSERT INTO fdm.edu_fdm_ts_jyjl
SELECT
	ltk.ZJM,
	gcsml.TM,
	ltk.DZTM,
	ltk.DZTM,
	DATE_FORMAT(ltk.WJSJ,'%Y-%m-%d %H:%i:%S'),
    DATE_FORMAT(ltk.YGHSJ,'%Y-%m-%d %H:%i:%S'),
	DZK.XM,
	DATE_FORMAT(ltk.WJSJ,'%Y-%m-%d %H:%i:%S'),
	ltk.XJCS,
	ltk.LTKSJM,
    NULL,
    DT

FROM
 (SELECT * FROM ods.tushu_ltk  WHERE dt=DATE_SUB(curdate(),INTERVAL 1 DAY) )  AS ltk

LEFT OUTER JOIN ods.tushu_gcsml gcsml ON ltk.ZJM = gcsml.ZJM
LEFT OUTER JOIN ods.tushu_dzk dzk ON ltk.DZTM = dzk.DZTM;

END |