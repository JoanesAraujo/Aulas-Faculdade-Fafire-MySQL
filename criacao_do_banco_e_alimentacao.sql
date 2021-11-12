Comandos SQL de criação e alimentação do banco

Antes de executar os comados abaixo deverá ser criado um banco de dados chamado Vendas.

Create Table Cliente(
codCli integer not null primary key,
nome varchar(40) not null,
cpf_cnpj char(14) not null,
rua varchar(50),
bairro varchar(45),
cidade varchar(45),
cep char(8), 
uf char(2),
fone varchar(15) ,
dataNasc date,
tipo Integer /* atribuir 0 - PF ou 1 - PJ */ );

Create unique index  iu_cpf_cnpj_cli on cliente (cpf_cnpj);

Create Table fone_cliente(
codCliente integer,
fone varchar(11),
constraint fk_foneCliente_fone foreign key (codCliente) references Cliente (codCli));

Create Table Funcionario(
codFunc integer not null primary key,
nome varchar(40) not null,
cpf char(11) not null,
dataNasc date,
pontuacao integer default 0
);

Create unique index  iu_cpf_cnpj_funcionario on funcionario (cpf);

Create Table Dependente(
codFunc integer not null,
sequencial integer not null,
nome varchar(40) not null,
cpf char(11) not null,
dataNasc date,
primary key (codFUnc,sequencial));

Create Table Categoria(
codCateg integer not null primary key,
descriao varchar(40) not null );

Create Table Produto(
codProd integer not null primary key,
nome varchar(40) not null,
codCateg integer not null references Categoria (codCateg),
qtdEst integer not null,
valUnit float not null );

Create Table FormaPag(
codFPag integer not null primary key,
descriao varchar(40) not null );

Create Table venda(
codVenda integer not null primary key,
data date not null,
codCli integer not null references Cliente (codCli),
codFunc integer not null references Funcionario (codFunc),
codFPag integer not null references FormaPag (codFPag) );

Create table Item(
codItem integer not null,
codVenda integer not null references Venda (codVenda),
codProd integer not null references Produto (codProd),
codFuncVistoria integer references Funcionario (codFunc),
qtd integer default 1 not null,
valorUnit float not null,
primary key (codItem) );

Create table supervisor(
codFunc integer not null references Funcionario(codFunc), /*supervisiona*/
possui_codFunc integer not null references Funcionario(codFunc), /* Quem é supervisionado*/
dataSup date);

commit;

/*Comandos DML:*/

Insert into cliente values (1,'Jose Barnabé','12345678904','Rua da Vitoria','Torre','Recife','52369789','PE','34215698','1965-08-28',0);
Insert into cliente values (2,'Maria Santos','78945612303','Rua da Mata','Torre','Recife','52379789','PE','34287896','1945-09-30',0);
Insert into cliente values (3,'Marcos Bezerra','45612378908','Alameda da Conquista','Derbi','Recife','52399789','PE','34256987','1975-10-02',0);
commit;


Insert into fone_cliente values (1,'8134322589');
Insert into fone_cliente values (1,'8188759863');
commit;

Insert into funcionario values (1,'Jose Silva','12345678904','1965-08-28',0);
Insert into funcionario values (2,'Maria Santos','78945612303','1945-09-30',25);
Insert into funcionario values (3,'Marcos Bezerra','45612378908','1975-10-02',53);
commit;


insert into supervisor values (1,2,'2018-11-03');
insert into supervisor values (2,3,'2018-11-03');
commit;

Insert into dependente values (1,1,'Josiana Silva','12345678901','1982-09-05');
Insert into dependente values (1,2,'Josimara Silva','01123456789','1978-01-07');
commit;

Insert into categoria values (1,'Frios');
Insert into categoria values (2,'Massas');
Insert into categoria values (3,'Laticíneos');
commit;


Insert into formapag values (1,'Dinheiro');
Insert into formapag values (2,'Cartão Mater Card');
Insert into formapag values (3, 'Cartão Hiper Card');
commit;


Insert into produto values (1,'Salsicha Hot Dog Perdigão',1,100,2.5);
Insert into produto values (2,'Peito de Peru',1,50,5.5);
Insert into produto values (3,'Queijo Prato',1,80,10.5);
Insert into produto values (8,'Queijo Mussarela',1,30,12.0);
Insert into produto values (4,'Macarrão Seabra',2,60,6.0);
commit;

Insert into produto values (5,'Pizza pronta',2,60,6.0);
Insert into produto values (6,'Iogurte Santana',3,20,4.5);
Insert into produto values (7,'Leite Desnatado',3,55,8.5);
commit;

Insert into item values (1,1,1,1,10,2.5);
Insert into item values (2,1,3,1,5,10.5);
Insert into item values (3,1,4,1,5,6.0);
commit;

Insert into venda values (2, '2006-01-20',1,2,1);
Insert into item values (4,2,1,2,20,2.5);
Insert into item values (5,2,3,2,15,10.5);
Insert into item values (6,2,4,2,25,6.0);
commit;

Insert into venda values (3,'2006-01-20',2,2,2);
Insert into item values (7,3,5,3,20,6.0);
Insert into item values (8,3,6,3,15,4.5);
Insert into item values (9,3,7,3,25,8.5);
commit;

Insert into venda values (4,'2006-01-20',2,2,2);
Insert into item values (10,4,5,1,20,6.0);
Insert into item values (11,4,6,2,15,4.5);
Insert into item values (12,4,7,3,25,8.5);
commit;

/* Alterar um item de venda para informar quem foi o funcionário que vistoriou o item a ser entegue*/
update item set codFuncVistoria = 1 where codItem = 1;
update item set codFuncVistoria = 1 where codItem = 2;
update item set codFuncVistoria = 2 where codItem = 8;


update item set codFuncVistoria = 1 where codItem = 1;
