-- Teste: recomendacoes para o usuario 1
-- Esperado: Tenet e Dunkirk no topo (Nolan + Sci-Fi)
SELECT
  f.titulo,
  f.genero,
  f.diretor,
  (
    (SELECT COUNT(*)*3 FROM cf_usuario_filmes uf JOIN cf_filmes f2 ON uf.filme_id = f2.id
     WHERE uf.usuario_id = 1 AND f2.genero = f.genero)
    +
    (SELECT COUNT(*)*2 FROM cf_usuario_filmes uf JOIN cf_filmes f2 ON uf.filme_id = f2.id
     WHERE uf.usuario_id = 1 AND f2.diretor = f.diretor)
    + ROUND(f.nota_media)
  ) AS score_ia
FROM cf_filmes f
WHERE f.id NOT IN (
  SELECT filme_id FROM cf_usuario_filmes WHERE usuario_id = 1
)
ORDER BY score_ia DESC;
