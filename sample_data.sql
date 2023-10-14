-- Create table client
CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_registrazione DATE NOT NULL,
    clientId VARCHAR(100) NOT NULL,
    clientSecret VARCHAR(100) NOT NULL,
    stato TINYINT(1) DEFAULT 1 NOT NULL,
    CONSTRAINT client_clientId_uindex UNIQUE (clientId),
    CONSTRAINT client_clientSecret_uindex UNIQUE (clientSecret)
);

-- Insert data into table client
INSERT INTO client (id, nome, data_registrazione, clientId, clientSecret, stato)
VALUES (1, 'Wholesales client', '2023-10-07', '6427f4781fbf108bcc55e4bb86dd35d2', 'bdbc85437d928bf9ed6e2f0c260bb9c4', 1);

-- Create table prodotti
CREATE TABLE prodotti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(20) NOT NULL,
    nome VARCHAR(200) NOT NULL,
    disponibilita INT NOT NULL,
    prezzo FLOAT NOT NULL,
    fornitore VARCHAR(100) NOT NULL,
    CONSTRAINT prodotti_sku_uindex UNIQUE (sku)
);

-- Insert data into table prodotti
INSERT INTO prodotti (id, sku, nome, disponibilita, prezzo, fornitore)
VALUES
(1, 'URB-RED-S', 'T-shirt UrbanChic red S', 100, 35, 'UrbanChic'),
(2, 'URB-RED-M', 'T-shirt UrbanChic red M', 50, 35, 'UrbanChic'),
(3, 'URB-RED-L', 'T-shirt UrbanChic red L', 25, 35, 'UrbanChic'),
(4, 'URB-WHITE-S', 'T-shirt UrbanChic white S', 100, 29, 'UrbanChic'),
(5, 'URB-WHITE-M', 'T-shirt UrbanChic white M', 50, 29, 'UrbanChic'),
(6, 'URB-WHITE-L', 'T-shirt UrbanChic white L', 25, 29, 'UrbanChic'),
(7, 'DREAM-BLACK-44IT', 'Jeans DenimDream black 44IT', 100, 50, 'DenimDream'),
(8, 'DREAM-BLACK-46IT', 'Jeans DenimDream black 46IT', 50, 50, 'DenimDream'),
(9, 'DREAM-BLUE-44IT', 'Jeans DenimDream blue 44IT', 100, 45, 'DenimDream'),
(10, 'DREAM-BLUE-46IT', 'Jeans DenimDream blue 46IT', 7, 45, 'DenimDream');

-- Create table utenti
CREATE TABLE utenti (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    username VARCHAR(20) NOT NULL,
    password VARCHAR(50) NOT NULL,
    type INT NOT NULL
);

-- Insert data into table utenti
INSERT INTO utenti (id, nome, cognome, username, password, type)
VALUES
(1, 'Mario', 'Rossi', 'root@company.com', '63a9f0ea7bb98050796b649e85481845', 0),
(2, 'Giovanni', 'Bianchi', 'admin@company.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Marco', 'Verdi', 'user@company.com', 'ee11cbb19052e40b07aac0ca060c23ee', 2);

-- Create table vendite
CREATE TABLE vendite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_venditore INT NOT NULL,
    id_prodotto INT NOT NULL,
    quantita INT NOT NULL,
    importo FLOAT NOT NULL,
    data_vendita TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

-- Insert data into table vendite
INSERT INTO vendite (id, id_cliente, id_venditore, id_prodotto, quantita, importo, data_vendita)
VALUES
(1, 3, 2, 5, 10, 24, '2023-10-01 17:17:46'),
(5, 3, 1, 8, 33, 33, '2023-10-12 16:06:34');
