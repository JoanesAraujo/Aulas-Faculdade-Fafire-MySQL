SELECT 
f.nome as funcionario, 
c.nome as cliente,
fp.descriao as formapag,

sum(i.qtd*i.valorUnit) as total_venda

from funcionario f, formapag fp, venda v, cliente c, item i
where v.codFunc = f.codFunc
and v.codCli = c.codCli
and v.codFPag = fp.codFPag
and i.codVenda = v.codVenda
and v.data between '01/01/2006' and '31/01/2006'
group by f.nome, c.nome, fp.descriao