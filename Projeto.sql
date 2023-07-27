create table atendente
			 (codAtend serial,
			  nome varchar (15),
			  primary key (codAtend));
			  
create table supervisiona
			 (codAtend integer,
			  matricula integer, 
			  primary key (codAtend, matricula),
			  foreign key (codAtend) references atendente,
			  foreign key (matricula) references aluno);
			  
create table aluno
			 (matricula serial, 
			  dataNasc date,
			  peso float,
			  altura float,
			  primary key (matricula));
			  
create table Administra
			 (codIns integer,
			  codAtend integer,
			  primary key (codIns, codAtend),
			  foreign key (codIns) references instrutor,
			  foreign key (codAtend) references atendente);
			  
create table instrutor
			 (codIns serial,
			 disp_Horario varchar (20),
			 codTreino integer,
			 codAtend integer,
			 primary key (codIns));
			 
create table gerencia
			 (codIns integer,
			  codTreino integer,
			  primary key (codIns, codTreino),
			  foreign key (codIns) references instrutor,
			  foreign key (codTreino) references treino);
			  
create table associa
			 (matricula integer,
			  codTreino integer,
			  primary key (Matricula, codTreino),
			  foreign key (Matricula) references aluno,
			  foreign key (codTreino) references treino);
			 
create table treino
			 (codTreino serial,
			 Aerobica boolean,
			 Musculação boolean,
			 Funcional boolean,
			 primary key (codTreino));
			 
create table possui
			 (codExerc integer,
			  codTreino integer,
			  primary key (codExerc, codTreino),
			  foreign key (codExerc) references exercicio,
			  foreign key (codTreino) references treino);
			 
create table exercicio
		     (codExerc serial not null,
			 nome varchar(20) not null,
			 repeticao varchar(20),
			 serie varchar(20),
			 primary key (codExerc));
			 
create table coordena
			 (codIns integer,
			  codExerc integer,
			  primary key (codIns, codExerc),
			  foreign key (codIns) references instrutor,
			  foreign key (codExerc) references exercicio);































