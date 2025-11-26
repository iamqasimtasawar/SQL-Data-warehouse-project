-- ===============================================================
-- Bronze Layer Data Insertion Script
-- Author: Qasim Tasawar
-- Purpose: Load raw CSV data into Bronze layer tables
-- Note: Update file paths according to your environment
-- ===============================================================

-- Avoid extra messages
SET NOCOUNT ON;
GO

-- ==========================
-- Table: Bronze.CUST_AZ12
-- ==========================
TRUNCATE TABLE Bronze.CUST_AZ12;

BULK INSERT Bronze.CUST_AZ12
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO

-- ==========================
-- Table: Bronze.LOC_A101
-- ==========================
TRUNCATE TABLE Bronze.LOC_A101;

BULK INSERT Bronze.LOC_A101
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO

-- ==========================
-- Table: Bronze.PX_CAT_G1V2
-- ==========================
TRUNCATE TABLE Bronze.PX_CAT_G1V2;

BULK INSERT Bronze.PX_CAT_G1V2
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO

-- ==========================
-- Table: Bronze.cust_info
-- ==========================
TRUNCATE TABLE Bronze.cust_info;

BULK INSERT Bronze.cust_info
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO

-- ==========================
-- Table: Bronze.prd_info
-- ==========================
TRUNCATE TABLE Bronze.prd_info;

BULK INSERT Bronze.prd_info
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO

-- ==========================
-- Table: Bronze.sales_details
-- ==========================
TRUNCATE TABLE Bronze.sales_details;

BULK INSERT Bronze.sales_details
FROM 'E:\DS\SQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR = ',',
TABLOCK
);
GO
