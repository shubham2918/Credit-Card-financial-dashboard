CREATE DATABASE ccdb;
USE ccdb;
CREATE TABLE CC
(
    Client_Num INT PRIMARY KEY,
    Card_Category VARCHAR(50),
    Annual_Fees INT,
    Activation_30_Days BOOLEAN,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(2),
    current_year INT,
    Credit_Limit DECIMAL(10, 2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Vol INT,
    Avg_Utilization_Ratio DECIMAL(5, 4),
    Use_Chip VARCHAR(50),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10, 2),
    Delinquent_Acc BOOLEAN
);


SELECT * FROM CC;

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Users/shubh/Downloads/credit_card.csv' -- Loads excel file
INTO TABLE CC -- location to import data
FIELDS TERMINATED BY ',' -- Specifies that each column is separated by a comma (,) in the CSV file.
ENCLOSED BY '"' -- Handles cases where values are surrounded by double quotes (e.g., "1234"). This is very common in CSV files where values might contain commas or special characters.
LINES TERMINATED BY '\n' -- Tells MySQL that each row of data ends with a newline character. This helps MySQL separate rows in the file.
IGNORE 1 ROWS; -- Skips the first row of the CSV file, which usually contains column headers like id,name,amount. If your CSV has no header row, remove this line.


CREATE TABLE Customers (
    Client_Num INT PRIMARY KEY,
    Customer_Age INT,
    Gender VARCHAR(10),
    Dependent_Count BOOLEAN,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    state_cd VARCHAR(2),
    Zipcode INT,
    Car_Owner VARCHAR(50),
    House_Owner VARCHAR(50),
    Personal_loan VARCHAR(50),
    contact VARCHAR(50),
    Customer_Job VARCHAR(100),
    Income DECIMAL(15,2),
    Cust_Satisfaction_Score INT
);

SELECT * FROM Customers;

LOAD DATA LOCAL INFILE 'C:/Users/shubh/Downloads/customer.csv' -- Loads excel file AND use single back slash / or double forward slash
INTO TABLE Customers -- location to import data
FIELDS TERMINATED BY ',' -- Specifies that each column is separated by a comma (,) in the CSV file.
ENCLOSED BY '"' -- Handles cases where values are surrounded by double quotes (e.g., "1234"). This is very common in CSV files where values might contain commas or special characters.
LINES TERMINATED BY '\n' -- Tells MySQL that each row of data ends with a newline character. This helps MySQL separate rows in the file.
IGNORE 1 ROWS; -- Skips the first row of the CSV file, which usually contains column headers like id,name,amount. If your CSV has no header row, remove this line.