create table solicitacao (
	cod int,
	atd_protocolo int primary key not null,
	nome_solicitacao varchar(100),
	justificativa text
),

insert into solicitacao (0, null, 'Exames'),
	(1, null, 'Objeto hospitalar'),
	(2, null, 'Agenda de consulta presencial'),
	(3, null, 'Agenda de consulta domiciliar'),
	(4, null, 'Agenda de consulta online'),
	(5, null, 'Testes Rápido (como Gravidez, Câncer de Mama, Hormonal e etc.)'),
	(6, null, 'Receita médica'),
	(7, null, 'Check-Up presencial'),
	(8, null, 'Check-Up domiciliar'),
	(9, null, 'Check-Up Empresarial');

create table exame (
	atd_protocolo int foreign key,
	cod_exame int primary key,
	nome_exame varchar
),

insert into exame values (null, 1, 'Exame de Sangue - Geral'),
	(null, 2, 'Exame de Urina - Geral')
	(null, 3, 'Exame de Urina - Rotina'),
	(null, 4, 'Exame de Urina - 24h'),
	(null, 5, 'Exame de Sangue - Check-Up'),
	(null, 6, 'Exame de Urina - Check-Up'),
	(null, 7, 'Ultrassonografia'),
	(null, 8, 'Ecocardiograma'),
	(null, 9, 'Eletrocardiograma'),
	(null, 10, 'Teste Ergométrico'),
	(null, 11, 'Papanicolau'),
	(null, 12, 'Mamografia'),
	(null, 13, 'Ultrassonografia transvaginal'),
	(null, 14, 'Prostáta'),
	(null, 15, 'Toque Retal'),
	(null, 16, 'Dosagem de PSA'),
	(null, 17, 'Teste de HIV'),
	(null, 18, 'Teste de Sífilis'),
	(null, 19, 'Teste de Gravidez - Urina'),
	(null, 20, 'Teste de Gravidez - Sangue'),
	(null, 21, 'Tomografia'),
	(null, 22, 'Exame Neurológico'),
	(null, 23, 'Ressonância magnética'),
	(null, 24, 'Spect Cerebral | Diagnostico Psicológico-Psiquiátrico');


create table solicitacao_medicamento (
	cod_remedio int foreign key,
    medicamento varchar(100),
    protocolo_solicitacao int primary key,
    cod_tarja int foreign key
    
);