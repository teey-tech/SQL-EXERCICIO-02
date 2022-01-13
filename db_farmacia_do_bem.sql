CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45)
);

CREATE TABLE tb_produto(
	id_produto INT NOT NULL AUTO_INCREMENT PRiMARY KEY,
    nome_produto VARCHAR(45) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
    data_validade  DATE NOT NULL,
    preco FLOAT NOT NULL,
    fk_categoria INT NOT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)   
);

INSERT INTO tb_categoria (nome_categoria)
VALUES
("Remedios Originais"),
("Remedios Genericos"),
("Vitaminas"),
("Suplementos"),
("Cremes Dermatológicos");

INSERT INTO tb_produto (nome_produto, descricao, data_validade ,preco, fk_categoria) 
VALUES 
("Novalgina", "Recomendado quando o cliente está tendo febre", "2022-05-27" , "6.25", "1"), 
("Vitanox x", "Vitaminas", "2022-06-20" , "5.28", "3"), 
("Suplemento Vitamínico Centrum Essentials ", "Esse deve fazer efeito", "2022-10-01" , "64.90", "3"), 
("Suplemento Alimentar Centrum Pró Imunidade 60", "Vem 60 comprimidos só vai", "2023-05-27" , "114.90", "3"), 
("Whey Protein Pure Baunilha 907g", "Esse vai te deixar monstro", "2023-06-27" , "100.95", "4"), 
("Nutri Whey Protein Chocolate 907g", "Sabor chocolate", "2023-01-27" , "96.92", "4"), 
("Best Whey Protein Double Chocolete 25g", "Bom demais", "2022-02-27" , "8.09", "4"), 
("Suplemento de Vitaminas e Minerais", "Vitamina vem forte", "2022-09-29" , "85.13", "3"), 
("Suplemento Alimentar VitaMedley", "WOW", "2022-12-27" , "65.63", "3");




SELECT * FROM tb_produto
WHERE preco > 50;

select * from tb_produto where nome_produto like "%B%";

SELECT * FROM tb_produto
WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_categoria = tb_categoria.id_categoria; 

SELECT tb_categoria.nome_categoria , tb_produto.nome_produto
FROM tb_categoria
INNER JOIN tb_produto
ON tb_produto.fk_categoria = tb_categoria.id_categoria AND tb_categoria.id_categoria = "4";