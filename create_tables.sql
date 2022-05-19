DROP TABLE IF EXISTS Artifacts;
CREATE TABLE Artifacts (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     title VARCHAR(50) NOT NULL,
     description TEXT,
     value REAL,
     year DATE,
     artistId INTEGER,
     collectionTitle VARCHAR(50) NOT NULL,
     collectionDate DATE NOT NULL);

DROP TABLE IF EXISTS ArtifactPaintings;
CREATE TABLE ArtifactPaintings (
     id INTEGER PRIMARY KEY,
     canvas VARCHAR(30) NOT NULL);

DROP TABLE IF EXISTS ArtifactSculptures;
CREATE TABLE ArtifactSculptures (
     id INTEGER PRIMARY KEY,
     color VARCHAR(30) NOT NULL,
     material VARCHAR(30) NOT NULL);

DROP TABLE IF EXISTS Artists;
CREATE TABLE Artists (
     id INTEGER PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(50) NOT NULL,
     birthDate DATE,
     deathDate DATE,
     bio TEXT);

DROP TABLE IF EXISTS Collections;
CREATE TABLE Collections (
     title VARCHAR(50) PRIMARY KEY,
     topic VARCHAR(50) NOT NULL);

DROP TABLE IF EXISTS Exhibitions;
CREATE TABLE Exhibitions (
     title VARCHAR(50) PRIMARY KEY,
     topic VARCHAR(50) NOT NULL,
     room VARCHAR(10) NOT NULL,
     startDate DATE NOT NULL,
     endDate DATE);

DROP TABLE IF EXISTS Advertisements;
CREATE TABLE Advertisements (
     exhibitionTitle VARCHAR(50),
     date DATE,
     mediumName VARCHAR(30),
     cost REAL NOT NULL,
     duration INTEGER NOT NULL,
     PRIMARY KEY(exhibitionTitle, date, mediumName));

DROP TABLE IF EXISTS Media;
CREATE TABLE Media (
     name VARCHAR(30) PRIMARY KEY,
     type TEXT);

DROP TABLE IF EXISTS InfluencedBy;
CREATE TABLE InfluencedBy (
     influenceeId INTEGER,
     influencerId INTEGER,
     PRIMARY KEY(influenceeId, influencerId));

DROP TABLE IF EXISTS ExhibitedAt;
CREATE TABLE ExhibitedAt (
     artifactId INTEGER,
     exhibitionTitle VARCHAR(50),
     PRIMARY KEY(artifactId, exhibitionTitle));