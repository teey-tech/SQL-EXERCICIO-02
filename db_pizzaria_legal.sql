CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45)

);

CREATE TABLE tb_pizza(
	id_pizza INT NOT NULL AUTO_INCREMENT PRiMARY KEY,
    nome_cliente VARCHAR(45) NOT NULL,
    nome_pizza VARCHAR(45) NOT NULL,
    descricao VARCHAR(45) NOT NULL,
    preco INT NOT NULL,
    fk_categoria INT NOT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)   
);

INSERT INTO tb_categoria (nome_categoria)
VALUES
("Pizza Salgada"),
("Pizza Doce"),
("Pizza Meia doce Meia salgada"),
("Pizza Frita"),
("Pizza Seca");

INSERT INTO tb_pizza (nome_cliente, nome_pizza, descricao, preco, fk_categoria) 
VALUES 
("Thiago Batista", "Pizza Frango e Catupiry", "Não adicionar milho", "50" , "1"), 
("Luiz Melim", "Pizza de morango com chocolate", "Trazer um refrigerante tambem", "60", "2"), 
("Gustavo Boaz", "Pizza de Leite Ninho", "Rechear bem a pizza", "30" , "2"), 
("Isabel", "Pizza de Lombo e Catupiry", "Espero que a pizza chegue quente dessa vez", "45" ,"1"), 
("Bruno", "Pizza de Sorvete", "Talvez não exista to sem criatividade", "85", "2"), 
("Gui", "Pizza de Robalo e Cheddar", "Porque não?", "48" , "1tb_pizzatb_pizzatb_pizza"), 
("Vagnão", "Pizza de Snickers", "Porque não? 2.0", "64" , "2"),
("Roberto Carlos", "Pizza Seca", "Nunca vi isso mas existe", "30" , "5");




SELECT * FROM tb_pizza
WHERE preco > 45;

select * from tb_pizza where nome_pizza like "%C%";

SELECT * FROM tb_pizza
WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.fk_categoria = tb_categoria.id_categoria; 

SELECT tb_categoria.nome_categoria , tb_pizza.nome_pizza
FROM tb_categoria
INNER JOIN tb_pizza
ON tb_pizza.fk_categoria = tb_categoria.id_categoria AND tb_categoria.id_categoria = "2";