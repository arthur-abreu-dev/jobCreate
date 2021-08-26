create database jobcreate;
use jobcreate;


create table usuario (
	id_usuario int primary key auto_increment,
    login varchar(50) not null,
    nome varchar(150) not null,
    email varchar(100) not null
);

create table tarefa(
	id_tarefa int primary key auto_increment,
    descricao_tarefa varchar(4000) not null,
    observacao varchar(200)
);

create table tecnologia(
	id_tecnologia int primary key auto_increment,
    descricao varchar(100) not null,
    observacao varchar(200) 
);

create table tarefas_usuario(
	id_tarefa_usuario int primary key auto_increment,
    id_tarefa int not null references tarefa(id_tarefa),
    id_usuario int not null references usuario(id_usuario),
    id_tecnologia int not null references tecnologia(id_tecnologia)
);

