// ניתכל המודלים שהזמינו לקוחות במדינה פלו
select modelid
from car natural join reservation natural join client
where cnationality = 'ISRAEL'
