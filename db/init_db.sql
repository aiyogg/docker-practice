-- CREATE USER 'Chuck'@'%' IDENTIFIED BY '123@abc';
-- GRANT ALL ON *.* TO 'Chuck'@'%';
-- GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'password';

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(20) DEFAULT NULL,
    nickname VARCHAR(30) DEFAULT NULL,
    email VARCHAR(100) DEFAULT NULL,
    avatar VARCHAR(500) DEFAULT NULL,
    status TINYINT DEFAULT 0 COMMENT '0: normal, 1: frozen, -1: deleted',
    pwd VARCHAR(200) NOT NULL,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users (name, nickname, email, pwd) VALUES ('admin', 'Chuck', 'i@chenteng.me', 'fc76c4a86c56becc717a88f651264622');
