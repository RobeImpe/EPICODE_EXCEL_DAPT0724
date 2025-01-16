-- creo database RUBATHLON ogni riferimento è puramente casuale
CREATE DATABASE RUBATHLON ;

-- creo tre tabelle store, region e dipendenti
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
CREATE TABLE dipendenti (
    id_personale INT AUTO_INCREMENT PRIMARY KEY,
    id_store VARCHAR(100) NOT NULL,
    nominativo_dipendente VARCHAR(100) NOT NULL,
    città_residenza VARCHAR(100) NOT NULL,
    regione_residenza VARCHAR(100) NOT NULL,
    area_geografica VARCHAR(100) NOT NULL
);

-- popolo le tre tabelle con valori inventati

INSERT INTO regione (città, regione, area_geografica)
VALUES
('Roma', 'Lazio', 'Centro'),
('Milano', 'Lombardia', 'Nord'),
('Napoli', 'Campania', 'Sud'),
('Torino', 'Piemonte', 'Nord-Ovest'),
('Firenze', 'Toscana', 'Centro'),
('Bologna', 'Emilia-Romagna', 'Nord'),
('Venezia', 'Veneto', 'Nord'),
('Catania', 'Sicilia', 'Sud'),
('Genova', 'Liguria', 'Nord-Ovest'),
('Palermo', 'Sicilia', 'Sud'),
('Reggio Calabria', 'Calabria', 'Sud'),
('Bari', 'Puglia', 'Sud'),
('Lecce', 'Puglia', 'Sud'),
('Trieste', 'Friuli Venezia Giulia', 'Nord-Est'),
('Perugia', 'Umbria', 'Centro'),
('Rimini', 'Emilia-Romagna', 'Nord'),
('Verona', 'Veneto', 'Nord'),
('Padova', 'Veneto', 'Nord'),
('Pescara', 'Abruzzo', 'Centro'),
('Messina', 'Sicilia', 'Sud'),
('Cagliari', 'Sardegna', 'Isole'),
('Vicenza', 'Veneto', 'Nord'),
('Terni', 'Umbria', 'Centro'),
('Ferrara', 'Emilia-Romagna', 'Nord'),
('Modena', 'Emilia-Romagna', 'Nord'),
('Ragusa', 'Sicilia', 'Sud'),
('Siracusa', 'Sicilia', 'Sud'),
('Cosenza', 'Calabria', 'Sud'),
('Trapani', 'Sicilia', 'Sud');

			-- per ogni tabella popolata faccio il select per vedere il risultato finale
select
*
from
regione;

INSERT INTO store (id_geografico, nome, data_apertura)
VALUES
(1, 'RUBATHLON di Roma', '2022-01-10'),
(2, 'RUBATHLON di Milano', '2021-05-15'),
(3, 'RUBATHLON di Napoli', '2022-03-30'),
(4, 'RUBATHLON di Torino', '2023-02-28'),
(5, 'RUBATHLON di Firenze', '2021-07-01'),
(6, 'RUBATHLON di Bologna', '2021-11-15'),
(7, 'RUBATHLON di Venezia', '2022-06-10'),
(8, 'RUBATHLON di Catania', '2023-03-20'),
(9, 'RUBATHLON di Genova', '2022-02-05'),
(10, 'RUBATHLON di Palermo', '2021-12-05'),
(11, 'RUBATHLON di Reggio Calabria', '2021-08-22'),
(12, 'RUBATHLON di Bari', '2022-09-15'),
(13, 'RUBATHLON di Lecce', '2022-07-20'),
(14, 'RUBATHLON di Trieste', '2022-04-12'),
(15, 'RUBATHLON di Perugia', '2022-01-30'),
(16, 'RUBATHLON di Rimini', '2023-05-17'),
(17, 'RUBATHLON di Verona', '2022-11-03'),
(18, 'RUBATHLON di Padova', '2021-06-15'),
(19, 'RUBATHLON di Pescara', '2022-02-25'),
(20, 'RUBATHLON di Messina', '2021-09-15'),
(21, 'RUBATHLON di Cagliari', '2022-12-10'),
(22, 'RUBATHLON di Vicenza', '2022-04-18'),
(23, 'RUBATHLON di Terni', '2021-10-22'),
(24, 'RUBATHLON di Ferrara', '2022-03-11'),
(25, 'RUBATHLON di Modena', '2021-12-01'),
(26, 'RUBATHLON di Ragusa', '2022-08-04'),
(27, 'RUBATHLON di Siracusa', '2023-01-15'),
(28, 'RUBATHLON di Cosenza', '2022-05-30'),
(29, 'RUBATHLON di Trapani', '2023-02-01'),
(30, 'RUBATHLON di Catania', '2021-06-10');


select
*
from
store;

INSERT INTO dipendenti (id_store, nominativo_dipendente, città_residenza, regione_residenza, area_geografica)
VALUES
(1, 'Giovanni Rossi', 'Roma', 'Lazio', 'Centro'),
(2, 'Anna Bianchi', 'Milano', 'Lombardia', 'Nord'),
(3, 'Marco Verdi', 'Napoli', 'Campania', 'Sud'),
(4, 'Francesca Neri', 'Torino', 'Piemonte', 'Nord-Ovest'),
(5, 'Luigi Esposito', 'Firenze', 'Toscana', 'Centro'),
(6, 'Maria Russo', 'Bologna', 'Emilia-Romagna', 'Nord'),
(7, 'Paolo Gallo', 'Venezia', 'Veneto', 'Nord'),
(8, 'Giulia Conti', 'Catania', 'Sicilia', 'Sud'),
(9, 'Stefano Moretti', 'Genova', 'Liguria', 'Nord-Ovest'),
(10, 'Claudia Costa', 'Palermo', 'Sicilia', 'Sud'),
(11, 'Alessandro De Luca', 'Reggio Calabria', 'Calabria', 'Sud'),
(12, 'Carla Santoro', 'Bari', 'Puglia', 'Sud'),
(13, 'Giorgio Ferrara', 'Lecce', 'Puglia', 'Sud'),
(14, 'Roberta Bellini', 'Trieste', 'Friuli Venezia Giulia', 'Nord-Est'),
(15, 'Andrea Ricci', 'Perugia', 'Umbria', 'Centro'),
(16, 'Silvia Marchetti', 'Rimini', 'Emilia-Romagna', 'Nord'),
(17, 'Fabio Lombardi', 'Verona', 'Veneto', 'Nord'),
(18, 'Marta Romano', 'Padova', 'Veneto', 'Nord'),
(19, 'Lucia Fabbri', 'Pescara', 'Abruzzo', 'Centro'),
(20, 'Dario Giordano', 'Messina', 'Sicilia', 'Sud'),
(21, 'Cristina Piras', 'Cagliari', 'Sardegna', 'Isole'),
(22, 'Nicola Rinaldi', 'Vicenza', 'Veneto', 'Nord'),
(23, 'Monica De Santis', 'Terni', 'Umbria', 'Centro'),
(24, 'Antonio Marino', 'Ferrara', 'Emilia-Romagna', 'Nord'),
(25, 'Luciana Villa', 'Modena', 'Emilia-Romagna', 'Nord'),
(26, 'Giorgio Ciaravolo', 'Ragusa', 'Sicilia', 'Sud'),
(27, 'Beatrice Puglisi', 'Siracusa', 'Sicilia', 'Sud'),
(28, 'Matteo Romano', 'Cosenza', 'Calabria', 'Sud'),
(29, 'Francesco Amato', 'Trapani', 'Sicilia', 'Sud'),
(30, 'Sara Gatti', 'Catania', 'Sicilia', 'Sud');


select
*
from
dipendenti;

-- rinomino la tabella region in regione

RENAME TABLE region TO regione;


   -- inner join per vedere in quale store lavorano i dipendenti , e in quale città si trova lo store.
   
    SELECT 
    d.nominativo_dipendente, 
          s.nome AS store_name, 
    r.città AS città, 
    r.regione AS regione, 
    r.area_geografica AS area_store
FROM dipendenti d
INNER JOIN store s ON d.id_store = s.id_store
INNER JOIN regione r ON s.id_geografico = r.id_geografico
;


-- conteggio il numero degli store per città
SELECT 
r.città, 

COUNT(s.id_store) AS numero_store
FROM store s
INNER JOIN regione r ON s.id_geografico = r.id_geografico
GROUP BY r.città;

    




