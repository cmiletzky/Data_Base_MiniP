SELECT branchid, count(*) as b
FROM car c
WHERE c.isactive =1 and c.branchid>100 and c.branchid < 200
group by c.branchid
order by c.branchid
