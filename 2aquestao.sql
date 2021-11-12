SELECT 

cli.nome

from venda ven inner join cliente cli on ven.codVenda=cli.codCli
group by cli.nome having count(*) >2
