SELECT 
count(*) as qtd_produtos, 
sum(qtdest) as total_itens, 
sum(qtdest*valunit) as valor_estoque,
max(valunit) maior_valor, 
avg(valunit) valor_medio
from produto