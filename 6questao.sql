select 

pe.nome,
codCateg 


from produto pe
where valUnit > ( select avg(valUnit) from produto pi where pi.codcateg = pe.codcateg)