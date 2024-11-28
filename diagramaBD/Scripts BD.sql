CREATE TABLE PESSOA_LOGIN(
ID INT PRIMARY KEY auto_increment,
NOME VARCHAR(50) NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
GENERO VARCHAR(20),
CELULAR VARCHAR(11),
USUARIO VARCHAR(30),
SENHA VARCHAR(20),
ADMINISTRADOR CHAR
);

CREATE TABLE ALUGA(
FOREIGN KEY (ID_PESSOA) REFERENCES PESSOA_LOGIN(ID),
FOREIGN KEY (ID_LOCAVEL) REFERENCES LOCAVEIS(ID)
);

CREATE TABLE LOCAVEIS(
ID INT PRIMARY KEY auto_increment,
TIPO VARCHAR(30) NOT NULL,
DESCRICAO VARCHAR(50)
);

CREATE TABLE CONFIRMA(
FOREIGN KEY (ID_LOCAVEL) REFERENCES LOCAVEIS(ID),
FOREIGN KEY (ID_RESERVA) REFERENCES RESERVA(ID_RESERVA),
DATALOC DATETIME
);

CREATE TABLE RESERVA(
ID_RESERVA INT PRIMARY KEY auto_increment,
NOME_LOCAVEL VARCHAR(30) NOT NULL,
DT_INICIO DATETIME,
DT_FIM DATETIME,
USUARIO VARCHAR(30),
ID_LOCAVEL VARCHAR(5)
);


--DADOS PRODUTOS--
INSERT INTO LOCAVEIS(TIPO, DESCRICAO) VALUES('NOTEBOOK', 'NOTEBOOK LENOVO');
INSERT INTO LOCAVEIS(TIPO, DESCRICAO) VALUES('NOTEBOOK', 'NOTEBOOK DELL');
INSERT INTO LOCAVEIS(TIPO, DESCRICAO) VALUES('PROJETOR', 'PROJETOR LG');
INSERT INTO LOCAVEIS(TIPO, DESCRICAO) VALUES('PROJETOR', 'PROJETOR MULTILASER');
INSERT INTO LOCAVEIS(TIPO, DESCRICAO) VALUES('PROJETOR', 'PROJETOR EPSON');

INSERT INTO PESSOA_LOGIN(NOME, EMAIL, GENERO, CELULAR, USUARIO, SENHA, ADMINISTRADOR) VALUES('ADMIN', 'admin@admin.com', 'Masculino', '990208070', 'admin', 'admin', 'Y');
