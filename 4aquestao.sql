SELECT

fun.nome,
fun.pontuacao,
cli.nome as nome_cliente,
ven.data

from venda ven inner join cliente cli on ven.codVenda=cli.codCli
left outer join funcionario fun on ven.codCli=fun.codFunc where fun.nome='Jose Silva'
and ven.data between '01/01/2006' and '31/01/2006'
