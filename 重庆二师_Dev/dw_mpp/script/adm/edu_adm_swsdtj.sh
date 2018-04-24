#
#        USAGE: ./ adm.edu_adm_swsdtj.sh
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
sql="truncate table adm.edu_adm_swsdtj;
insert into adm.edu_adm_swsdtj
  select temp.xh, temp.swsj, temp.xwsj, sum(temp.swsc) as zswsc
  from (
    select a.xh, '00:00:00' as swsj, '02:00:00' as xwsj,
           ifnull(
           case when a.login_time_hour <= '00:00:00' and (a.logout_time_hour <= '02:00:00' and a.logout_time_hour >= '00:00:00') then TIMESTAMPDIFF(second, to_date('00:00:00', 'hh24:mi:ss'), to_date(a.logout_time_hour, 'hh24:mi:ss')) 
                when a.login_time_hour <= '00:00:00' and a.logout_time_hour >= '02:00:00' then TIMESTAMPDIFF(second, to_date('00:00:00', 'hh24:mi:ss'), to_date('02:00:00', 'hh24:mi:ss')) 
                when (a.login_time_hour >= '00:00:00' and a.login_time_hour <= '02:00:00') and a.logout_time_hour <= '02:00:00' then TIMESTAMPDIFF(second, to_date(a.login_time_hour, 'hh24:mi:ss'), to_date(a.logout_time_hour, 'hh24:mi:ss')) 
                when (a.login_time_hour >= '00:00:00' and a.login_time_hour <= '02:00:00') and a.logout_time_hour >= '02:00:00' then TIMESTAMPDIFF(second, to_date(a.login_time_hour, 'hh24:mi:ss'), to_date('02:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, a.login_time_hour, a.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) a
  
  union all
  
    select b.xh, '02:00:00' as swsj, '04:00:00' as xwsj,
           ifnull(
           case when b.login_time_hour <= '02:00:00' and (b.logout_time_hour <= '04:00:00' and b.logout_time_hour >= '02:00:00') then TIMESTAMPDIFF(second, to_date('02:00:00', 'hh24:mi:ss'), to_date(b.logout_time_hour, 'hh24:mi:ss')) 
                when b.login_time_hour <= '02:00:00' and b.logout_time_hour >= '04:00:00' then TIMESTAMPDIFF(second, to_date('02:00:00', 'hh24:mi:ss'), to_date('04:00:00', 'hh24:mi:ss')) 
                when (b.login_time_hour >= '02:00:00' and b.login_time_hour <= '04:00:00') and b.logout_time_hour <= '04:00:00' then TIMESTAMPDIFF(second, to_date(b.login_time_hour, 'hh24:mi:ss'), to_date(b.logout_time_hour, 'hh24:mi:ss')) 
                when (b.login_time_hour >= '02:00:00' and b.login_time_hour <= '04:00:00') and b.logout_time_hour >= '04:00:00' then TIMESTAMPDIFF(second, to_date(b.login_time_hour, 'hh24:mi:ss'), to_date('04:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, b.login_time_hour, b.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then login_time end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) b
  
  union all
  
    select c.xh, '04:00:00' as swsj, '06:00:00' as xwsj,
           ifnull(
           case when c.login_time_hour <= '04:00:00' and (c.logout_time_hour <= '06:00:00' and c.logout_time_hour >= '04:00:00') then TIMESTAMPDIFF(second, to_date('04:00:00', 'hh24:mi:ss'), to_date(c.logout_time_hour, 'hh24:mi:ss')) 
                when c.login_time_hour <= '04:00:00' and c.logout_time_hour >= '06:00:00' then TIMESTAMPDIFF(second, to_date('04:00:00', 'hh24:mi:ss'), to_date('06:00:00', 'hh24:mi:ss')) 
                when (c.login_time_hour >= '04:00:00' and c.login_time_hour <= '06:00:00') and c.logout_time_hour <= '06:00:00' then TIMESTAMPDIFF(second, to_date(c.login_time_hour, 'hh24:mi:ss'), to_date(c.logout_time_hour, 'hh24:mi:ss')) 
                when (c.login_time_hour >= '04:00:00' and c.login_time_hour <= '06:00:00') and c.logout_time_hour >= '06:00:00' then TIMESTAMPDIFF(second, to_date(c.login_time_hour, 'hh24:mi:ss'), to_date('06:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, c.login_time_hour, c.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) c
  
  union all
  
    select d.xh, '06:00:00' as swsj, '08:00:00' as xwsj,
           ifnull(
           case when d.login_time_hour <= '06:00:00' and (d.logout_time_hour <= '08:00:00' and d.logout_time_hour >= '06:00:00') then TIMESTAMPDIFF(second, to_date('06:00:00', 'hh24:mi:ss'), to_date(d.logout_time_hour, 'hh24:mi:ss')) 
                when d.login_time_hour <= '06:00:00' and d.logout_time_hour >= '08:00:00' then TIMESTAMPDIFF(second, to_date('06:00:00', 'hh24:mi:ss'), to_date('08:00:00', 'hh24:mi:ss')) 
                when (d.login_time_hour >= '06:00:00' and d.login_time_hour <= '08:00:00') and d.logout_time_hour <= '08:00:00' then TIMESTAMPDIFF(second, to_date(d.login_time_hour, 'hh24:mi:ss'), to_date(d.logout_time_hour, 'hh24:mi:ss')) 
                when (d.login_time_hour >= '06:00:00' and d.login_time_hour <= '08:00:00') and d.logout_time_hour >= '08:00:00' then TIMESTAMPDIFF(second, to_date(d.login_time_hour, 'hh24:mi:ss'), to_date('08:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, d.login_time_hour, d.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) d
  
  union all
  
    select e.xh, '08:00:00' as swsj, '10:00:00' as xwsj,
           ifnull(
           case when e.login_time_hour <= '08:00:00' and (e.logout_time_hour <= '10:00:00' and e.logout_time_hour >= '08:00:00') then TIMESTAMPDIFF(second, to_date('08:00:00', 'hh24:mi:ss'), to_date(e.logout_time_hour, 'hh24:mi:ss')) 
                when e.login_time_hour <= '08:00:00' and e.logout_time_hour >= '10:00:00' then TIMESTAMPDIFF(second, to_date('08:00:00', 'hh24:mi:ss'), to_date('10:00:00', 'hh24:mi:ss')) 
                when (e.login_time_hour >= '08:00:00' and e.login_time_hour <= '10:00:00') and e.logout_time_hour <= '10:00:00' then TIMESTAMPDIFF(second, to_date(e.login_time_hour, 'hh24:mi:ss'), to_date(e.logout_time_hour, 'hh24:mi:ss')) 
                when (e.login_time_hour >= '08:00:00' and e.login_time_hour <= '10:00:00') and e.logout_time_hour >= '10:00:00' then TIMESTAMPDIFF(second, to_date(e.login_time_hour, 'hh24:mi:ss'), to_date('10:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, e.login_time_hour, e.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) e
  
  union all
  
    select f.xh, '10:00:00' as swsj, '12:00:00' as xwsj,
           ifnull(
           case when f.login_time_hour <= '10:00:00' and (f.logout_time_hour <= '12:00:00' and f.logout_time_hour >= '10:00:00') then TIMESTAMPDIFF(second, to_date('10:00:00', 'hh24:mi:ss'), to_date(f.logout_time_hour, 'hh24:mi:ss')) 
                when f.login_time_hour <= '10:00:00' and f.logout_time_hour >= '12:00:00' then TIMESTAMPDIFF(second, to_date('10:00:00', 'hh24:mi:ss'), to_date('12:00:00', 'hh24:mi:ss')) 
                when (f.login_time_hour >= '10:00:00' and f.login_time_hour <= '12:00:00') and f.logout_time_hour <= '12:00:00' then TIMESTAMPDIFF(second, to_date(f.login_time_hour, 'hh24:mi:ss'), to_date(f.logout_time_hour, 'hh24:mi:ss')) 
                when (f.login_time_hour >= '10:00:00' and f.login_time_hour <= '12:00:00') and f.logout_time_hour >= '12:00:00' then TIMESTAMPDIFF(second, to_date(f.login_time_hour, 'hh24:mi:ss'), to_date('12:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, f.login_time_hour, f.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) f
  
  union all
  
    select g.xh, '12:00:00' as swsj, '14:00:00' as xwsj,
           ifnull(
           case when g.login_time_hour <= '12:00:00' and (g.logout_time_hour <= '14:00:00' and g.logout_time_hour >= '12:00:00') then TIMESTAMPDIFF(second, to_date('12:00:00', 'hh24:mi:ss'), to_date(g.logout_time_hour, 'hh24:mi:ss')) 
                when g.login_time_hour <= '12:00:00' and g.logout_time_hour >= '14:00:00' then TIMESTAMPDIFF(second, to_date('12:00:00', 'hh24:mi:ss'), to_date('14:00:00', 'hh24:mi:ss')) 
                when (g.login_time_hour >= '12:00:00' and g.login_time_hour <= '14:00:00') and g.logout_time_hour <= '14:00:00' then TIMESTAMPDIFF(second, to_date(g.login_time_hour, 'hh24:mi:ss'), to_date(g.logout_time_hour, 'hh24:mi:ss')) 
                when (g.login_time_hour >= '12:00:00' and g.login_time_hour <= '14:00:00') and g.logout_time_hour >= '14:00:00' then TIMESTAMPDIFF(second, to_date(g.login_time_hour, 'hh24:mi:ss'), to_date('14:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, g.login_time_hour, g.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) g
  
  union all
  
    select h.xh, '14:00:00' as swsj, '16:00:00' as xwsj,
           ifnull(
           case when h.login_time_hour <= '14:00:00' and (h.logout_time_hour <= '16:00:00' and h.logout_time_hour >= '14:00:00') then TIMESTAMPDIFF(second, to_date('14:00:00', 'hh24:mi:ss'), to_date(h.logout_time_hour, 'hh24:mi:ss')) 
                when h.login_time_hour <= '14:00:00' and h.logout_time_hour >= '16:00:00' then TIMESTAMPDIFF(second, to_date('14:00:00', 'hh24:mi:ss'), to_date('16:00:00', 'hh24:mi:ss')) 
                when (h.login_time_hour >= '14:00:00' and h.login_time_hour <= '16:00:00') and h.logout_time_hour <= '16:00:00' then TIMESTAMPDIFF(second, to_date(h.login_time_hour, 'hh24:mi:ss'), to_date(h.logout_time_hour, 'hh24:mi:ss')) 
                when (h.login_time_hour >= '14:00:00' and h.login_time_hour <= '16:00:00') and h.logout_time_hour >= '16:00:00' then TIMESTAMPDIFF(second, to_date(h.login_time_hour, 'hh24:mi:ss'), to_date('16:00:00', 'hh24:mi:ss'))
                end 
           , 0) as swsc, h.login_time_hour, h.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) h

     union all

    select i.xh, '16:00:00' as swsj, '18:00:00' as xwsj,
    ifnull(
    case when i.login_time_hour <= '16:00:00' and (i.logout_time_hour <= '18:00:00' and i.logout_time_hour >= '16:00:00') then TIMESTAMPDIFF(second, to_date('16:00:00', 'hh24:mi:ss'), to_date(i.logout_time_hour, 'hh24:mi:ss')) 
         when i.login_time_hour <= '16:00:00' and i.logout_time_hour >= '18:00:00' then TIMESTAMPDIFF(second, to_date('16:00:00', 'hh24:mi:ss'), to_date('18:00:00', 'hh24:mi:ss')) 
         when (i.login_time_hour >= '16:00:00' and i.login_time_hour <= '18:00:00') and i.logout_time_hour <= '18:00:00' then TIMESTAMPDIFF(second, to_date(i.login_time_hour, 'hh24:mi:ss'), to_date(i.logout_time_hour, 'hh24:mi:ss')) 
         when (i.login_time_hour >= '16:00:00' and i.login_time_hour <= '18:00:00') and i.logout_time_hour >= '18:00:00' then TIMESTAMPDIFF(second, to_date(i.login_time_hour, 'hh24:mi:ss'), to_date('18:00:00', 'hh24:mi:ss'))
         end 
         , 0) as swsc, i.login_time_hour, i.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) i

     union all

    select j.xh, '18:00:00' as swsj, '20:00:00' as xwsj,
    ifnull(
    case when j.login_time_hour <= '18:00:00' and (j.logout_time_hour <= '20:00:00' and j.logout_time_hour >= '18:00:00') then TIMESTAMPDIFF(second, to_date('18:00:00', 'hh24:mi:ss'), to_date(j.logout_time_hour, 'hh24:mi:ss')) 
         when j.login_time_hour <= '18:00:00' and j.logout_time_hour >= '20:00:00' then TIMESTAMPDIFF(second, to_date('18:00:00', 'hh24:mi:ss'), to_date('20:00:00', 'hh24:mi:ss')) 
         when (j.login_time_hour >= '18:00:00' and j.login_time_hour <= '20:00:00') and j.logout_time_hour <= '20:00:00' then TIMESTAMPDIFF(second, to_date(j.login_time_hour, 'hh24:mi:ss'), to_date(j.logout_time_hour, 'hh24:mi:ss')) 
         when (j.login_time_hour >= '18:00:00' and j.login_time_hour <= '20:00:00') and j.logout_time_hour >= '20:00:00' then TIMESTAMPDIFF(second, to_date(j.login_time_hour, 'hh24:mi:ss'), to_date('20:00:00', 'hh24:mi:ss'))
         end 
         , 0) as swsc, j.login_time_hour, j.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) j

    union all

    select k.xh, '20:00:00' as swsj, '22:00:00' as xwsj,
    ifnull(
    case when k.login_time_hour <= '20:00:00' and (k.logout_time_hour <= '22:00:00' and k.logout_time_hour >= '20:00:00') then TIMESTAMPDIFF(second, to_date('20:00:00', 'hh24:mi:ss'), to_date(k.logout_time_hour, 'hh24:mi:ss')) 
         when k.login_time_hour <= '20:00:00' and k.logout_time_hour >= '22:00:00' then TIMESTAMPDIFF(second, to_date('20:00:00', 'hh24:mi:ss'), to_date('22:00:00', 'hh24:mi:ss')) 
         when (k.login_time_hour >= '20:00:00' and k.login_time_hour <= '22:00:00') and k.logout_time_hour <= '22:00:00' then TIMESTAMPDIFF(second, to_date(k.login_time_hour, 'hh24:mi:ss'), to_date(k.logout_time_hour, 'hh24:mi:ss')) 
         when (k.login_time_hour >= '20:00:00' and k.login_time_hour <= '22:00:00') and k.logout_time_hour >= '22:00:00' then TIMESTAMPDIFF(second, to_date(k.login_time_hour, 'hh24:mi:ss'), to_date('22:00:00', 'hh24:mi:ss'))
         end 
         , 0) as swsc, k.login_time_hour, k.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) k

     union all

    select l.xh, '22:00:00' as swsj, '23:59:59' as xwsj,
    ifnull(
    case when l.login_time_hour <= '22:00:00' and (l.logout_time_hour <= '23:59:59' and l.logout_time_hour >= '22:00:00') then TIMESTAMPDIFF(second, to_date('22:00:00', 'hh24:mi:ss'), to_date(l.logout_time_hour, 'hh24:mi:ss')) 
         when l.login_time_hour <= '22:00:00' and l.logout_time_hour >= '23:59:59' then TIMESTAMPDIFF(second, to_date('22:00:00', 'hh24:mi:ss'), to_date('23:59:59', 'hh24:mi:ss')) 
         when (l.login_time_hour >= '22:00:00' and l.login_time_hour <= '23:59:59') and l.logout_time_hour <= '23:59:59' then TIMESTAMPDIFF(second, to_date(l.login_time_hour, 'hh24:mi:ss'), to_date(l.logout_time_hour, 'hh24:mi:ss')) 
         when (l.login_time_hour >= '22:00:00' and l.login_time_hour <= '23:59:59') and l.logout_time_hour >= '23:59:59' then TIMESTAMPDIFF(second, to_date(l.login_time_hour, 'hh24:mi:ss'), to_date('23:59:59', 'hh24:mi:ss'))
         end 
         , 0) as swsc, l.login_time_hour, l.logout_time_hour
           
    from (
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '23:59:59' end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end as login_time_hour,
             case when substr(login_time,1, 10)<substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)<substr(logout_time,1, 10) then '00:00:00' end is not null
      union all
      select xh,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end as login_time_hour,
             case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(logout_time, 12, 8) end as logout_time_hour
      from gdm.edu_gdm_swxx
      where case when substr(login_time,1, 10)=substr(logout_time,1, 10) then substr(login_time, 12, 8) end is not null
    ) l
  ) temp
  where swsc != 0
  group by temp.xh, temp.swsj, temp.xwsj;"

now=`date +%Y-%m-%d:%H:%M:%S`
echo "$now executing:$sql"
    su - mpp -c "gccli $conn -e '$sql'"
status=$?
if [ $status -eq 0 ]; then
    echo "--generated successfully"
else echo "-- generated to fail"
fi
