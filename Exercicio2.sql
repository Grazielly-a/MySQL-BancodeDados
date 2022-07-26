/*Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    unidade VARCHAR(255),
    cardapio VARCHAR (255),
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    tamanho CHAR,
    sabor VARCHAR(255),    
    borda_recheada BOOLEAN,
    valor DECIMAL(10,2),
    unidade_id BIGINT,
    cardapio_id BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY(unidade_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(unidade,cardapio) VALUES("Zona Sul","Pizzas");
INSERT INTO tb_categorias(unidade,cardapio) VALUES("Zona Norte","Pizzas");
INSERT INTO tb_categorias(unidade,cardapio) VALUES("Zona Leste","Pizzas");

SELECT * FROM tb_pizzas; 
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("P","Mussarela",true,45,5,5);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("M","Marguerita",true,50,5,5);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("G","Calabresa",false,45,5,5);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("G","Atum",false,50,5,5);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("M","Mussarela",true,45,6,6);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("P","Marguerita",true,50,6,6);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("G","Lombo",true,65,6,6);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("M","Frango",false,55,6,6);
INSERT INTO tb_pizzas(tamanho,sabor,borda_recheada,valor,unidade_id,cardapio_id) VALUES ("G","Frango c/ Catupiry",false,55,7,7);

-- SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45;

-- SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50  AND 100;

-- SELECT utilizando o operador LIKE
SELECT * FROM tb_pizzas WHERE sabor LIKE "M%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.unidade_id;

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica.
-- Zona Norte
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.unidade_id WHERE tb_categorias.id = 6;

-- Zona Sul
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.unidade_id WHERE tb_categorias.id = 5;

-- Zona Leste
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.unidade_id WHERE tb_categorias.id = 7;















