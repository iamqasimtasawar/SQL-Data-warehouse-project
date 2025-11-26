-- ===============================================================
-- Bronze Layer Tables DDL Script
-- Author: Qasim Tasawar
-- Purpose: Create Bronze layer tables for raw data ingestion
-- ===============================================================

-- Use your database
USE DataWarehousePro;
GO

-- Avoid extra messages
SET NOCOUNT ON;
GO

-- ==========================
-- Table: Bronze.cust_info
-- ==========================
IF OBJECT_ID('Bronze.cust_info','U') IS NOT NULL
DROP TABLE Bronze.cust_info;
GO

CREATE TABLE Bronze.cust_info (
cst_id INT,
cst_key VARCHAR(50),
cst_firstname VARCHAR(50),
cst_lastname VARCHAR(50),
cst_marital_status VARCHAR(50),
cst_gndr VARCHAR(50),
cst_create_date DATE,
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO

-- ==========================
-- Table: Bronze.prd_info
-- ==========================
IF OBJECT_ID('Bronze.prd_info','U') IS NOT NULL
DROP TABLE Bronze.prd_info;
GO

CREATE TABLE Bronze.prd_info (
prd_id INT,
prd_key VARCHAR(50),
prd_nm VARCHAR(50),
prd_cost INT,
prd_line VARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE,
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO

-- ==========================
-- Table: Bronze.sales_details
-- ==========================
IF OBJECT_ID('Bronze.sales_details','U') IS NOT NULL
DROP TABLE Bronze.sales_details;
GO

CREATE TABLE Bronze.sales_details (
sls_ord_num VARCHAR(50),
sls_prd_key VARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT,
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO

-- ==========================
-- Table: Bronze.CUST_AZ12
-- ==========================
IF OBJECT_ID('Bronze.CUST_AZ12','U') IS NOT NULL
DROP TABLE Bronze.CUST_AZ12;
GO

CREATE TABLE Bronze.CUST_AZ12 (
CID VARCHAR(50),
BDATE DATE,
GEN VARCHAR(50),
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO

-- ==========================
-- Table: Bronze.LOC_A101
-- ==========================
IF OBJECT_ID('Bronze.LOC_A101','U') IS NOT NULL
DROP TABLE Bronze.LOC_A101;
GO

CREATE TABLE Bronze.LOC_A101 (
CID VARCHAR(50),
CNTRY TEXT,
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO

-- ==========================
-- Table: Bronze.PX_CAT_G1V2
-- ==========================
IF OBJECT_ID('Bronze.PX_CAT_G1V2','U') IS NOT NULL
DROP TABLE Bronze.PX_CAT_G1V2;
GO

CREATE TABLE Bronze.PX_CAT_G1V2 (
ID VARCHAR(50),
CAT VARCHAR(50),
SUBCAT VARCHAR(50),
MAINTENANCE VARCHAR(50),
dwh_create_Date DATETIME2 DEFAULT GETDATE()
);
GO
