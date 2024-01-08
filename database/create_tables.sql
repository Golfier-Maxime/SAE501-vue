CREATE TABLE User (
    userID INT PRIMARY KEY NOT NULL,
    email VARCHAR(255),
    password VARCHAR(255),
    panierID INT,
    FOREIGN KEY (panierID) REFERENCES Panier(panierID)
);

CREATE TABLE Panier (
    panierID INT PRIMARY KEY NOT NULL,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);

CREATE TABLE Montre (
    montreID INT PRIMARY KEY NOT NULL,
    boitier VARCHAR(255),
    cadran VARCHAR(255),
    pierres VARCHAR(255),
    bracelets VARCHAR(255),
    boitierprix INT,
    cadranprix INT,
    pierresprix INT,
    braceletsprix INT,
    prixtotal INT
);

CREATE TABLE Articles (
    articleID INT PRIMARY KEY NOT NULL,
    quantite INT,
    panierID INT,
    montreID INT, -- Assurez-vous que cette référence a du sens dans votre modèle
    FOREIGN KEY (panierID) REFERENCES Panier(panierID),
    FOREIGN KEY (montreID) REFERENCES Montre(montreID)
);