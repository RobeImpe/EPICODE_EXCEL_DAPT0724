CREATE DATABASE negozi_territorio;

CREATE TABLE store (
    id_geografico INT,
    id_store INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_apertura DATE NOT NULL,
    FOREIGN KEY (id_geografico) REFERENCES region(id_geografico)
);
CREATE TABLE region (
    id_geografico INT AUTO_INCREMENT PRIMARY KEY,
    città VARCHAR(100) NOT NULL,
    regione VARCHAR(100) NOT NULL,
    area_geografica VARCHAR(100) NOT NULL
);

INSERT INTO region (città, regione, area_geografica) VALUES
('Milano', 'Lombardia', 'Italia'),
('Roma', 'Lazio', 'Italia'),
('Napoli', 'Campania', 'Italia'),
('Torino', 'Piemonte', 'Italia'),
('Firenze', 'Toscana', 'Italia'),
('Madrid', 'Madrid', 'Spagna'),
('Barcellona', 'Catalogna', 'Spagna'),
('Valencia', 'Comunità Valenciana', 'Spagna'),
('Siviglia', 'Andalusia', 'Spagna'),
('Bilbao', 'Paesi Baschi', 'Spagna'),
('Parigi', 'Île-de-France', 'Francia'),
('Marsiglia', 'Provenza-Alpi-Costa Azzurra', 'Francia'),
('Lione', 'Rodano-Alpi', 'Francia'),
('Nizza', 'Provenza-Alpi-Costa Azzurra', 'Francia'),
('Bordeaux', 'Nuova Aquitania', 'Francia'),
('Berlino', 'Berlino', 'Germania'),
('Monaco di Baviera', 'Baviera', 'Germania'),
('Amburgo', 'Amburgo', 'Germania'),
('Francoforte', 'Assia', 'Germania'),
('Colonia', 'Renania Settentrionale-Vestfalia', 'Germania'),
('Varsavia', 'Masovia', 'Polonia'),
('Cracovia', 'Piccola Polonia', 'Polonia'),
('Danzica', 'Pomerania', 'Polonia'),
('Breslavia', 'Bassa Slesia', 'Polonia'),
('Poznań', 'Grande Polonia', 'Polonia'),
('Stoccolma', 'Stoccolma', 'Svezia'),
('Goteborg', 'Västra Götaland', 'Svezia'),
('Malmö', 'Scania', 'Svezia'),
('Uppsala', 'Uppsala', 'Svezia'),
('Lund', 'Scania', 'Svezia');



INSERT INTO store (id_geografico, nome, data_apertura) VALUES
(1, 'Store Milano Centrale', '2023-01-15'),
(1, 'Store Milano Corso Buenos Aires', '2023-02-01'),
(2, 'Store Roma Termini', '2023-02-20'),
(2, 'Store Roma Piazza di Spagna', '2023-03-05'),
(3, 'Store Napoli Centro', '2023-03-25'),
(3, 'Store Napoli Vomero', '2023-04-10'),
(4, 'Store Torino Lingotto', '2023-04-10'),
(4, 'Store Torino Porta Nuova', '2023-05-01'),
(5, 'Store Firenze Santa Maria Novella', '2023-05-05'),
(5, 'Store Firenze Piazza del Duomo', '2023-06-01'),
(6, 'Store Madrid Puerta del Sol', '2023-01-12'),
(6, 'Store Madrid Gran Vía', '2023-02-01'),
(7, 'Store Barcellona Las Ramblas', '2023-02-18'),
(7, 'Store Barcellona Passeig de Gràcia', '2023-03-01'),
(8, 'Store Valencia Estación', '2023-03-22'),
(8, 'Store Valencia Centro', '2023-04-05'),
(9, 'Store Siviglia Alcázar', '2023-04-15'),
(9, 'Store Siviglia Santa Cruz', '2023-05-01'),
(10, 'Store Bilbao Centro', '2023-05-10'),
(10, 'Store Bilbao Abando', '2023-06-01'),
(11, 'Store Parigi Gare du Nord', '2023-01-12'),
(11, 'Store Parigi Le Marais', '2023-02-01'),
(12, 'Store Marsiglia Vieux-Port', '2023-02-18'),
(12, 'Store Marsiglia La Canebière', '2023-03-01'),
(13, 'Store Lione Part-Dieu', '2023-03-22'),
(13, 'Store Lione Bellecour', '2023-04-05'),
(14, 'Store Nizza Promenade', '2023-04-15'),
(14, 'Store Nizza Vieux-Nice', '2023-05-01'),
(15, 'Store Bordeaux Chartrons', '2023-05-10'),
(15, 'Store Bordeaux Gare Saint-Jean', '2023-06-01'),
(16, 'Store Berlino Alexanderplatz', '2023-01-12'),
(16, 'Store Berlino Kurfürstendamm', '2023-02-01'),
(17, 'Store Monaco di Baviera Marienplatz', '2023-02-18'),
(17, 'Store Monaco di Baviera Hauptbahnhof', '2023-03-01'),
(18, 'Store Amburgo Reeperbahn', '2023-03-22'),
(18, 'Store Amburgo Jungfernstieg', '2023-04-05'),
(19, 'Store Francoforte Zeil', '2023-04-15'),
(19, 'Store Francoforte Hauptbahnhof', '2023-05-01'),
(20, 'Store Colonia Domplatz', '2023-05-10'),
(20, 'Store Colonia Neumarkt', '2023-06-01'),
(21, 'Store Varsavia Centrum', '2023-01-12'),
(21, 'Store Varsavia Old Town', '2023-02-01'),
(22, 'Store Cracovia Rynek', '2023-02-18'),
(22, 'Store Cracovia Kazimierz', '2023-03-01'),
(23, 'Store Danzica Stare Miasto', '2023-03-22'),
(23, 'Store Danzica Oliwa', '2023-04-05'),
(24, 'Store Breslavia Rynek', '2023-04-15'),
(24, 'Store Breslavia Galeria Dominikańska', '2023-05-01'),
(25, 'Store Poznań Stary Rynek', '2023-05-10'),
(25, 'Store Poznań Malta', '2023-06-01'),
(26, 'Store Stoccolma Gamla Stan', '2023-01-12'),
(26, 'Store Stoccolma Södermalm', '2023-02-01'),
(27, 'Store Goteborg Avenyn', '2023-02-18'),
(27, 'Store Goteborg Nordstan', '2023-03-01'),
(28, 'Store Malmö Triangeln', '2023-03-22'),
(28, 'Store Malmö Lilla Torg', '2023-04-05'),
(29, 'Store Malmö Värnhem', '2023-04-15'),
(29, 'Store Malmö Möllevången', '2023-05-01'),
(30, 'Store Uppsala Stora Torget', '2023-05-10'),
(30, 'Store Lund Lundagård', '2023-06-01');

select
*
from store;

SELECT 
    store.id_store , 
    store.nome AS store_nome,
    store.data_apertura,
    region.città,
    region.regione,
    region.area_geografica,
    region.id_geografico
FROM 
    store
INNER JOIN 
    region 
ON 
    store.id_geografico = region.id_geografico
    order by store.id_store ASC;

SELECT 
    region.area_geografica AS nazione,
    COUNT(store.id_store) AS numero_store
FROM 
    store
INNER JOIN 
    region 
ON 
    store.id_geografico = region.id_geografico
GROUP BY 
    region.area_geografica
ORDER BY 
    numero_store DESC;


    