
/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.*/


CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_boletin(
	id BIGINT AUTO_INCREMENT,
    nome_aluno VARCHAR(255),
    matricula INT,
    serie INT,
    nota_matematica DECIMAL (10,2),
    
    PRIMARY KEY(id)    
);

SELECT * FROM tb_boletin;

INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Maria Eduarda",20221,7,8.0);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Ana Luiza",20222,8,6.0);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Paulo André",20223,7,9.0);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Mariana Lima",20223,7,5.5);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Rafaella Souza",20224,6,8.0);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Vitor José",20225,5,10);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Matheus Araujo",20226,8,5.5);
INSERT INTO tb_boletin(nome_aluno,matricula,serie,nota_matematica) VALUES("Marcos Vinicius",20227,8,6.0);

-- Pesquisar por letra usando o LIKE
SELECT * FROM tb_boletin WHERE nome_aluno LIKE "%M%";

SELECT * FROM tb_boletin WHERE nota_matematica > 7;

SELECT * FROM tb_boletin WHERE nota_matematica < 7;

UPDATE tb_boletin SET matricula = 20228 WHERE id = 3;

SELECT * FROM tb_boletin;







