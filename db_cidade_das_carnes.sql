CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45)
);

CREATE TABLE tb_produto(
	id_produto INT NOT NULL AUTO_INCREMENT PRiMARY KEY,
    nome_produto VARCHAR(45) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
	data_do_abate DATE NOT NULL,
    preco FLOAT NOT NULL,
    fk_categoria INT NOT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)   
);

INSERT INTO tb_categoria (nome_categoria)
VALUES
("Carne de Primeira"),
("Carne de Segunda"),
("Carne de Terceira"),
("Carne Branca"),
("Carne Exotica");

INSERT INTO tb_produto (nome_produto, descricao, data_do_abate ,preco, fk_categoria) 
VALUES 
("Coxão duro", "Sim eu não sei os tipos de carnes perdão", "2022-01-1" , "50.30", "2"), 
("Picanha x", "Essa aqui é a super picanha", "2022-01-10" , "100.28", "1"), 
("Contrafilé", "O cara do contra", "2022-01-12" , "30.90", "2"), 
("Coxão mole", "Esse é bom", "2022-01-10" , "50.90", "2"), 
("Filé mignon", "Quem não curte um filezinho", "2022-01-13" , "60.00", "1"), 
("Traseiro", "É não sei", "2022-01-5" , "20.00", "2"), 
("Fraldinha", "A frauda ta cara demais", "2022-01-3" , "80.00", "1"), 
("Frango", "Bom e velho frango", "2022-01-1" , "85.13", "3"), 
("Coração", "Coração foi destruido :(", "2022-01-02" , "10.63", "2");




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
ON tb_produto.fk_categoria = tb_categoria.id_categoria AND tb_categoria.id_categoria = "2"; 