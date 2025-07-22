drop database if exists Retail_Data;
create database if not exists Retail_Data;
use Retail_Data;

create table if not exists Retail_Transactions(
    Transaction_ID varchar(50),
    Transaction_Date datetime,
    Transaction_Amount decimal(10,2)
    );
    
create table if not exists Retail_Responses(
    Customer_ID varchar(50),
    Response int
    );
load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
into table Retail_Transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
into table Retail_Responses
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

select * from Retail_Transactions limit 10;

