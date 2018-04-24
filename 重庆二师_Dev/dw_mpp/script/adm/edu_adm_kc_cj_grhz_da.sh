#
#        USAGE: ./ edu_adm_kc_cj_grhz_da.sh
#
#  DESCRIPTION: 课程成绩个人数据汇总
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/06/30
#     REVIEWER:
#     REVISION: ---

#!/usr/bin/env bash
base=$(dirname $0)
conn=$1
sql="TRUNCATE TABLE ADM.EDU_ADM_KC_CJ_GRHZ_DA;
INSERT INTO ADM.EDU_ADM_KC_CJ_GRHZ_DA(XH, ZYM, PJCJ, PJCJ_PM, PJCJ_JBB, GKS)
SELECT D1.XH, D1.ZYM, D1.PJCJ, D1.PJCJ_PM, ROUND((100 - 100*D1.PJCJ_PM/D1.RS), 2) AS PJCJ_JBB, D1.GKS
FROM
(
	SELECT A1.XH, A1.ZYM, A1.PJCJ, ROW_NUMBER() OVER(PARTITION BY A1.ZYM ORDER BY A1.PJCJ DESC) AS PJCJ_PM, C1.RS, B1.GKS
	FROM
	(
	  SElECT A.XH, A.ZYM, SUM(A.KCCJ_JG * A.XF)/SUM(A.XF) AS PJCJ
	  FROM
	  (
	    SELECT XH, XN, XQM, KCH, XF, ZYM, MAX(KCCJ_JG) AS KCCJ_JG
	    FROM GDM.EDU_GDM_KC_KCCJ_DA
	    WHERE KCCJ_JG IS NOT NULL
	    GROUP BY XH, XN, XQM, KCH, XF, ZYM
	  ) A
	  GROUP BY A.XH, A.ZYM
	) A1
	LEFT JOIN
	(
	  SELECT B.XH, COUNT(DISTINCT KCH) AS GKS
	  FROM 
	  (
	    SELECT XH, XN, XQM, KCH, MAX(KCCJ_JG) AS KCCJ_JG
	    FROM GDM.EDU_GDM_KC_KCCJ_DA
	    WHERE KCCJ_JG IS NOT NULL
	    GROUP BY XH, XN, XQM, KCH
	  ) B
	  WHERE KCCJ_JG < '60'
	  GROUP BY B.XH
	) B1 ON A1.XH = B1.XH
	LEFT JOIN 
	(
		SELECT ZYM, COUNT(DISTINCT XH) AS RS
		FROM GDM.EDU_GDM_KC_KCCJ_DA
		GROUP BY ZYM
	) C1 ON A1.ZYM = C1.ZYM 
) D1"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
