select 
v.codvenda, 
count(*) qtd_produtos, 
sum(qtd) total_itens
from venda v, 
itens i 

where i.codvenda = v.codvenda and v.data = '01-20-2006'
group by  v.codvenda
