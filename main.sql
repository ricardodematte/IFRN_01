CREATE TABLE cliente
(
codigo int,
nome varchar(50) not null,
endereco varchar(150) not null,
cod_departamento int,
CONSTRAINT pk_cliente PRIMARY KEY (codigo),
CONSTRAINT fk_cliente FOREIGN KEY
(cod_departamento) references Departamento (codigo)
);
INSERT INTO cliente VALUES (1, 'João', 'Rua X', 123); /* insere os dados*/
INSERT INTO cliente VALUES (2, 'Maria', 'Rua Y', 456);
select * from cliente where cod_departamento=123;
