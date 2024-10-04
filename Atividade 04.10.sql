create database Funcionarios_1e;
use Funcionarios_1e;

create table func (
codfunc int auto_increment primary key not null, 
nomefunc varchar (100) not null,
sexofunc varchar(1) not null,
bairrofunc varchar (100) not null,
salario decimal(10,2) not null,
setorfunc varchar (100) not null
);

insert into func (nomefunc, sexofunc, bairrofunc, salario, setorfunc)
values ("Larissa Menezes", "F", "Jabaquara", 1200.00, "Marketing"),
("Selma Nunes", "F", "Grajaú", 3800.00, "Vendas"),
("Leandro Henrique", "M", "Socorro", 2950.00, "RH"),
("Amélia Jeremias", "F", "Socorro", 4200.00, "Marketing"),
("Cláudio Jorge Silva", "M", "Jabaquara", 1480.00, "Vendas"),
("Luciano Souza", "M", "Pedreira", 1000.00, "Vendas" ),
("Gabriela Santos Nunes", "F", "Jurubatuba", 4150.00, "Não inserido"),
("Rafaela Vieira", "F", "Jabaquara", 700.00, "Marketing"),
("Suzana Crispim", "F", "Grajaú", 5600.00, "Produção"),
("Sabrina Oliveira Castro", "F", "Pedreira", 2900.00, "Marketing"),
("Jarbas Silva Nunes", "M", "Jurubatuba", 5300.00, "Produção"),
("Jotape Rei do Mewing", "M", "Moggwarts", 1600.00, "Marketing");

select * from func;

select sum(salario) as Total_Salarios from func;

select count(setorFunc) AS Total_Setores
from func
where setorFunc = "Marketing";

select setorFunc, avg(salario) as Média_salarios
from func
group by setorfunc
order by Média_salarios desc;


