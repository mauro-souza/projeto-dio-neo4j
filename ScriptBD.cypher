// Criando as constraints 
CREATE CONSTRAINT FOR (u:Usuario) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT FOR (p:Pessoa) REQUIRE p.id IS UNIQUE;
CREATE CONSTRAINT FOR (f:Filme) REQUIRE f.id IS UNIQUE;
CREATE CONSTRAINT FOR (s:Serie) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT FOR (g:Genero) REQUIRE g.nome IS UNIQUE;

// Faremos a criação das entidades usando MERGE 
// para evitar erros caso a entidade já exista
// Criando os usuarios da Entidade Usuario
MERGE (u1:Usuario {id: "1"}) SET u1.nome = "Maria José", u1.username = "mariajose", u1.email = "mariajose@gmail.com.br", u1.dt_cadastro = "01/03/2026";
MERGE (u2:Usuario {id: "2"}) SET u2.nome = "José Maria", u2.username = "josemaria", u2.email = "josemaria@gmail.com.br", u2.dt_cadastro = "01/03/2026";
MERGE (u3:Usuario {id: "3"}) SET u3.nome = "João da Silva", u3.username = "joaosilva", u3.email = "joaodasilva@gmail.com.br", u3.dt_cadastro = "01/03/2026";
MERGE (u4:Usuario {id: "4"}) SET u4.nome = "Francisca de Souza", u4.username = "franciscasouza", u4.email = "franciscasouza@gmail.com.br", u4.dt_cadastro = "01/03/2026";
MERGE (u5:Usuario {id: "5"}) SET u5.nome = "Everaldo Rosa", u5.username = "everrosa", u5.email = "everaldorosa@gmail.com.br", u5.dt_cadastro = "01/03/2026";
MERGE (u6:Usuario {id: "6"}) SET u6.nome = "Terezinha de Jesus", u6.username = "terezinha", u6.email = "terezinha@gmail.com.br", u6.dt_cadastro = "01/03/2026";
MERGE (u7:Usuario {id: "7"}) SET u7.nome = "Josefa Cristina", u7.username = "josefa", u7.email = "josefacris@gmail.com.br", u7.dt_cadastro = "01/03/2026";
MERGE (u8:Usuario {id: "8"}) SET u8.nome = "Pedro Lara", u8.username = "plara", u8.email = "plara@gmail.com.br", u8.dt_cadastro = "01/03/2026";
MERGE (u9:Usuario {id: "9"}) SET u9.nome = "Luiz Alfredo", u9.username = "lalfredo", u9.email = "lalfredo@gmail.com.br", u9.dt_cadastro = "01/03/2026";
MERGE (u10:Usuario {id: "10"}) SET u10.nome = "Evelyn Sousa", u10.username = "evelyns", u10.email = "evelyns@gmail.com.br", u10.dt_cadastro = "01/03/2026";

// Criando os atores e diretores da Entidade Pessoa
MERGE (p1:Pessoa:Ator {id: "1"}) SET p1.nome = "José Wilker", p1.dt_nascimento = "20/08/1944", p1.biografia = "Ator, diretor e crítico de cinema brasileiro.";
MERGE (p2:Pessoa:Diretor {id: "2"}) SET p2.nome = "Sérgio Rezende", p2.dt_nascimento = "09/04/1951", p2.biografia = "Cineasta brasileiro conhecido por filmes históricos.";
MERGE (p3:Pessoa:Ator:Diretor {id: "3"}) SET p3.nome = "John Krasinski", p3.dt_nascimento = "20/10/1979", p3.biografia = "Ator e cineasta americano, famoso também pela série The Office.";
MERGE (p4:Pessoa:Ator:Diretor {id: "4"}) SET p4.nome = "Sylvester Stallone", p4.dt_nascimento = "06/07/1946", p4.biografia = "Ícone dos filmes de ação de Hollywood.";
MERGE (p5:Pessoa:Ator:Diretor {id: "5"}) SET p5.nome = "Jon Favreau", p5.dt_nascimento = "19/10/1966", p5.biografia = "Cineasta e ator americano, pioneiro na construção do universo Marvel nos cinemas.";
MERGE (p6:Pessoa:Diretor:Ator {id: "6"}) SET p6.nome = "Mel Gibson", p6.dt_nascimento = "03/01/1956", p6.biografia = "Aclamado ator e diretor, vencedor do Oscar.";
MERGE (p7:Pessoa:Ator:Diretor {id: "7"}) SET p7.nome = "Ben Affleck", p7.dt_nascimento = "15/08/1972", p7.biografia = "Ator e cineasta americano, vencedor do Oscar de Melhor Filme por Argo.";
MERGE (p8:Pessoa:Ator:Diretor {id: "8"}) SET p8.nome = "Clint Eastwood", p8.dt_nascimento = "31/05/1930", p8.biografia = "Lenda do cinema americano, aclamado ator e diretor com múltiplos prêmios.";
MERGE (p9:Pessoa:Ator:Diretor {id: "9"}) SET p9.nome = "Jordan Peele", p9.dt_nascimento = "21/02/1979", p9.biografia = "Cineasta americano que revolucionou o terror moderno.";
MERGE (p10:Pessoa:Ator {id: "10"}) SET p10.nome = "Daniel Kaluuya", p10.dt_nascimento = "24/02/1989", p10.biografia = "Ator britânico aclamado por suas atuações intensas.";
MERGE (p11:Pessoa:Ator:Diretor {id: "11"}) SET p11.nome = "Ben Stiller", p11.dt_nascimento = "30/11/1965", p11.biografia = "Ator, comediante e cineasta de grande sucesso.";
MERGE (p12:Pessoa:Diretor {id: "12"}) SET p12.nome = "George Miller", p12.dt_nascimento = "03/03/1945", p12.biografia = "Cineasta australiano criador da icônica franquia Mad Max.";
MERGE (p13:Pessoa:Ator {id: "13"}) SET p13.nome = "Tom Hardy", p13.dt_nascimento = "15/09/1977", p13.biografia = "Ator inglês conhecido por papéis viscerais em filmes de ação.";
MERGE (p14:Pessoa:Ator:Diretor {id: "14"}) SET p14.nome = "Bryce Dallas Howard", p14.dt_nascimento = "02/03/1981", p14.biografia = "Atriz e cineasta americana de grande destaque na televisão e cinema.";
MERGE (p15:Pessoa:Ator {id: "15"}) SET p15.nome = "Charlize Theron", p15.dt_nascimento = "07/08/1975", p15.biografia = "Atriz sul-africana vencedora do Oscar, conhecida por papéis de ação intensos.";
MERGE (p16:Pessoa:Ator {id: "16"}) SET p16.nome = "Emily Blunt", p16.dt_nascimento = "23/02/1983", p16.biografia = "Aclamada atriz britânica, vencedora de diversos prêmios internacionais.";
MERGE (p17:Pessoa:Ator {id: "17"}) SET p17.nome = "Susana Vieira", p17.dt_nascimento = "23/08/1942", p17.biografia = "Uma das maiores atrizes da teledramaturgia brasileira.";
MERGE (p18:Pessoa:Ator:Diretor {id: "18"}) SET p18.nome = "Mindy Kaling", p18.dt_nascimento = "24/06/1979", p18.biografia = "Atriz, comediante, roteirista e diretora americana de grande sucesso na comédia.";

// Criando os Filmes da Entidade Filme
MERGE (f1:Filme {id: "1"}) SET f1.titulo = "O Homem da Capa Preta", f1.ano = 1986, f1.duracao = 119;
MERGE (f2:Filme {id: "2"}) SET f2.titulo = "Um Lugar Silencioso", f2.ano = 2018, f2.duracao = 90;
MERGE (f3:Filme {id: "3"}) SET f3.titulo = "Os Mercenários", f3.ano = 2010, f3.duracao = 103;
MERGE (f4:Filme {id: "4"}) SET f4.titulo = "Homem de Ferro", f4.ano = 2008, f4.duracao = 126;
MERGE (f5:Filme {id: "5"}) SET f5.titulo = "Coração Valente", f5.ano = 1995, f5.duracao = 178;
MERGE (f6:Filme {id: "6"}) SET f6.titulo = "Argo", f6.ano = 2012, f6.duracao = 120;
MERGE (f7:Filme {id: "7"}) SET f7.titulo = "Gran Torino", f7.ano = 2008, f7.duracao = 116;
MERGE (f8:Filme {id: "8"}) SET f8.titulo = "Corra!", f8.ano = 2017, f8.duracao = 104;
MERGE (f9:Filme {id: "9"}) SET f9.titulo = "A Vida Secreta de Walter Mitty", f9.ano = 2013, f9.duracao = 114;
MERGE (f10:Filme {id: "10"}) SET f10.titulo = "Mad Max: Estrada da Fúria", f10.ano = 2015, f10.duracao = 120;

// Criando as Series da Entidade Serie
MERGE (s1:Serie {id: "1"}) SET s1.titulo = "The Office", s1.temporada = 9, s1.emProducao = false;
MERGE (s2:Serie {id: "2"}) SET s2.titulo = "The Mandalorian", s2.temporada = 3, s2.emProducao = true;
MERGE (s3:Serie {id: "3"}) SET s3.titulo = "Tulsa King", s3.temporada = 2, s3.emProducao = true;
MERGE (s4:Serie {id: "4"}) SET s4.titulo = "Senhora do Destino", s4.temporada = 1, s4.emProducao = false;
MERGE (s5:Serie {id: "5"}) SET s5.titulo = "Peaky Blinders", s5.temporada = 6, s5.emProducao = false;
MERGE (s6:Serie {id: "6"}) SET s6.titulo = "Rawhide", s6.temporada = 8, s6.emProducao = false;
MERGE (s7:Serie {id: "7"}) SET s7.titulo = "Key & Peele", s7.temporada = 5, s7.emProducao = false;
MERGE (s8:Serie {id: "8"}) SET s8.titulo = "Black Mirror", s8.temporada = 6, s8.emProducao = true;
MERGE (s9:Serie {id: "9"}) SET s9.titulo = "O Continental: Do Mundo de John Wick", s9.temporada = 1, s9.emProducao = false;
MERGE (s10:Serie {id: "10"}) SET s10.titulo = "Ruptura", s10.temporada = 2, s10.emProducao = true;

// Criando os generos da Entidade Genero
MERGE (g1:Genero {nome: "Ação"});
MERGE (g2:Genero {nome: "Drama"});
MERGE (g3:Genero {nome: "Terror"});
MERGE (g4:Genero {nome: "Suspense"});
MERGE (g5:Genero {nome: "Aventura"});
MERGE (g6:Genero {nome: "Ficção Científica"});
MERGE (g7:Genero {nome: "Comédia"});
MERGE (g8:Genero {nome: "Crime"});
MERGE (g9:Genero {nome: "Novela"});
MERGE (g10:Genero {nome: "Faroeste"});

// Criando os Relacionamentos entre atores/diretores e filmes/series
// O Homem da Capa Preta
MATCH (p1:Pessoa {id: "1"}), (p2:Pessoa {id: "2"}), (f1:Filme {id: "1"})
MERGE (p1)-[:ATUOU {Personagem: "Tenório Cavalcanti"}]->(f1)
MERGE (p2)-[:DIRIGIU {função: "Diretor Principal"}]->(f1);
// Um Lugar Silencioso
MATCH (p3:Pessoa {id: "3"}), (p16:Pessoa {id: "16"}), (f2:Filme {id: "2"})
MERGE (p3)-[:ATUOU {Personagem: "Lee Abbott"}]->(f2)
MERGE (p3)-[:DIRIGIU {função: "Diretor Principal"}]->(f2)
MERGE (p16)-[:ATUOU {Personagem: "Evelyn Abbott"}]->(f2);
// Os Mercenários
MATCH (p4:Pessoa {id: "4"}), (f3:Filme {id: "3"})
MERGE (p4)-[:ATUOU {Personagem: "Barney Ross"}]->(f3)
MERGE (p4)-[:DIRIGIU {função: "Diretor"}]->(f3);
// Homem de Ferro
MATCH (p5:Pessoa {id: "5"}), (f4:Filme {id: "4"})
MERGE (p5)-[:ATUOU {Personagem: "Happy Hogan"}]->(f4)
MERGE (p5)-[:DIRIGIU {função: "Diretor Principal"}]->(f4);
// Coração Valente
MATCH (p6:Pessoa {id: "6"}), (f5:Filme {id: "5"})
MERGE (p6)-[:ATUOU {Personagem: "William Wallace"}]->(f5)
MERGE (p6)-[:DIRIGIU {função: "Diretor e Produtor"}]->(f5);
// Argo
MATCH (p7:Pessoa {id: "7"}), (f6:Filme {id: "6"})
MERGE (p7)-[:ATUOU {Personagem: "Tony Mendez"}]->(f6)
MERGE (p7)-[:DIRIGIU {função: "Diretor Principal"}]->(f6);
// Gran Torino
MATCH (p8:Pessoa {id: "8"}), (f7:Filme {id: "7"})
MERGE (p8)-[:ATUOU {Personagem: "Walt Kowalski"}]->(f7)
MERGE (p8)-[:DIRIGIU {função: "Diretor e Produtor"}]->(f7);
// Corra!
MATCH (p9:Pessoa {id: "9"}), (p10:Pessoa {id: "10"}), (f8:Filme {id: "8"})
MERGE (p10)-[:ATUOU {Personagem: "Chris Washington"}]->(f8)
MERGE (p9)-[:DIRIGIU {função: "Diretor"}]->(f8);
// A Vida Secreta de Walter Mitty
MATCH (p11:Pessoa {id: "11"}), (f9:Filme {id: "9"})
MERGE (p11)-[:ATUOU {Personagem: "Walter Mitty"}]->(f9)
MERGE (p11)-[:DIRIGIU {função: "Diretor"}]->(f9);
// Mad Max: Estrada da Fúria
MATCH (p12:Pessoa {id: "12"}), (p13:Pessoa {id: "13"}), (p15:Pessoa {id: "15"}), (f10:Filme {id: "10"})
MERGE (p13)-[:ATUOU {Personagem: "Max Rockatansky"}]->(f10)
MERGE (p15)-[:ATUOU {Personagem: "Imperatriz Furiosa"}]->(f10)
MERGE (p12)-[:DIRIGIU {função: "Diretor Principal"}]->(f10);
// The Office
MATCH (p3:Pessoa {id: "3"}), (p18:Pessoa {id: "18"}), (s1:Serie {id: "1"})
MERGE (p3)-[:ATUOU {Personagem: "Jim Halpert"}]->(s1)
MERGE (p3)-[:DIRIGIU {função: "Diretor Convidado"}]->(s1)
MERGE (p18)-[:ATUOU {Personagem: "Kelly Kapoor"}]->(s1)
MERGE (p18)-[:DIRIGIU {função: "Diretora e Roteirista"}]->(s1);
// The Mandalorian
MATCH (p5:Pessoa {id: "5"}), (p14:Pessoa {id: "14"}), (s2:Serie {id: "2"})
MERGE (p5)-[:ATUOU {Personagem: "Paz Vizsla (Voz)"}]->(s2)
MERGE (p5)-[:DIRIGIU {função: "Criador e Diretor"}]->(s2)
MERGE (p14)-[:DIRIGIU {função: "Diretora Convidada"}]->(s2);
// Tulsa King
MATCH (p4:Pessoa {id: "4"}), (s3:Serie {id: "3"})
MERGE (p4)-[:ATUOU {Personagem: "Dwight 'The General' Manfredi"}]->(s3);
// Senhora do Destino
MATCH (p1:Pessoa {id: "1"}), (p17:Pessoa {id: "17"}), (s4:Serie {id: "4"})
MERGE (p1)-[:ATUOU {Personagem: "Giovanni Improtta"}]->(s4)
MERGE (p17)-[:ATUOU {Personagem: "Maria do Carmo"}]->(s4);
// Peaky Blinders
MATCH (p13:Pessoa {id: "13"}), (s5:Serie {id: "5"})
MERGE (p13)-[:ATUOU {Personagem: "Alfie Solomons"}]->(s5);
// Rawhide
MATCH (p8:Pessoa {id: "8"}), (s6:Serie {id: "6"})
MERGE (p8)-[:ATUOU {Personagem: "Rowdy Yates"}]->(s6);
// Key & Peele
MATCH (p9:Pessoa {id: "9"}), (s7:Serie {id: "7"})
MERGE (p9)-[:ATUOU {Personagem: "Vários Personagens"}]->(s7);
// Black Mirror 
MATCH (p10:Pessoa {id: "10"}), (p14:Pessoa {id: "14"}), (s8:Serie {id: "8"})
MERGE (p10)-[:ATUOU {Personagem: "Bingham 'Bing' Madsen"}]->(s8)
MERGE (p14)-[:ATUOU {Personagem: "Lacie Pound"}]->(s8);
// O Continental: Do Mundo de John Wick
MATCH (p6:Pessoa {id: "6"}), (s9:Serie {id: "9"})
MERGE (p6)-[:ATUOU {Personagem: "Cormac"}]->(s9);
// Ruptura
MATCH (p11:Pessoa {id: "11"}), (s10:Serie {id: "10"})
MERGE (p11)-[:DIRIGIU {função: "Diretor Principal e Produtor"}]->(s10);

// Criando os Relacionamentos entre os filmes/series e o genero
// O Homem da Capa Preta
MATCH (f1:Filme {id: "1"}), (g1:Genero {nome: "Ação"}), (g2:Genero {nome: "Drama"})
MERGE (f1)-[:POSSUI_GENERO]->(g1)
MERGE (f1)-[:POSSUI_GENERO]->(g2);
// Um Lugar Silencioso
MATCH (f2:Filme {id: "2"}), (g3:Genero {nome: "Terror"}), (g4:Genero {nome: "Suspense"})
MERGE (f2)-[:POSSUI_GENERO]->(g3)
MERGE (f2)-[:POSSUI_GENERO]->(g4);
// Os Mercenários
MATCH (f3:Filme {id: "3"}), (g1:Genero {nome: "Ação"}), (g5:Genero {nome: "Aventura"})
MERGE (f3)-[:POSSUI_GENERO]->(g1)
MERGE (f3)-[:POSSUI_GENERO]->(g5);
// Homem de Ferro
MATCH (f4:Filme {id: "4"}), (g6:Genero {nome: "Ficção Científica"}), (g1:Genero {nome: "Ação"})
MERGE (f4)-[:POSSUI_GENERO]->(g6)
MERGE (f4)-[:POSSUI_GENERO]->(g1);
// Coração Valente
MATCH (f5:Filme {id: "5"}), (g5:Genero {nome: "Aventura"}), (g2:Genero {nome: "Drama"})
MERGE (f5)-[:POSSUI_GENERO]->(g5)
MERGE (f5)-[:POSSUI_GENERO]->(g2);
// Argo
MATCH (f6:Filme {id: "6"}), (g4:Genero {nome: "Suspense"}), (g2:Genero {nome: "Drama"})
MERGE (f6)-[:POSSUI_GENERO]->(g4)
MERGE (f6)-[:POSSUI_GENERO]->(g2);
// Gran Torino
MATCH (f7:Filme {id: "7"}), (g2:Genero {nome: "Drama"})
MERGE (f7)-[:POSSUI_GENERO]->(g2);
// Corra!
MATCH (f8:Filme {id: "8"}), (g3:Genero {nome: "Terror"}), (g4:Genero {nome: "Suspense"})
MERGE (f8)-[:POSSUI_GENERO]->(g3)
MERGE (f8)-[:POSSUI_GENERO]->(g4);
// A Vida Secreta de Walter Mitty
MATCH (f9:Filme {id: "9"}), (g5:Genero {nome: "Aventura"}), (g2:Genero {nome: "Drama"})
MERGE (f9)-[:POSSUI_GENERO]->(g5)
MERGE (f9)-[:POSSUI_GENERO]->(g2);
// Mad Max: Estrada da Fúria
MATCH (f10:Filme {id: "10"}), (g1:Genero {nome: "Ação"}), (g6:Genero {nome: "Ficção Científica"})
MERGE (f10)-[:POSSUI_GENERO]->(g1)
MERGE (f10)-[:POSSUI_GENERO]->(g6);
// The Office
MATCH (s1:Serie {id: "1"}), (g7:Genero {nome: "Comédia"})
MERGE (s1)-[:POSSUI_GENERO]->(g7);
// The Mandalorian
MATCH (s2:Serie {id: "2"}), (g1:Genero {nome: "Ação"}), (g5:Genero {nome: "Aventura"}), (g6:Genero {nome: "Ficção Científica"})
MERGE (s2)-[:POSSUI_GENERO]->(g1)
MERGE (s2)-[:POSSUI_GENERO]->(g5)
MERGE (s2)-[:POSSUI_GENERO]->(g6);
// Tulsa King
MATCH (s3:Serie {id: "3"}), (g8:Genero {nome: "Crime"}), (g2:Genero {nome: "Drama"})
MERGE (s3)-[:POSSUI_GENERO]->(g8)
MERGE (s3)-[:POSSUI_GENERO]->(g2);
// Senhora do Destino
MATCH (s4:Serie {id: "4"}), (g9:Genero {nome: "Novela"}), (g2:Genero {nome: "Drama"})
MERGE (s4)-[:POSSUI_GENERO]->(g9)
MERGE (s4)-[:POSSUI_GENERO]->(g2);
// Peaky Blinders
MATCH (s5:Serie {id: "5"}), (g8:Genero {nome: "Crime"}), (g2:Genero {nome: "Drama"})
MERGE (s5)-[:POSSUI_GENERO]->(g8)
MERGE (s5)-[:POSSUI_GENERO]->(g2);
// Rawhide
MATCH (s6:Serie {id: "6"}), (g10:Genero {nome: "Faroeste"}), (g2:Genero {nome: "Drama"})
MERGE (s6)-[:POSSUI_GENERO]->(g10)
MERGE (s6)-[:POSSUI_GENERO]->(g2);
// Key & Peele
MATCH (s7:Serie {id: "7"}), (g7:Genero {nome: "Comédia"})
MERGE (s7)-[:POSSUI_GENERO]->(g7);
// Black Mirror
MATCH (s8:Serie {id: "8"}), (g6:Genero {nome: "Ficção Científica"}), (g4:Genero {nome: "Suspense"}), (g2:Genero {nome: "Drama"})
MERGE (s8)-[:POSSUI_GENERO]->(g6)
MERGE (s8)-[:POSSUI_GENERO]->(g4)
MERGE (s8)-[:POSSUI_GENERO]->(g2);
// O Continental: Do Mundo de John Wick
MATCH (s9:Serie {id: "9"}), (g1:Genero {nome: "Ação"}), (g8:Genero {nome: "Crime"})
MERGE (s9)-[:POSSUI_GENERO]->(g1)
MERGE (s9)-[:POSSUI_GENERO]->(g8);
// Ruptura
MATCH (s10:Serie {id: "10"}), (g6:Genero {nome: "Ficção Científica"}), (g4:Genero {nome: "Suspense"}), (g2:Genero {nome: "Drama"})
MERGE (s10)-[:POSSUI_GENERO]->(g6)
MERGE (s10)-[:POSSUI_GENERO]->(g4)
MERGE (s10)-[:POSSUI_GENERO]->(g2);

// Criando os Relacionamentos entre usuariose os filmes/series
// com o envia da avaliação de cada usuário
// Maria José
MATCH (u1:Usuario {id: "1"}), (f1:Filme {id: "1"}), (s4:Serie {id: "4"})
MERGE (u1)-[:ASSISTIU {avaliou: 5}]->(f1)
MERGE (u1)-[:ASSISTIU {avaliou: 4}]->(s4);
// José Maria
MATCH (u2:Usuario {id: "2"}), (f3:Filme {id: "3"}), (s2:Serie {id: "2"})
MERGE (u2)-[:ASSISTIU {avaliou: 4}]->(f3)
MERGE (u2)-[:ASSISTIU {avaliou: 5}]->(s2);
// João da Silva
MATCH (u3:Usuario {id: "3"}), (f4:Filme {id: "4"}), (s1:Serie {id: "1"})
MERGE (u3)-[:ASSISTIU {avaliou: 5}]->(f4)
MERGE (u3)-[:ASSISTIU {avaliou: 5}]->(s1);
// Francisca de Souza
MATCH (u4:Usuario {id: "4"}), (f5:Filme {id: "5"}), (s8:Serie {id: "8"})
MERGE (u4)-[:ASSISTIU {avaliou: 3}]->(f5)
MERGE (u4)-[:ASSISTIU {avaliou: 5}]->(s8);
// Everaldo Rosa
MATCH (u5:Usuario {id: "5"}), (f10:Filme {id: "10"}), (s5:Serie {id: "5"})
MERGE (u5)-[:ASSISTIU {avaliou: 5}]->(f10)
MERGE (u5)-[:ASSISTIU {avaliou: 4}]->(s5);
// Terezinha de Jesus
MATCH (u6:Usuario {id: "6"}), (f7:Filme {id: "7"}), (s4:Serie {id: "4"})
MERGE (u6)-[:ASSISTIU {avaliou: 5}]->(f7)
MERGE (u6)-[:ASSISTIU {avaliou: 5}]->(s4);
// Josefa Cristina
MATCH (u7:Usuario {id: "7"}), (f8:Filme {id: "8"}), (s10:Serie {id: "10"})
MERGE (u7)-[:ASSISTIU {avaliou: 4}]->(f8)
MERGE (u7)-[:ASSISTIU {avaliou: 5}]->(s10);
// Pedro Lara
MATCH (u8:Usuario {id: "8"}), (f6:Filme {id: "6"}), (s3:Serie {id: "3"})
MERGE (u8)-[:ASSISTIU {avaliou: 5}]->(f6)
MERGE (u8)-[:ASSISTIU {avaliou: 4}]->(s3);
// Luiz Alfredo
MATCH (u9:Usuario {id: "9"}), (f9:Filme {id: "9"}), (s7:Serie {id: "7"})
MERGE (u9)-[:ASSISTIU {avaliou: 4}]->(f9)
MERGE (u9)-[:ASSISTIU {avaliou: 5}]->(s7);
// Evelyn Sousa
MATCH (u10:Usuario {id: "10"}), (f2:Filme {id: "2"}), (s9:Serie {id: "9"})
MERGE (u10)-[:ASSISTIU {avaliou: 5}]->(f2)
MERGE (u10)-[:ASSISTIU {avaliou: 4}]->(s9);