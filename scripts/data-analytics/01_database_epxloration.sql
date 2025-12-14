/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

--========================================

/*Dimension vs Measure
Is Data Type a Number?:
IF No-> Dimension
IF YES:
Does it make sense to aggregate?:
IF NO-> Dimension
IF YES-> Measure

======================================
GROUP BY Dimension
ORDER BY Measure
=====================================
*/

-- Explore All Objects in the Database
SELECT 
	TABLE_CATALOG,
	TABLE_SCHEMA,
	TABLE_NAME,
	TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES

-- Explore All Columns in the Database

SELECT 
	TABLE_CATALOG,
	TABLE_SCHEMA,
	TABLE_NAME,
	COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS