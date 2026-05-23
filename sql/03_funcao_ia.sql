CREATE OR REPLACE FUNCTION fn_recomendar_filmes(
  p_usuario_id IN NUMBER,
  p_limite     IN NUMBER DEFAULT 6
) RETURN SYS_REFCURSOR IS
  v_cursor SYS_REFCURSOR;
BEGIN
  OPEN v_cursor FOR
    SELECT
      f.id,
      f.titulo,
      f.genero,
      f.diretor,
      f.nota_media,
      (
        (SELECT COUNT(*) * 3
         FROM cf_usuario_filmes uf JOIN cf_filmes f2 ON uf.filme_id = f2.id
         WHERE uf.usuario_id = p_usuario_id AND f2.genero = f.genero)
        +
        (SELECT COUNT(*) * 2
         FROM cf_usuario_filmes uf JOIN cf_filmes f2 ON uf.filme_id = f2.id
         WHERE uf.usuario_id = p_usuario_id AND f2.diretor = f.diretor)
        + ROUND(f.nota_media)
      ) AS score_ia,
      CASE
        WHEN (SELECT COUNT(*) FROM cf_usuario_filmes uf JOIN cf_filmes f2 ON uf.filme_id = f2.id
              WHERE uf.usuario_id = p_usuario_id AND f2.diretor = f.diretor) > 0
        THEN 'Voce curte filmes de ' || f.diretor
        ELSE 'Genero favorito: ' || f.genero
      END AS motivo
    FROM cf_filmes f
    WHERE f.id NOT IN (
      SELECT filme_id FROM cf_usuario_filmes WHERE usuario_id = p_usuario_id
    )
    ORDER BY score_ia DESC
    FETCH FIRST p_limite ROWS ONLY;
  RETURN v_cursor;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001, 'Erro: ' || SQLERRM);
END fn_recomendar_filmes;
/
