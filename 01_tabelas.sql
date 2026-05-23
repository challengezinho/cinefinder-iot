CREATE TABLE cf_filmes (
  id         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  titulo     VARCHAR2(200) NOT NULL,
  genero     VARCHAR2(50)  NOT NULL,
  diretor    VARCHAR2(100),
  ano        NUMBER(4),
  nota_media NUMBER(3,1) DEFAULT 0,
  descricao  VARCHAR2(500)
);

CREATE TABLE cf_usuarios (
  id        NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  username  VARCHAR2(100) NOT NULL UNIQUE,
  email     VARCHAR2(200),
  criado_em DATE DEFAULT SYSDATE
);

CREATE TABLE cf_playlists (
  id         NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  usuario_id NUMBER REFERENCES cf_usuarios(id),
  nome       VARCHAR2(100) NOT NULL,
  descricao  VARCHAR2(300),
  publica    CHAR(1) DEFAULT 'S'
);

CREATE TABLE cf_usuario_filmes (
  id           NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  usuario_id   NUMBER REFERENCES cf_usuarios(id),
  filme_id     NUMBER REFERENCES cf_filmes(id),
  playlist_id  NUMBER REFERENCES cf_playlists(id),
  nota_usuario NUMBER(2),
  assistido_em DATE DEFAULT SYSDATE,
  UNIQUE(usuario_id, filme_id)
);
