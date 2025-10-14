CREATE DATABASE vendas_online;

USE vendas_online;

CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
  );

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  data_pedido DATE NOT NULL DEFAULT (CURRENT_DATE),
  valor_total DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
  );
