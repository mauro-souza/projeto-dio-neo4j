// =============================================================
// Script 01 - Criação do Banco de Dados (Constraints e Índices)
// Projeto: Rede Social - Neo4j / DIO Bootcamp
// =============================================================

// --- Constraints (garantem unicidade e criam índices automaticamente) ---

// Nó Person: email único
CREATE CONSTRAINT person_email_unique IF NOT EXISTS
FOR (p:Person) REQUIRE p.email IS UNIQUE;

// Nó Post: id único
CREATE CONSTRAINT post_id_unique IF NOT EXISTS
FOR (post:Post) REQUIRE post.id IS UNIQUE;

// Nó Company: nome único
CREATE CONSTRAINT company_name_unique IF NOT EXISTS
FOR (c:Company) REQUIRE c.name IS UNIQUE;

// --- Índices adicionais para buscas frequentes ---

// Índice no nome da pessoa
CREATE INDEX person_name_index IF NOT EXISTS
FOR (p:Person) ON (p.name);

// Índice na cidade da pessoa
CREATE INDEX person_city_index IF NOT EXISTS
FOR (p:Person) ON (p.city);

// Índice no setor da empresa
CREATE INDEX company_sector_index IF NOT EXISTS
FOR (c:Company) ON (c.sector);

// Índice na data do post
CREATE INDEX post_date_index IF NOT EXISTS
FOR (post:Post) ON (post.date);

// =============================================================
// Verificação: listar constraints e índices criados
// =============================================================
// SHOW CONSTRAINTS;
// SHOW INDEXES;
