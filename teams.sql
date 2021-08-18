-- Drop and Add database
DROP DATABASE IF EXISTS nfldb;
CREATE DATABASE nfldb;

-- Drop and add user
DROP USER IF EXISTS 'nflUser'@'localhost';
CREATE USER 'nflUser'@'localhost' IDENTIFIED BY 'Cjc3425@';

-- Grant our user access to all tables to the database
GRANT ALL PRIVILEGES ON nfldb.* to 'nflUser'@'localhost';
FLUSH PRIVILEGES;

-- Create table schema
USE nfldb;
CREATE TABLE teams (
  id INT auto_increment,
  location VARCHAR(255),
  mascot VARCHAR(255),
  abbreviation VARCHAR(255),
  conference ENUM('AFC', 'NFC'),
  division ENUM('North', 'South', 'East', 'West'),
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

-- Insert data
USE nfldb;
INSERT INTO teams (location, mascot, abbreviation, conference, division)
VALUES 
('Buffalo', 'Bills', 'BUF', 'AFC', 'East'),
('Miami', 'Dolphins', 'MIA', 'AFC', 'East'),
('New England', 'Patriots', 'NE', 'AFC', 'East'),
('New York', 'Jets', 'NYJ', 'AFC', 'East'),
('Baltimore', 'Ravens', 'BAL', 'AFC', 'North'),
('Cincinnati', 'Bengals', 'CIN', 'AFC', 'North'),
('Cleveland', 'Browns', 'CLE', 'AFC', 'North'),
('Pittsburgh', 'Steelers', 'PIT', 'AFC', 'North'),
('Houston', 'Texans', 'HOU', 'AFC', 'South'),
('Indianapolis', 'Colts', 'IND', 'AFC', 'North'),
('Jacksonville', 'Jaguars', 'JAX', 'AFC', 'North'),
('Tennessee', 'Titans', 'TEN', 'AFC', 'North'),
('Denver', 'Broncos', 'DEN', 'AFC', 'West'),
('Kansas City', 'Chiefs', 'KC', 'AFC', 'West'),
('Los Angeles', 'Chargers', 'LAC', 'AFC', 'West'),
('Oakland', 'Raiders', 'OAK', 'AFC', 'West'),
('Dallas', 'Cowboys', 'DAL', 'NFC', 'East'),
('New York', 'Giants', 'NYG', 'NFC', 'East'),
('Philadelphia', 'Eagles', 'PHI', 'NFC', 'East'),
('Washington', 'Redskins', 'WSH', 'NFC', 'East'),
('Chicago', 'Bears', 'CHI', 'NFC', 'North'),
('Detriot', 'Lions', 'DET', 'NFC', 'North'),
('Green Bay', 'Packers', 'GB', 'NFC', 'North'),
('Minnesota', 'Vikings', 'MIN', 'NFC', 'North'),
('Atlanta', 'Falcons', 'ATL', 'NFC', 'South'),
('Carolina', 'Panthers', 'CAR', 'NFC', 'South'),
('New Orleans', 'Saints', 'NO', 'NFC', 'South'),
('Tampa Bay', 'Buccaneers', 'TB', 'NFC', 'South'),
('Arizona', 'Cardinals', 'ARI', 'NFC', 'West'),
('Los Angeles', 'Rams', 'LAR', 'NFC', 'West'),
('San Francisco', '49ers', 'SF', 'NFC', 'West'),
('Seattle', 'Seahawks', 'SEA', 'NFC', 'West');


-- Display our data after creation
select * from nfldb.teams;



