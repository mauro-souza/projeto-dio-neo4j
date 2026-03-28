// =============================================================
// Script 03 - Demonstração de Queries
// Projeto: Rede Social - Neo4j / DIO Bootcamp
// =============================================================

// =============================================================
// QUERY 1: Listar todas as pessoas cadastradas
// =============================================================
// Objetivo: Retorna todos os nós do tipo Person com suas propriedades.

MATCH (p:Person)
RETURN p.name AS nome, p.age AS idade, p.city AS cidade
ORDER BY p.name;

// Resultado esperado: 8 pessoas ordenadas pelo nome.

// =============================================================
// QUERY 2: Listar todos os posts e seus autores
// =============================================================
// Objetivo: Relaciona cada post com a pessoa que o criou.

MATCH (autor:Person)-[:CREATED]->(post:Post)
RETURN autor.name AS autor, post.content AS conteudo, post.date AS data, post.likes AS curtidas
ORDER BY post.date;

// Resultado esperado: 8 posts com seus respectivos autores.

// =============================================================
// QUERY 3: Encontrar amigos diretos de uma pessoa
// =============================================================
// Objetivo: Retorna todas as pessoas que a Alice conhece diretamente.

MATCH (p:Person {name: 'Alice Silva'})-[:KNOWS]->(amigo:Person)
RETURN amigo.name AS amigo, amigo.city AS cidade;

// Resultado esperado: Bruno Costa e Carla Dias.

// =============================================================
// QUERY 4: Encontrar amigos de amigos (2 graus de separação)
// =============================================================
// Objetivo: Demonstra a travessia de grafos para encontrar conexões indiretas.

MATCH (p:Person {name: 'Alice Silva'})-[:KNOWS*2]->(amigo_de_amigo:Person)
WHERE NOT (p)-[:KNOWS]->(amigo_de_amigo)
  AND p <> amigo_de_amigo
RETURN DISTINCT amigo_de_amigo.name AS nome, amigo_de_amigo.city AS cidade;

// Resultado esperado: pessoas conectadas a 2 graus de Alice (ex.: Daniel Souza, Elena Ferreira).

// =============================================================
// QUERY 5: Caminho mais curto entre duas pessoas
// =============================================================
// Objetivo: Demonstra o algoritmo de caminho mais curto no grafo.

MATCH path = shortestPath(
  (a:Person {name: 'Alice Silva'})-[:KNOWS*]-(b:Person {name: 'Henrique Rocha'})
)
RETURN [node IN nodes(path) | node.name] AS caminho,
       length(path) AS graus_de_separacao;

// Resultado esperado: caminho com número de graus de separação entre Alice e Henrique.

// =============================================================
// QUERY 6: Posts mais curtidos (Top 5)
// =============================================================
// Objetivo: Identifica os posts com maior número de curtidas.

MATCH (autor:Person)-[:CREATED]->(post:Post)
RETURN autor.name AS autor, post.content AS conteudo, post.likes AS curtidas
ORDER BY post.likes DESC
LIMIT 5;

// Resultado esperado: os 5 posts com mais curtidas em ordem decrescente.

// =============================================================
// QUERY 7: Pessoas que curtiram o mesmo post
// =============================================================
// Objetivo: Encontra pares de pessoas com interesse em comum (curtidas no mesmo post).

MATCH (p1:Person)-[:LIKES]->(post:Post)<-[:LIKES]-(p2:Person)
WHERE id(p1) < id(p2)
RETURN p1.name AS pessoa1, p2.name AS pessoa2, post.content AS post_em_comum
ORDER BY p1.name;

// Resultado esperado: pares de pessoas que curtiram o mesmo post.

// =============================================================
// QUERY 8: Pessoas que trabalham na mesma empresa
// =============================================================
// Objetivo: Encontra colegas de trabalho na mesma empresa.

MATCH (p1:Person)-[:WORKS_AT]->(co:Company)<-[:WORKS_AT]-(p2:Person)
WHERE id(p1) < id(p2)
RETURN p1.name AS pessoa1, p2.name AS pessoa2,
       co.name AS empresa, co.sector AS setor;

// Resultado esperado: Alice e Carla (TechBrasil), Daniel e Felipe (CloudBR),
//                     Bruno e Gabriela (InovaData), Elena e Henrique (StartupX).

// =============================================================
// QUERY 9: Quantas conexões cada pessoa possui (grau do nó)
// =============================================================
// Objetivo: Mede a "influência" de cada pessoa pela contagem de conexões.

MATCH (p:Person)
OPTIONAL MATCH (p)-[:KNOWS]->(conhecido)
OPTIONAL MATCH (p)<-[:KNOWS]-(me_conhece)
RETURN p.name AS nome,
       COUNT(DISTINCT conhecido) AS conexoes_saindo,
       COUNT(DISTINCT me_conhece) AS conexoes_chegando
ORDER BY (COUNT(DISTINCT conhecido) + COUNT(DISTINCT me_conhece)) DESC;

// Resultado esperado: lista de pessoas com contagem de conexões.

// =============================================================
// QUERY 10: Estatísticas gerais do banco de dados
// =============================================================
// Objetivo: Visão geral dos dados cadastrados no banco.

MATCH (p:Person)
WITH count(p) AS total_pessoas
MATCH (post:Post)
WITH total_pessoas, count(post) AS total_posts
MATCH (co:Company)
WITH total_pessoas, total_posts, count(co) AS total_empresas
MATCH ()-[r]->()
RETURN total_pessoas, total_posts, total_empresas, count(r) AS total_relacionamentos;

// Resultado esperado: 8 pessoas, 8 posts, 4 empresas, 38 relacionamentos.

// =============================================================
// QUERY 11: Recomendação de conexões (pessoas não conectadas com amigos em comum)
// =============================================================
// Objetivo: Sugere novas conexões com base em amigos em comum — caso de uso típico
//           de redes sociais implementado com grafos.

MATCH (p:Person {name: 'Alice Silva'})-[:KNOWS]->(amigo)-[:KNOWS]->(sugestao:Person)
WHERE NOT (p)-[:KNOWS]->(sugestao)
  AND p <> sugestao
RETURN DISTINCT sugestao.name AS sugestao_de_conexao,
       COUNT(amigo) AS amigos_em_comum
ORDER BY amigos_em_comum DESC;

// Resultado esperado: sugestões de pessoas para Alice com base em amigos em comum.

// =============================================================
// QUERY 12: Empresa com maior número de funcionários
// =============================================================
// Objetivo: Mostra qual empresa tem mais colaboradores cadastrados.

MATCH (p:Person)-[:WORKS_AT]->(co:Company)
RETURN co.name AS empresa, co.sector AS setor, COUNT(p) AS funcionarios
ORDER BY funcionarios DESC;

// Resultado esperado: todas as empresas com 2 funcionários cada.
