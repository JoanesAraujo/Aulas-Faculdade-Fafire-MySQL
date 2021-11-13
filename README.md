# Criando um BANCO DE DADOS no SQL SERVER e (Respondendo alguns relatórios)


<img align="right" src="https://i.imgur.com/c8CM0fF.png.png"/>


<br>


## Descrição:

Projeto de banco de dados de Vendas
Este visa apresentar o ***modelo descritivo***, ***modelo conceitual*** e ***modelo relacional*** de um **banco de dados de vendas**.

<br>

**<u>Modelo Descritivo</u>**

<br>
Este é um banco de dados de uma mercearia. Nesta mercearia são vendidas produtos para clientes. 

Cada venda é feita numa data, tem um código específico e feita para um cliente, por um funcionário, pode ter um ou mais produtos e tem uma forma de pagamento. Para cada forma de pagamento deseja-se armazenar: código e descrição.

Para os produtos deseja-se armazenar: o código, nome, categoria, quantidade em estoque e valor unitário, com todos os campos obrigatórios. Para cada categoria deseja-se armazenar: código e descrição. Para cada produto da venda deseja-se armazenar a quantidade comprada e o valor do produto e um produto pode aparecer mais de uma vez na mesma venda. 

Os clientes podem ser pessoas físicas ou jurídicas. Para os clientes Pessoa Física serão armazenados: código, nome, cpf e data de nascimento, não podendo ter o cpf repetido e a data de nascimento não obrigatória. Para os clientes Pessoa Jurídica serão armazenados: código, Razão Social, CNPJ não podendo ter o CNPJ repetido. Para os clientes podem ser armazenados um ou mais telefones.

Para os funcionários serão armazenados: código, nome, cpf, data de nascimento e pontuação, não podendo ter cpf repetido e a data de nascimento não obrigatória, porém o restante sendo não nulo.

Um funcionário tem um supervisor que também é um funcionário e deve ser armazenada a data em que passou a supervisionar. Um funcionário pode supervisionar um ou mais funcionários e um funcionário pode ser ou não supervisionado por outro funcionário.

Um funcionário pode ou não ter dependentes. Para os dependentes armazenar o nome, sexo e data de nascimento.

Antes da entrega é uma regra da empresa a realização da vistoria de qualidade do produto. Ou seja, cada produto vendido deve ser vistoriado por um funcionário antes de ser entregue.



<br>

**<u>Modelo ER - Conceitual</u>**

<br>

![img](https://lh5.googleusercontent.com/d3AjUCKlJWkPJMLXxZRRBlpRQua8XMw2N3rRGzFJW1Gzhy2qUD-HlKU468bV06HaxfBkhM7UWzPF-ULsHMbtwJT-lbBbYHHajX2ofhEZNh_fU2Bz_0KkoWzu7oarO0clzxvGZMU-)

 												                                                                                                                                                   



<br>

**<u>Modelo Relacional - Lógico</u>**

<br> 

 *![img](https://lh6.googleusercontent.com/UYuogSNgr48iP5Zt9Q8AByabu8_XNUpjdtGa3DjFuapnePq7JkXjiBF_MnyDPFAflMlkvddSJ_rpX9-7YvQQR_T5bVjH6b9wkDYmhl_4pgXuMo1ifeZke8meoWqFbRCFGjjkjMUF)*



<br>

**<u>Exemplos de Relatórios a serem implementados</u>**

<br>

1. Quantidade de produtos, Quantidade de itens, Valor do Estoque, Maior valor do produto e Valor médio dos produtos.
2. Apresentar os nomes dos clientes que compraram mais de 2 vezes até hoje.
3. Quantidade de produtos e de itens por venda no dia 20-01-2006.
4. Listar os nomes dos clientes e as datas das vendas feitas pelo funcionário José Silva no mês de janeiro de 2006.
5. Nome do funcionário, nome do cliente, forma de pagamento e valor total das vendas efetuadas em Janeiro de 2006.
6. Apresentar os produtos que custam mais que o valor médio dos produtos de sua categoria.
7. Listar o funcionario e nome do seu supervisor. Apresentar os funcionarios que não têm supervisor também.
