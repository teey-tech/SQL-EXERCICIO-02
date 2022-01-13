CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagem(
	id_personagem INT NOT NULL AUTO_INCREMENT,
    nome_personagem VARCHAR(45) NOT NULL,
    sexo VARCHAR(45) NOT NULL,
    raca VARCHAR(45) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    
    PRiMARY KEY (id_personagem)
);

CREATE TABLE tb_classe(
	id_classe INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(45),
    nome_sub_classe VARCHAR(45),
    fk_personagem INT,
    
    FOREIGN KEY (fk_personagem) REFERENCES tb_personagem (id_personagem)   
);


INSERT INTO tb_personagem (nome_personagem, sexo, raca, nivel, poder_ataque, poder_defesa) 
VALUES 
("Thiago Batista", "Homem", "Humano", "99" ,"9999", "1999"), 
("Gustavo Boaz", "Homem", "Humano","20", "2150", "1200"), 
("Luiz Melin", "Homem", "Humano","05", "500", "100"), 
("Rodrigo Baba","Homem", "Humano", "15", "2100", "1500"),
("Isabel","Mulher", "Humano", "60", "7100", "3500"),
("Bruno","Homem", "Humano", "30", "1000", "1400"),
("Lucas Henrique","Homem", "Humano", "29", "1350", "1450"),
("Armando","Homem", "Humano", "88", "8000", "8400"),
("Caramelo","Mulher", "Lagarto", "89", "8100", "8500"),
("Caracol","Mulher", "Bestial", "01", "100", "100");

INSERT INTO tb_classe (nome_classe, nome_sub_classe, fk_personagem)
VALUES
("Guerreiro", "Forjador de Equipamentos", "1"),
("Arqueiro", "Adestrador de lobos", "2"),
("Mago", "criador de poções", "3"),
("Invocador", "Pesca", "4"),
("Curandeiro", "Agrônomo", "5"),
("Arqueiro", "Adestrador de lobos", "6"),
("Guerreiro", "Forjador de Equipamentos", "7"),
("Mago", "criador de poções", "8"),
("Curandeiro", "Agrônomo", "9"),
("Invocador", "Pesca", "10");

SELECT * FROM tb_personagem
WHERE poder_ataque > 2000;

select * from tb_personagem where nome_personagem like "%C%";

SELECT * FROM tb_personagem
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_classe
INNER JOIN tb_personagem
ON tb_classe.fk_personagem = tb_personagem.id_personagem; 

SELECT tb_classe.nome_classe, tb_personagem.nome_personagem,  tb_personagem.poder_ataque,  tb_personagem.poder_defesa,  tb_personagem.nivel 
FROM tb_classe
INNER JOIN tb_personagem
ON tb_classe.fk_personagem = tb_personagem.id_personagem; 


SELECT tb_classe.nome_classe, tb_personagem.nome_personagem,  tb_personagem.poder_ataque,  tb_personagem.poder_defesa,  tb_personagem.nivel 
FROM tb_classe
INNER JOIN tb_personagem
ON tb_classe.fk_personagem = tb_personagem.id_personagem AND tb_classe.nome_classe = "Arqueiro"; 
