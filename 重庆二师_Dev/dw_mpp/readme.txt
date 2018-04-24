#!/usr/bin/env bash
base=$(dirname $0)
cd $base/JY_JB_SQL
db="fdm"

ls script/exeute/fdm/ > script/exeute/fdm_list.txt
# 创建fdm库的表
sh run_fdm_create.sh '-umpp -ph3c' fdm >>  log/fdm_create.log 2>&1 &
tail -f log/fdm_create.log

# 替换fdm为gdm即可
ls script/exeute/gdm/ > script/exeute/gdm_list.txt
# 创建gdm库的表
sh run_gdm_create.sh '-umpp -ph3c' gdm >>  log/gdm_create.log 2>&1 &
tail -f log/adm_create.log

# 创建adm库的表,替换fdm为adm即可
ls script/exeute/adm/ > script/exeute/adm_list.txt
sh run_adm_create.sh '-umpp -ph3c' adm >>  log/adm_create.log 2>&1 &
tail -f log/adm_create.log

# 创建tmp库的表,替换fdm为tmp即可
ls script/exeute/tmp/ > script/exeute/tmp_list.txt
sh run_tmp_create.sh '-umpp -ph3c' tmp >>  log/tmp_create.log 2>&1 &
tail -f log/tmp_create.log

# gdm层数据生成
sh run_gdm_generate.sh '-umpp -ph3c' gdm  >> log/gdm_generate_log 2>&1 &

# tmp层数据生成,依赖gdm层数据
sh run_tmp_generate.sh '-umpp -ph3c' tmp  >> log/tmp_generate_log 2>&1 &

# adm层数据生成，依赖gdm, tmp层数据
sh run_adm_generate.sh '-umpp -ph3c' adm  >> log/adm_generate_log 2>&1 &



# 全量更新数据时，备份fdm表数据，第二个参数为备份数据的日期
sh run_fdm_backup.sh '-umpp -ph3c' '2017-08-07' >> log/fdm_backup_log 2>&1 &

#全量更新数据时，恢复fdm表数据
sh run_restore_data.sh '-umpp -ph3c' fdm >> log/fdm_restore_log 2>&1 &

