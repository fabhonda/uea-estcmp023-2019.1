drop table cliente;
drop table dept;
drop table emp;
drop table produto;
drop table pedido;
drop table cargos;

create table cliente
(
 ID			integer 	not null,
 NOME			varchar(50) 	CONSTRAINT cliente_nome_nn NOT NULL,
 TELEFONE		varchar(25),
 ENDERECO		varchar(400),
 CIDADE			varchar(30),
 ESTADO			varchar(20),
 PAIS			varchar(30),
 CEP			varchar(75),
 CREDITO		varchar(9),
 ID_VENDEDOR		integer,
 ID_REGIAO		integer,	
 COMENTARIOS		varchar(255),
	CONSTRAINT cliente_id_pk PRIMARY KEY (id),
	CONSTRAINT cliente_credito_ck
		CHECK (credito in ('Excelente', 'Bom', 'Pobre'))
);


create table dept
(
 ID			integer	not null,
 NOME			varchar(25)	CONSTRAINT dept_nome_nn NOT NULL,
 ID_REGIAO		integer,
	CONSTRAINT dept_id_pk PRIMARY KEY (id),
	CONSTRAINT dept_nome_id_regiao_uk UNIQUE (nome, id_regiao) 	
);


create table emp
(
 ID			integer 	not null,
 ULTIMO_NOME		varchar(25) 	CONSTRAINT emp_ultimo_nome_nn NOT NULL,
 PRIMEIRO_NOME		varchar(25),
 USERID			varchar(8)	CONSTRAINT emp_userid_nn NOT NULL,
 DATA_INICIO		date,
 COMENTARIOS		varchar(255),
 ID_GERENTE		integer,
 CARGO			varchar(25),
 ID_DEPT		integer,
 SALARIO		integer,
 PCT_COMISSAO		integer,
	CONSTRAINT emp_id_pk PRIMARY KEY (id),
	CONSTRAINT emp_userid_uk UNIQUE (userid),
	CONSTRAINT emp_pct_comissao_ck
		CHECK (pct_comissao IN (10, 12, 15, 17, 20))
);

create table pedido
(
ID			integer,
ID_CLIENTE		integer CONSTRAINT pedido_id_cliente_nn NOT NULL,
DATA_PEDIDO		DATE,
DATA_ENTREGA		DATE,
ID_VENDEDOR		integer,
TOTAL			integer,
TIPO_PAGAMENTO		varchar(6),
PEDIDO_COMPLETADO	varchar(1),
	CONSTRAINT pedido_id_pk PRIMARY KEY (ID),
	CONSTRAINT pedido_tipo_pagamento_ck 
		CHECK (tipo_pagamento in ('CASH', 'CREDIT')),
	CONSTRAINT pedido_ped_completado_ck
		CHECK (pedido_completado in ('Y', 'N'))
);



create table produto
(
ID			integer,
NOME			varchar(50) CONSTRAINT produto_nome_nn NOT NULL,
DESCRICAO		varchar(255),
ID_TEXTOLONGO		integer,
ID_IMAGEM		integer,
PRECO_SUGERIDO		integer,
UNIDADES		varchar(25),
	CONSTRAINT produto_id_pk PRIMARY KEY (ID),
	CONSTRAINT produto_nome_uk UNIQUE (nome)
);
 
create table cargos
(
CARGO			varchar(25),
	CONSTRAINT cargos_cargo_pk PRIMARY KEY (cargo)
);

