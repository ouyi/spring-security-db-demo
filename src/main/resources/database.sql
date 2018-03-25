CREATE DATABASE IF NOT EXISTS test;

USE test;

CREATE TABLE IF NOT EXISTS role (
  role_id int(11) NOT NULL AUTO_INCREMENT,
  role varchar(255) DEFAULT NULL,
  PRIMARY KEY (role_id)
);

INSERT INTO role (role_id, role)
VALUES
    (1,'ROLE_ADMIN');

CREATE TABLE IF NOT EXISTS user (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  active int(11) DEFAULT NULL,
  email varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (user_id)
);

INSERT INTO user (user_id, active, email, last_name, first_name, username, password)
VALUES
	(1,1,'admin@gmail.com','A','Admin', 'root', 'root'),
	(2,1,'user@gmail.com','U','User', 'user', 'user');

CREATE TABLE IF NOT EXISTS user_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL,
  PRIMARY KEY (user_id, role_id),
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES user (user_id),
  CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES role (role_id)
);

INSERT INTO user_role (user_id, role_id)
VALUES
	(1,1);
