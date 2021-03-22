create table tarja (
	cod int primary key,
	tarja char(40)
);

insert into tarja values (0, '(*)'),
	(1, 'Sem Tarja/Venda Livre'),
	(2, 'Tarja Vermelha'),
	(3, 'Tarja Preta');

create table categoria_regulatoria (
	codcatreg int primary key (forma_farmaceutica),
	nome_cr varchar(100)
)

insert into categoria_regulatoria values (0, 'Vacina'),
	(1, 'Biológico'),
	(2, 'Dinamizado'),
	(3, 'Especifico'),
	(4, 'Fitoterápico'),
	(5, 'Genérico'),
	(6, 'Novo'),
	(7, 'Terapia Avançada'),
	(8, 'Radiofármaco'),
	(9, 'Similar')
	(10, '16 e 18 - Recombinante')
	(11, 'Pertussis - Acelular')
	(12, 'Pertussis e Hemophilus Influenza B (Conjugada)')
	(13, 'Rubéola - Atenuada'),
	(14, 'Rubéola e Varicela - Atenuada');


create table forma_farmaceutica (
	cod_ff int primary key (categoria_farmarcia),
	nomeff char,
);

insert into forma_farmaceutica values (0,'Sólida'),
	(1, 'Semi-Sólida'),
	(2, 'Líquida'),
	(3, 'Gasosa'),
	(4, 'Outras');

create table categoria_farmarcia (
	cod int,
	cod_ff int foreign key (forma_farmaceutica),
	nomecf varchar(30)
);

insert into categoria_farmarcia values (0, 'Cápsula'), 
	(1, 'Comprimido'),
	(2, 'Drágea'),
	(3, 'Granulado'),
	(4, 'Pomada ou unguento'),
	(5, 'Pasta'),
	(6, 'Creme'),
	(7, 'Supositório'),
	(8, 'Óvulo'),
	(9, 'Solução'),
	(10, 'Suspensão'),
	(11, 'Extrato Fluido'),
	(12, 'Espírito'),
	(13, 'Tintura'),
	(14, 'Xarope'),
	(15, 'Elixir'),
	(16, 'Emulsão'),
	(17, 'Sistema de Gás Comprimido ou aerossóis'),
	(18, 'Cataplasmas'),
	(19, 'Cetratos'),
	(20, 'Alcolatos'),
	(21, 'Colutórios'),
	(22, 'Enemas ou Clister'),
	(23, 'Aerossóis'),
	(24, 'Spray'),
	(25, 'Vaporizações'),
	(26, 'Fumigações'),
	(27, 'Ampolas');
