-- Vytvoøení databáze
CREATE DATABASE EvidenceZamestnancu;
GO

USE EvidenceZamestnancu;
GO

-- Tabulka zamìstnancù
CREATE TABLE Zamestnanci (
	OsobniCislo INT PRIMARY KEY IDENTITY(1,1),
	Jmeno NVARCHAR(50) NOT NULL,
	Prijmeni NVARCHAR(50) NOT NULL,
	ZdravotniPojistovna NVARCHAR(100),
	Mesto NVARCHAR(50)
);
GO

-- Tabulka pracovních pozic
CREATE TABLE PracovniPozice (
	CisloPozice INT PRIMARY KEY IDENTITY(1,1),
	NazevPozice NVARCHAR(100) NOT NULL
);
GO

-- Tabulka vztahù mezi zamìstnanci a pracovními pozicemi
CREATE TABLE ZamestnanciPozice(
	OsobniCislo INT NOT NULL,
    CisloPozice INT NOT NULL,
	PRIMARY KEY (OsobniCislo, CisloPozice),
	FOREIGN KEY (OsobniCislo) REFERENCES Zamestnanci(OsobniCislo) ON DELETE CASCADE,
	FOREIGN KEY (CisloPozice) REFERENCES PracovniPozice(CisloPozice) ON DELETE CASCADE);
GO
