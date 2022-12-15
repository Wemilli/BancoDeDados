create database locadora;

use locadora;

create table filmes (
cod_fita int(10) not null auto_increment,
nome_filme varchar(45) not null,
categoria varchar(45) not null,
vl_dia float(5,2) not null,
primary key (cod_fita)
);

create table cliente (
codigo int(10) not null auto_increment,
nome varchar(45) not null,
endereco varchar(45) not null,
bairro varchar(45) not null,
cidade varchar(45) not null,
UF varchar(2) not null,
telefone varchar(45) not null,
primary key (codigo)
);

insert filmes (nome_filme, categoria, vl_dia) values
('Orgulho e Preconceito', 'Romance', '5.50'),
('Anjos da Noite - Evolução', 'Ação', '5.00'),
('10 Coisa que Eu odeio em Você', 'Comédia', '5.00'),
('Os Viajantes do Tempo', 'Comédia', '4.50'),
('Tempo de Gloria', 'Ação', '5.00'),
('A Vila', 'Suspense', '5.00'),
('Sem Destino', 'Ação', '4.00'),
('Beleza Roubada', 'Romance', '4.50'),
('Agente 86', 'Comédia', '5.00'),
('Horton e o Mundo dos Quem', 'Infantil', '4.50'),
('American Hauting', 'Suspense', '5.50'),
('Eu, Eu Mesmo e Irene', 'Comédia', '5.00'),
('Zoolander', 'Comédia', '5.00'),
('Homem de Ferro', 'Aventura', '4.50'),
('O Chamado', 'Terror', '4.50');

insert cliente (nome, endereco, bairro, cidade, UF, telefone) values 
('Leonardo', 'Osmar Antonioli, 133', 'Recanto das Rosa', 'Osasco', 'SP', '95401-0000'),
('Hiago', 'Mário Quintana, 665', 'Recanto das Rosas', 'Osasco', 'SP', '92854-1041'),
('Natália Bezerra', 'Rua Augusta, 24', 'Cerqueira César', 'São Paulo', 'SP', '97623-2035'),
('Ântonio Ruiz', 'Cotia, 777', 'Jardim Campos', 'São Paulo', 'SP', '93423-8970'),
('Júlia Costa', 'Júlio Prestes, 89', 'Diadema', 'São Paulo', 'SP', '97111-1111'),
('Jadisson', 'Hernani Melo, 632', 'São Domingos', 'Niterói', 'RJ', '92000-8754'),
('Luiz Bouchor', 'Avenida Tancredo Neves, 6621', 'Caminho das Árvores', 'Salvador', 'BA', '93214-7888'),
('Tomás', 'Rua Ceará, 12', 'Rochdale', 'Osasco', 'SP', '91012-7865'),
('Pedro', 'Rua Rosa, 58', 'Jardim das Flores', 'Osasco', 'SP', '93574-1478'),
('Ana Guilia', 'Grama da Praia, 737', 'Vila Verde', 'São Paulo', 'SP', '95120-0235'),
('Jéssica Andes', 'Rua Ouro Preto, 4321', 'Terras de São Felipe', 'Carapicuíba', 'SP', '90852-1202'),
('Cassio', 'Rua Iguapé, 456', 'Cascadura', 'Rio de Janeiro', 'RJ', '9845-8795'),
('Rita', 'Av. Mário Lopes Leão, 86', 'Santo Amaro', 'São Paulo', 'SP', '93451-7723'),
('Heitor', 'Rua Lindomar, 64', 'Jardim Palmeiras', 'Jandira', 'SP', '91583-6787'),
('Nicolas', 'Rua dos Inocentes, 321', 'Socorro', 'São Paulo', 'SP', '98514-5231');

select * from cliente;

select * from filmes;

show databases;