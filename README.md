# Data-Warehouse-Project
This project is a modern SQL Data Warehouse that includes ETL processes, data modeling, and analytics. It was inspired by the YouTuber Data With Baraa.

----
## Project analysis
The goal of this project is to show how a data warehouse can be built and managed using SQL.
Throughout the process, I worked on designing the database schema, building an ETL pipeline
to load the data, and writing analytical queries to explore the information stored in the warehouse.

This project involves:
1. **Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.

## Data Architecure
This architecture is based on Medallion Architecture **Bronze**, **Silver** and **Gold** Layers: 
<img width="1544" height="912" alt="data_architecture" src="https://github.com/user-attachments/assets/a9e5c086-f837-424e-94d1-54cec4174130" />


1. **Bronze** : Stores raw data as it is from the source system. Data is imported from CSV files into the SQL Server database.
2. **Silver** : This layer is responsible for cleaning, normalizing, and standardizing the data, ensuring it is ready for subsequent analysis.
3. **Gold** : Contains business-ready data organized in a star schema to support reporting and analytical workloads

---
## Used Tools
- SQL Server Express and SQL Server Management Studio(SSMS)
- Notion to create a roadmap for the project:
(https://www.notion.so/SQL-Data-Warehouse-Project-2b4a5aa9294480d18f0fd91102c36b7a?source=copy_link)
- DrawIO to design Data architecture,model,flows and diagrams ([./docs/](https://github.com/spiggos/Data-Warehouse-Project/tree/main/docs))
