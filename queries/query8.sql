// שמות כל הלקוחות שהגיל שלהם קטן מ20

select*
from client
where cbdate > (current_date - 20*365)