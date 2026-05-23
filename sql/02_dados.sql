INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Interestelar', 'Ficcao Cientifica', 'Christopher Nolan', 2014, 8.6);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Oppenheimer', 'Drama', 'Christopher Nolan', 2023, 8.3);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Inception', 'Ficcao Cientifica', 'Christopher Nolan', 2010, 8.8);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Matrix', 'Ficcao Cientifica', 'Wachowski', 1999, 8.7);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Dunkirk', 'Acao', 'Christopher Nolan', 2017, 7.9);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Parasita', 'Drama', 'Bong Joon-ho', 2019, 8.5);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Tenet', 'Ficcao Cientifica', 'Christopher Nolan', 2020, 7.3);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Blade Runner 2049', 'Ficcao Cientifica', 'Denis Villeneuve', 2017, 8.0);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('Clube da Luta', 'Drama', 'David Fincher', 1999, 8.8);
INSERT INTO cf_filmes (titulo, genero, diretor, ano, nota_media) VALUES ('O Poderoso Chefao', 'Drama', 'F. F. Coppola', 1972, 9.2);

INSERT INTO cf_usuarios (username, email) VALUES ('joao', 'joao@teste.com');
INSERT INTO cf_usuarios (username, email) VALUES ('maria', 'maria@teste.com');

INSERT INTO cf_playlists (usuario_id, nome) VALUES (1, 'Favoritos Sci-Fi');

INSERT INTO cf_usuario_filmes (usuario_id, filme_id, nota_usuario) VALUES (1, 1, 9);
INSERT INTO cf_usuario_filmes (usuario_id, filme_id, nota_usuario) VALUES (1, 3, 8);
INSERT INTO cf_usuario_filmes (usuario_id, filme_id, nota_usuario) VALUES (1, 4, 9);

COMMIT;
