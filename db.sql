mysql -u root -p
CREATE DATABASE loja;
CREATE TABLE bololojaja (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
GRANT permissao ON nomedobanco.nomedatabela TO 'user'@'localhost';
CREATE EVENT atualiza_status_clientes
ON SCHEDULE EVERY 1 DAY
DO
UPDATE clientes SET status = 'inativo' WHERE data_ultima_atividade < DATE_SUB(NOW(), INTERVAL 1 YEAR);

