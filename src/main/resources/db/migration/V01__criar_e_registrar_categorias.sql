/*Arquivo utilizado para sistemas de migração, por exemplo: FlyWay.
Ao colocar a dependencia de um sistema de migração no pom.xml.
 ao subir uma aplicação este sistemas vai identificar todos arquivos .sql do projeto.
 E vai criar o banco de dados e atualizar de acordo com os escripts desses arquivos,
 ignorando o trabalho do hibernate.
 */

/*CREATE TABLE categoria (
codigo bigserial CONSTRAINT pk_codigo PRIMARY KEY ,
nome varchar(20) NOT NULL);
*/

/*
INSERT INTO categoria (nome) VALUES ('Lazer');
INSERT INTO categoria (nome) VALUES ('Alimentação');
INSERT INTO categoria (nome) VALUES ('Supermercado');
INSERT INTO categoria (nome) VALUES ('Famrmácia');
INSERT INTO categoria (nome) VALUES ('Outros');
*/