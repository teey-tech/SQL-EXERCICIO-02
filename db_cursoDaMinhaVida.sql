CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(45)
);

CREATE TABLE tb_curso(
	id_curso INT NOT NULL AUTO_INCREMENT PRiMARY KEY,
    nome_curso VARCHAR(45) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    preco FLOAT NOT NULL,
    fk_categoria INT NOT NULL,
    
    FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)   
);

INSERT INTO tb_categoria (nome_categoria)
VALUES
("Curso Presencial"),
("Curso Online"),
("EAD"),
("Mini cursos");

INSERT INTO tb_curso (nome_curso, descricao, preco, fk_categoria) 
VALUES 
("Curso: Java Script Junior", "Sim esse estou fazendo este curso e aprovo", "50.00", "2"), 
("Curso: PHP junior", "Aprenda tudo de PHP e como utilizar o framework Laravel", "35.90", "2"), 
("EAD: Sistemas da informação", "Aprenda tudo sobre sistemas e como utilizar varias ferramentas", "30.90", "3"), 
("Mini Curso: Conversação", "Aprenda a se comunicar melhor com as pessoas", "69.99", "4"), 
("Curso: Programador .NET", "Promoção especial", "30.00", "1"), 
("Curso: Metodologia Scrum", "Aprenda a trabalhar utilizando a metodologia Scrum", "20.00", "2"), 
("Curso: Programador de Jogos", "Venha desenvolver jogos utilizando a nova Unreal engine 5", "55.00", "1"), 
("Curso: Debbuger", "Aprenda a resolver os problemas nos codigos", "5.13", "2"), 
("Mini Curso: Soft Skilss", ":)",  "10.63", "4");

SELECT * FROM tb_curso
WHERE preco > 50;

select * from tb_curso where nome_curso like "%J%";

SELECT * FROM tb_curso
WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_curso
INNER JOIN tb_categoria
ON tb_curso.fk_categoria = tb_categoria.id_categoria; 

SELECT tb_categoria.nome_categoria , tb_curso.nome_curso
FROM tb_categoria
INNER JOIN tb_curso
ON tb_curso.fk_categoria = tb_categoria.id_categoria AND tb_categoria.id_categoria = "2"; 