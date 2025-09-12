
CREATE DATABASE loja_de_roupas;

use loja_de_roupas; 

CREATE TABLE produtos (
     id_produto INT AUTO_INCREMENT PRIMARY KEY,
     nome VARCHAR(50) NOT NULL,
     descricao VARCHAR(255),
     preco DECIMAL(10, 2) NOT NULL,
     estoque INT NOT NULL DEFAULT 0
     );
     
