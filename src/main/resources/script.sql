CREATE TABLE users (
   username varchar(20) NOT NULL,
   password varchar(20) NOT NULL,
   enabled boolean NOT NULL DEFAULT FALSE,
   primary key(username)
);

create table user_roles (
  user_role_id SERIAL PRIMARY KEY,
  username varchar(20) NOT NULL,
  role varchar(20) NOT NULL,
  UNIQUE (username,role),
  FOREIGN KEY (username) REFERENCES users (username)
);

INSERT INTO users (username,password,enabled) VALUES ('maturin','maturin', true);
INSERT INTO users (username,password,enabled) VALUES ('paterson','paterson', true);
INSERT INTO users (username,password,enabled) VALUES ('carole','carole', true);
INSERT INTO users (username,password,enabled) VALUES ('ariane','ariane', true);

INSERT INTO user_roles (username, role) VALUES ('maturin', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('maturin', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('paterson', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('paterson', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('carole', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('carole', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role) VALUES ('ariane', 'ROLE_USER');
INSERT INTO user_roles (username, role) VALUES ('ariane', 'ROLE_ADMIN');