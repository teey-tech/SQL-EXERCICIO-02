CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45)
);

CREATE TABLE tb_produto(
	id_produto INT NOT NULL AUTO_INCREMENT PRiMARY KEY,
    nome_produto VARCHAR(45) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
    preco FLOAT NOT NULL,
    fk_categoria INT NOT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)   
);

INSERT INTO tb_categoria (nome_categoria)
VALUES
("Moveis"),
("Eletrodomesticos"),
("Informatica"),
("Games"),
("Moda");

INSERT INTO tb_produto (nome_produto, descricao, preco, fk_categoria) 
VALUES 
("Sofa 6 lugares", "Sim esse sofa é bom", "500.30", "1"), 
("Camisa do Ronaldo", "Essa aqui é lendaria e está em promoção", "5.90", "5"), 
("Geladeira Electrolux", "Essa é pesada literalmente promoção", "50.90", "2"), 
("Forno micro-ondas Electrolux", "Unica marca que está na cabeça", "69.99", "2"), 
("Playstation 5", "Promoção especial", "6500.00", "3"), 
("Game: Final Fantasy 7", "Bom jogo", "20.00", "3"), 
("Game: Fifa 2021", "Paga caro pra passar raiva", "55.00", "3"), 
("Game: Pes 2020", "Não gaste dinheiro com isso", "5.13", "3"), 
("Sofa 3 lugares", "Tamanho não é tudo sofa confortavel :)",  "10.63", "1");




SELECT * FROM tb_produto
WHERE preco > 50;

select * from tb_produto where nome_produto like "%C%";

SELECT * FROM tb_produto
WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.fk_categoria = tb_categoria.id_categoria; 

SELECT tb_categoria.nome_categoria , tb_produto.nome_produto
FROM tb_categoria
INNER JOIN tb_produto
ON tb_produto.fk_categoria = tb_categoria.id_categoria AND tb_categoria.id_categoria = "3";