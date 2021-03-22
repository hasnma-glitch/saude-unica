/* Hospital, UPA, UBS */
create table hospital (
  cod int,
  CNES int primary key,
  nome_localsaude varchar(100),
  CNPJ int,
  cep int,
  endereco varchar(100),
  bairro varchar(100) NOT NULL,
  cidade varchar(100) NOT NULL,
  estado varchar(2),
  telefone int,
  email char
),

/* Seleção de Convênio */

create table convenio (
    id_convenio int,
    cnpj int,
    convenio varchar
),

/* Número de protocolo de atendimento */

create table atendimento (
    protocolo_atd int,
    cod_registro int,
    nome varchar,
    cod_cns text,
    tp_consulta char,
)

/* Paciente */

create table paciente (
    cns int(15),
    cns_sec int(15),
    cpf int(11),
    nome varchar(100),
    cep int,
    endereco varchar(100),
    bairro char,
    cidade varchar,
    estado char,
    celular number,
    email char
),

/* Exames */

create table exame (
    protocolo_exame int,
    nome_inshospitalar varchar(100),
    exame char,
    nome_med varchar,
    protocolo_atd int foreign key,
    data_exame datetime,
    id_convenio int foreign key,
    tp_consulta char
),

/* Remédios e/ou laboratório */

create table laboratorio (
    id_laboratorio int,
    nome_lab varchar(100),
    cnpj int
)

create table medicamento (
    tp_produto char,
    nome_produto varchar(102) primary key,
    dt_final_processo date,
    categoria_reguladora char(50),
    cod_registro_produto varchar(43),
    dt_vencimento_registro date,
    numero_processo varchar(21) not null,
    classe_terapeutica varchar(164),
    empresa_detentora_registro varchar(110) not null,
    principio_ativo varchar(1158)
);
