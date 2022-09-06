create database individual;
use individual;

create table usuario(
id int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
fkJogador int, 
foreign key (fkJogador) references jogador (idjogador) 
)auto_increment = 1000;

create table jogador(
idjogador int primary key,
nomeJogador varchar(45)
);

select jogador.nomeJogador, count(usuario.id) qtd_votos from jogador join usuario on fkJogador = jogador.idJogador 
        group by jogador.nomeJogador;


insert into jogador values
("1","Rogerio Ceni"),
("2","Lugano"),
("3","Kaka"),
("4","Lucas Moura"),
("5","Hernanes"),
("6","Rai"); 
