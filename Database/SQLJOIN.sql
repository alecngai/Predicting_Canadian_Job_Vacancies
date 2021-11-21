-- generates average wage per NOC (inlcusive of all NOC levels)
select v.noc_code, n.noc_desc, avg(ag.avg_wage)
from vacancies as v
left join noc as n on n.noc_code = v.noc_code
left join averagewage as ag on n.noc_code = ag.noc_code
where v.ref_date = '2017-01-01'
group by v.noc_code, n.noc_desc