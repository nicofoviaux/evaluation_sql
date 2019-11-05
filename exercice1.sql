CREATE TABLE Clients (
cli_num INT primary KEY,
cli_nom VARCHAR(50),
cli_adresse VARCHAR(50),
cli_tel VARCHAR(30)
);
CREATE TABLE Produit (
pro_num INT primary KEY,
pro_libelle VARCHAR(50),
pro_description VARCHAR(50)
);
CREATE TABLE Commande (
com_num INT PRIMARY KEY,
cli_num INT,
com_date DATETIME,
com_obs VARCHAR(50),
FOREIGN KEY fk3 (cli_num) REFERENCES Clients (cli_num)
);
CREATE TABLE est_compose(
com_num INT,
pro_num INT,
est_qte INT,
primary KEY (com_num,pro_num),
FOREIGN KEY fk1 (com_num) REFERENCES Commande (com_num),
FOREIGN KEY fk2 (pro_num) REFERENCES Produit (pro_num)
);
