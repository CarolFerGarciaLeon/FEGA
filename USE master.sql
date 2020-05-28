-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
   SELECT name
      FROM sys.databases
      WHERE name = N'FEGA'
)
CREATE DATABASE FEGA
GO
CREATE TABLE mitabla ( id INT PRIMARY KEY, nombre VARCHAR(20) );
INSERT INTO mitabla VALUES ( 1, 'Will' );
INSERT INTO mitabla VALUES ( 2, 'Marry' );
INSERT INTO mitabla VALUES ( 3, 'Dean' );
SELECT id, nombre FROM mitabla WHERE id = 1;
UPDATE mitabla SET nombre = 'Willy' WHERE id = 1;
SELECT id, nombre FROM mitabla;
DELETE FROM mitabla WHERE id = 1;
SELECT id, nombre FROM mitabla;
DROP DATABASE mydb;
SELECT count(1) from mitabla;