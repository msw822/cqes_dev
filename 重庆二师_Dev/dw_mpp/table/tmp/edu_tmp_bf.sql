/*
#  DESCRIPTION: TMP备份表创建
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: bi.yanbo@h3c.com
#      COMPANY: h3c.bigdata
#      VERSION: 1.0
#      CREATED: 2017/08/01
#     REVIEWER:
#     REVISION: ---
*/
use tmp;

DROP TABLE IF EXISTS TMP.EDU_FDM_XS_JBXX;
CREATE TABLE IF NOT EXISTS TMP.EDU_FDM_XS_JBXX
LIKE FDM.EDU_FDM_XS_JBXX;
ALTER TABLE TMP.EDU_FDM_XS_JBXX
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.EDU_FDM_XS_LYXX;
CREATE TABLE IF NOT EXISTS TMP.EDU_FDM_XS_LYXX
LIKE FDM.EDU_FDM_XS_LYXX;
ALTER TABLE TMP.EDU_FDM_XS_LYXX
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.EDU_FDM_XS_XJXX;
CREATE TABLE IF NOT EXISTS TMP.EDU_FDM_XS_XJXX
LIKE FDM.EDU_FDM_XS_XJXX;
ALTER TABLE TMP.EDU_FDM_XS_XJXX
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_zsxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_zsxx
LIKE FDM.edu_fdm_xs_zsxx;
ALTER TABLE TMP.edu_fdm_xs_zsxx
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.EDU_FDM_XQXX;
CREATE TABLE IF NOT EXISTS TMP.EDU_FDM_XQXX
LIKE FDM.EDU_FDM_XQXX;
ALTER TABLE TMP.EDU_FDM_XQXX
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.EDU_FDM_JZG;
CREATE TABLE IF NOT EXISTS TMP.EDU_FDM_JZG
LIKE FDM.EDU_FDM_JZG;
ALTER TABLE TMP.EDU_FDM_JZG
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_jttxfsxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_jttxfsxx
LIKE FDM.edu_fdm_xs_jttxfsxx;
ALTER TABLE TMP.edu_fdm_xs_jttxfsxx
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_knxsxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_knxsxx
LIKE FDM.edu_fdm_xs_knxsxx;
ALTER TABLE TMP.edu_fdm_xs_knxsxx
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_lxrxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_lxrxx
LIKE FDM.edu_fdm_xs_lxrxx;
ALTER TABLE TMP.edu_fdm_xs_lxrxx
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_xjydxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_xjydxx
LIKE FDM.edu_fdm_xs_xjydxx;
ALTER TABLE TMP.edu_fdm_xs_xjydxx
ADD DT VARCHAR(10);

DROP TABLE IF EXISTS TMP.edu_fdm_xs_zcxx;
CREATE TABLE IF NOT EXISTS TMP.edu_fdm_xs_zcxx
LIKE FDM.edu_fdm_xs_zcxx;
ALTER TABLE TMP.edu_fdm_xs_zcxx
ADD DT VARCHAR(10);

