insert into app.edu_app_swgk 
select max_logouttime.username,xsxx.xm,xsxx.hkxz,xsxx.xb,xsxx.xydm,xsxx.xy,xsxx.zydm,xsxx.zymc,xsxx.nj,
xsxx.xz,xsxx.bjmc,gkcj.gks,gkcj.gkxf,sum(b.usetime)/(30*60) mon_rq,
(select sum(to_number(usetime))/((to_days(max_logouttime.logouttime)-to_days(max_logouttime.xq))*60)
from rzxxb where username=max_logouttime.username
   and logouttime>=max_logouttime.xq
   and logouttime<=max_logouttime.logouttime) xqrj
,null,sum(b.usetime)/60 mon_cnt
from
(select username,logintime,logouttime,usetime,
 adddate(to_date(logouttime,'YYYY-MM-DD HH24:MI:SS'),interval -30 day) logouttime_1,xq from 
(SELECT
   username,
   logintime,
   logouttime,
   usetime,
   case when 
     substr(logouttime,6,2) in 
       ('09','10','11','12','01') then
     substr(logouttime,1,4)||'-09'||'-01'
   else 
     substr(logouttime,1,4)||'-03'||'-01'
   end  as xq,
   row_number() over(partition by username order by logouttime desc) as rank
   from rzxxb) a
   where rank=1) max_logouttime  left join
   (select username,to_number(usetime) usetime,to_date(logouttime,'YYYY-MM-DD HH24:MI:SS') logouttime 
   from rzxxb) b
   on (b.username=max_logouttime.username
   and b.logouttime<=max_logouttime.logouttime
   and b.logouttime>=max_logouttime.logouttime_1)
   join
   (select xh,xm,hkxz,xb,xydm,xy,zydm,zymc,nj,xz,bjmc
   from zfsoft_xg_xsxxb) xsxx
   on (max_logouttime.username=xsxx.xh) left join
   (select xh,count(sfjg) as gks,sum(xf) as gkxf from 
(select * from tmp.n_cjb where sfjg < 60) as gkb group by xh) gkcj
   on (max_logouttime.username=gkcj.xh)
   group by max_logouttime.username,xsxx.xm,xsxx.hkxz,xsxx.xb,xsxx.xydm,xsxx.xy,xsxx.zydm,xsxx.zymc,xsxx.nj,
xsxx.xz,xsxx.bjmc,gkcj.gks,gkcj.gkxf,xqrj;
	
	
	





------tmp临时库
DROP TABLE  tmp.n_cjb;
CREATE TABLE tmp.n_cjb(
"XH" VARCHAR(20 ) NOT NULL COMMENT '学号',
"cj" VARCHAR(20 ) NULL COMMENT '成绩',
"sfjg" int(4 ) NULL COMMENT  '是否及格（修改后成绩50or60）',
"xf" VARCHAR(20 ) NULL COMMENT  '学分'
）;

insert into tmp.n_cjb
select 
xh,
cj,
case  when cj='不及格' then '50' when cj='良好' then '80' when cj='良' then '80' when cj='合格' then '60' when cj='及格' then '60' when cj='优秀' then '90' when cj='优' then '90' when cj='中等' then '70' when cj='中' then '70' when to_number(cj)<'60' then '50' else '60' end as sfjg,
xf  
from desfxy_cjb;