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

/*
INSERT INTO lancamento (data_pagamento, data_vencimento, descricao, tipo, valor, codigo_categoria, codigo_pessoa)
VALUES ('2019-05-02','2019-05-03','Salario Mensal', 'RECEITA', 3000.00, 1, 2);

INSERT INTO lancamento (data_pagamento, data_vencimento, descricao, tipo, valor, codigo_categoria, codigo_pessoa)
VALUES ('2019-06-01','2019-06-03','Salario Quinzenal', 'DESPESA', 2500.00, 3, 3);
*/

/*
INSERT INTO usuario (codigo, nome, email, senha) VALUES (1, 'Administrador', 'admin@algamonei.com', '$2a$10$0UQt/u7JKuSoih9hVNj7YOr4Zki2NU6Ny7T3QkiJ7vfX2HVLQupP2');
INSERT INTO usuario (codigo, nome, email, senha) VALUES (2, 'Maria', 'maria@algamonei.com', '$2a$10$B7p8RpPUkM8pnZJk2T2BXeNL3u/RqQDZRy6Q9P5x6DYKtTRXOvRVq');

INSERT INTO permissao (codigo, descricao) VALUES (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (codigo, descricao) VALUES (2, 'ROLE_PESQUISAR_CATEGORIA');
INSERT INTO permissao (codigo, descricao) VALUES (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (codigo, descricao) VALUES (4, 'ROLE_REMOVER_PESSOA');
INSERT INTO permissao (codigo, descricao) VALUES (5, 'ROLE_PESQUISAR_PESSOA');
INSERT INTO permissao (codigo, descricao) VALUES (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (codigo, descricao) VALUES (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (codigo, descricao) VALUES (8, 'ROLE_PESQUISAR_LANCAMENTO');

INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 1);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 3);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 4);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 6);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 7);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (1, 8);

INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 2);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 5);
INSERT INTO usuario_permissao (codigo_usuario, codigo_permissao) VALUES (2, 8);


*/