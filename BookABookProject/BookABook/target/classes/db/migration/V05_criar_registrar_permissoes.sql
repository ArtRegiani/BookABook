
CREATE TABLE permission (
	id BIGINT(20) PRIMARY KEY,
	description VARCHAR(50) NOT NULL
) 

CREATE TABLE user_permission (
	id_user BIGINT(20) NOT NULL,
	id_permission BIGINT(20) NOT NULL,
	PRIMARY KEY (id_user, id_permission),
	FOREIGN KEY (id_user) REFERENCES user(id),
	FOREIGN KEY (id_permission) REFERENCES permission(id)
) 

-- admin
INSERT INTO user (id, name, email, password, age, gender, active) values (3, 'Administrador', 'admin@bookabook.com', '$2a$10$X607ZPhQ4EgGNaYKt3n4SONjIv9zc.VMWdEuhCuba7oLAL5IvcL5.', 23, 'MASCULINO', 1);

-- user
INSERT INTO permission (id, description) values (1, 'ROLE_REGISTER_USER');
INSERT INTO permission (id, description) values (2, 'ROLE_REMOVE_USER');
INSERT INTO permission (id, description) values (3, 'ROLE_SEARCH_USER');

-- activity
INSERT INTO permission (id, description) values (4, 'ROLE_REGISTER_REVIEW');
INSERT INTO permission (id, description) values (5, 'ROLE_REMOVE_REVIEW');
INSERT INTO permission (id, description) values (6, 'ROLE_SEARCH_REVIEW');

-- admin
INSERT INTO user_permission (id_user, id_permission) values (3, 1);
INSERT INTO user_permission (id_user, id_permission) values (3, 2);
INSERT INTO user_permission (id_user, id_permission) values (3, 3);
INSERT INTO user_permission (id_user, id_permission) values (3, 4);
INSERT INTO user_permission (id_user, id_permission) values (3, 5);
INSERT INTO user_permission (id_user, id_permission) values (3, 6);

-- fernando
INSERT INTO user_permission (id_user, id_permission) values (1, 1);
INSERT INTO user_permission (id_user, id_permission) values (1, 3);
INSERT INTO user_permission (id_user, id_permission) values (1, 4);
INSERT INTO user_permission (id_user, id_permission) values (1, 5);
INSERT INTO user_permission (id_user, id_permission) values (1, 6);

-- gislaine
INSERT INTO user_permission (id_user, id_permission) values (2, 1);
INSERT INTO user_permission (id_user, id_permission) values (2, 3);
INSERT INTO user_permission (id_user, id_permission) values (2, 4);
INSERT INTO user_permission (id_user, id_permission) values (2, 5);
INSERT INTO user_permission (id_user, id_permission) values (2, 6);

