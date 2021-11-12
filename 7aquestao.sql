SELECT 
fun.nome as nome_funcionario,
fu.nome as nome_supervisor

FROM supervisor sup right join funcionario fun on sup.possui_codFunc=fun.codFunc
left outer join funcionario fu on sup.codFunc=fu.codFunc