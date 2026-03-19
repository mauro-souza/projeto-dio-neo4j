// =============================================================
// Script 02 - Popular o Banco de Dados com Dados de Exemplo
// Projeto: Rede Social - Neo4j / DIO Bootcamp
// =============================================================

// --- Criar Empresas ---

CREATE (:Company {name: 'TechBrasil', sector: 'Tecnologia', country: 'Brasil'});
CREATE (:Company {name: 'InovaData', sector: 'Dados e Analytics', country: 'Brasil'});
CREATE (:Company {name: 'CloudBR', sector: 'Cloud Computing', country: 'Brasil'});
CREATE (:Company {name: 'StartupX', sector: 'Fintech', country: 'Brasil'});

// --- Criar Pessoas ---

CREATE (:Person {name: 'Alice Silva', age: 30, email: 'alice@email.com', city: 'São Paulo'});
CREATE (:Person {name: 'Bruno Costa', age: 25, email: 'bruno@email.com', city: 'Rio de Janeiro'});
CREATE (:Person {name: 'Carla Dias', age: 28, email: 'carla@email.com', city: 'Belo Horizonte'});
CREATE (:Person {name: 'Daniel Souza', age: 35, email: 'daniel@email.com', city: 'São Paulo'});
CREATE (:Person {name: 'Elena Ferreira', age: 22, email: 'elena@email.com', city: 'Curitiba'});
CREATE (:Person {name: 'Felipe Nunes', age: 40, email: 'felipe@email.com', city: 'Recife'});
CREATE (:Person {name: 'Gabriela Lima', age: 27, email: 'gabriela@email.com', city: 'Porto Alegre'});
CREATE (:Person {name: 'Henrique Rocha', age: 33, email: 'henrique@email.com', city: 'Fortaleza'});

// --- Criar Posts ---

CREATE (:Post {id: 'post-001', content: 'Neo4j é incrível para modelar relacionamentos complexos!', date: date('2024-01-10'), likes: 45});
CREATE (:Post {id: 'post-002', content: 'Aprendi muito sobre banco de dados em grafos no bootcamp da DIO!', date: date('2024-01-15'), likes: 78});
CREATE (:Post {id: 'post-003', content: 'Cypher é uma linguagem de consulta muito poderosa e intuitiva.', date: date('2024-02-05'), likes: 32});
CREATE (:Post {id: 'post-004', content: 'Grafos estão em todo lugar: redes sociais, logística, recomendações!', date: date('2024-02-18'), likes: 91});
CREATE (:Post {id: 'post-005', content: 'Dica: use MERGE para evitar nós duplicados no Neo4j.', date: date('2024-03-01'), likes: 56});
CREATE (:Post {id: 'post-006', content: 'O algoritmo PageRank no Neo4j GDS é fantástico para análise de redes.', date: date('2024-03-12'), likes: 67});
CREATE (:Post {id: 'post-007', content: 'Machine Learning em grafos: o futuro da análise de dados!', date: date('2024-04-02'), likes: 88});
CREATE (:Post {id: 'post-008', content: 'Segurança em APIs REST com autenticação baseada em grafos de permissões.', date: date('2024-04-20'), likes: 23});

// =============================================================
// --- Criar Relacionamentos ---
// =============================================================

// --- :KNOWS (Quem conhece quem) ---

MATCH (a:Person {email: 'alice@email.com'}), (b:Person {email: 'bruno@email.com'})
CREATE (a)-[:KNOWS {since: date('2022-06-01')}]->(b);

MATCH (a:Person {email: 'alice@email.com'}), (c:Person {email: 'carla@email.com'})
CREATE (a)-[:KNOWS {since: date('2021-03-15')}]->(c);

MATCH (b:Person {email: 'bruno@email.com'}), (d:Person {email: 'daniel@email.com'})
CREATE (b)-[:KNOWS {since: date('2023-01-10')}]->(d);

MATCH (c:Person {email: 'carla@email.com'}), (e:Person {email: 'elena@email.com'})
CREATE (c)-[:KNOWS {since: date('2020-09-22')}]->(e);

MATCH (d:Person {email: 'daniel@email.com'}), (f:Person {email: 'felipe@email.com'})
CREATE (d)-[:KNOWS {since: date('2019-11-05')}]->(f);

MATCH (e:Person {email: 'elena@email.com'}), (g:Person {email: 'gabriela@email.com'})
CREATE (e)-[:KNOWS {since: date('2023-07-30')}]->(g);

MATCH (f:Person {email: 'felipe@email.com'}), (h:Person {email: 'henrique@email.com'})
CREATE (f)-[:KNOWS {since: date('2018-04-12')}]->(h);

MATCH (g:Person {email: 'gabriela@email.com'}), (a:Person {email: 'alice@email.com'})
CREATE (g)-[:KNOWS {since: date('2024-01-05')}]->(a);

MATCH (h:Person {email: 'henrique@email.com'}), (b:Person {email: 'bruno@email.com'})
CREATE (h)-[:KNOWS {since: date('2022-12-01')}]->(b);

MATCH (c:Person {email: 'carla@email.com'}), (d:Person {email: 'daniel@email.com'})
CREATE (c)-[:KNOWS {since: date('2021-08-14')}]->(d);

// --- :CREATED (Quem criou qual post) ---

MATCH (a:Person {email: 'alice@email.com'}), (p:Post {id: 'post-001'})
CREATE (a)-[:CREATED]->(p);

MATCH (b:Person {email: 'bruno@email.com'}), (p:Post {id: 'post-002'})
CREATE (b)-[:CREATED]->(p);

MATCH (c:Person {email: 'carla@email.com'}), (p:Post {id: 'post-003'})
CREATE (c)-[:CREATED]->(p);

MATCH (d:Person {email: 'daniel@email.com'}), (p:Post {id: 'post-004'})
CREATE (d)-[:CREATED]->(p);

MATCH (e:Person {email: 'elena@email.com'}), (p:Post {id: 'post-005'})
CREATE (e)-[:CREATED]->(p);

MATCH (f:Person {email: 'felipe@email.com'}), (p:Post {id: 'post-006'})
CREATE (f)-[:CREATED]->(p);

MATCH (g:Person {email: 'gabriela@email.com'}), (p:Post {id: 'post-007'})
CREATE (g)-[:CREATED]->(p);

MATCH (h:Person {email: 'henrique@email.com'}), (p:Post {id: 'post-008'})
CREATE (h)-[:CREATED]->(p);

// --- :LIKES (Quem curtiu qual post) ---

MATCH (a:Person {email: 'alice@email.com'}), (p:Post {id: 'post-002'})
CREATE (a)-[:LIKES]->(p);

MATCH (a:Person {email: 'alice@email.com'}), (p:Post {id: 'post-004'})
CREATE (a)-[:LIKES]->(p);

MATCH (b:Person {email: 'bruno@email.com'}), (p:Post {id: 'post-001'})
CREATE (b)-[:LIKES]->(p);

MATCH (b:Person {email: 'bruno@email.com'}), (p:Post {id: 'post-007'})
CREATE (b)-[:LIKES]->(p);

MATCH (c:Person {email: 'carla@email.com'}), (p:Post {id: 'post-004'})
CREATE (c)-[:LIKES]->(p);

MATCH (c:Person {email: 'carla@email.com'}), (p:Post {id: 'post-006'})
CREATE (c)-[:LIKES]->(p);

MATCH (d:Person {email: 'daniel@email.com'}), (p:Post {id: 'post-001'})
CREATE (d)-[:LIKES]->(p);

MATCH (d:Person {email: 'daniel@email.com'}), (p:Post {id: 'post-003'})
CREATE (d)-[:LIKES]->(p);

MATCH (e:Person {email: 'elena@email.com'}), (p:Post {id: 'post-007'})
CREATE (e)-[:LIKES]->(p);

MATCH (f:Person {email: 'felipe@email.com'}), (p:Post {id: 'post-002'})
CREATE (f)-[:LIKES]->(p);

MATCH (g:Person {email: 'gabriela@email.com'}), (p:Post {id: 'post-004'})
CREATE (g)-[:LIKES]->(p);

MATCH (h:Person {email: 'henrique@email.com'}), (p:Post {id: 'post-005'})
CREATE (h)-[:LIKES]->(p);

// --- :WORKS_AT (Quem trabalha em qual empresa) ---

MATCH (a:Person {email: 'alice@email.com'}), (co:Company {name: 'TechBrasil'})
CREATE (a)-[:WORKS_AT {role: 'Engenheira de Software', since: date('2021-04-01')}]->(co);

MATCH (b:Person {email: 'bruno@email.com'}), (co:Company {name: 'InovaData'})
CREATE (b)-[:WORKS_AT {role: 'Analista de Dados', since: date('2022-08-15')}]->(co);

MATCH (c:Person {email: 'carla@email.com'}), (co:Company {name: 'TechBrasil'})
CREATE (c)-[:WORKS_AT {role: 'Desenvolvedora Backend', since: date('2020-01-10')}]->(co);

MATCH (d:Person {email: 'daniel@email.com'}), (co:Company {name: 'CloudBR'})
CREATE (d)-[:WORKS_AT {role: 'Arquiteto de Nuvem', since: date('2018-06-01')}]->(co);

MATCH (e:Person {email: 'elena@email.com'}), (co:Company {name: 'StartupX'})
CREATE (e)-[:WORKS_AT {role: 'Desenvolvedora Full Stack', since: date('2023-03-20')}]->(co);

MATCH (f:Person {email: 'felipe@email.com'}), (co:Company {name: 'CloudBR'})
CREATE (f)-[:WORKS_AT {role: 'Gerente de Projetos', since: date('2017-09-01')}]->(co);

MATCH (g:Person {email: 'gabriela@email.com'}), (co:Company {name: 'InovaData'})
CREATE (g)-[:WORKS_AT {role: 'Cientista de Dados', since: date('2022-02-14')}]->(co);

MATCH (h:Person {email: 'henrique@email.com'}), (co:Company {name: 'StartupX'})
CREATE (h)-[:WORKS_AT {role: 'CTO', since: date('2019-07-01')}]->(co);

// --- :MENTIONED_IN (Pessoa mencionada em post) ---

MATCH (b:Person {email: 'bruno@email.com'}), (p:Post {id: 'post-001'})
CREATE (b)-[:MENTIONED_IN]->(p);

MATCH (a:Person {email: 'alice@email.com'}), (p:Post {id: 'post-002'})
CREATE (a)-[:MENTIONED_IN]->(p);

MATCH (d:Person {email: 'daniel@email.com'}), (p:Post {id: 'post-004'})
CREATE (d)-[:MENTIONED_IN]->(p);

MATCH (g:Person {email: 'gabriela@email.com'}), (p:Post {id: 'post-007'})
CREATE (g)-[:MENTIONED_IN]->(p);
