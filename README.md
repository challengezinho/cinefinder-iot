# CineFinder — IA de Recomendação de Filmes

## Integrantes
- João Alves — RM559369
- Felipe Anselmo - RM560661
- Matheus Mariotto - RM560276

## Descrição
Plataforma de organização de filmes com motor de recomendação
baseado em análise do histórico do usuário, integrado ao Oracle APEX.

## Como funciona a IA
A função `fn_recomendar_filmes` calcula um score para cada filme
não assistido, baseado em
- Mesmo gênero dos filmes assistidos → peso 3
- Mesmo diretor dos filmes assistidos → peso 2
- Nota média do filme → peso 1

Filmes com maior score aparecem primeiro na página de recomendações.

## Tecnologias
- Oracle APEX
- Oracle SQL  PLSQL
- Algoritmo de scoring por similaridade de histórico

## Como executar
1. No SQL Workshop do APEX, rode os scripts na ordem
   - sql01_tabelas.sql
   - sql02_dados.sql
   - sql03_funcao_ia.sql
   - sql04_teste.sql
2. Importe o app apexcinefinder_app.sql
3. Acesse a página Recomendações IA

## Link do vídeo
[YouTube — em breve]
