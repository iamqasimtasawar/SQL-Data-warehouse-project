# **Modern Data Warehouse Project – Medallion Architecture (Bronze → Silver → Gold)**

### **By Qasim Tasawar – Data Analyst / BI Developer**

---

## 📌 **Overview**

This repository showcases a fully functional **Modern Data Warehouse** built using **Microsoft SQL Server** and designed according to the **Medallion Architecture** (Bronze, Silver, Gold).

The project simulates a real-world data engineering workflow involving **Sales**, **Customers**, and **Product** datasets coming from multiple systems (ERP & CRM).

It demonstrates end-to-end data processing:

* Raw data ingestion
* Data cleaning & standardization
* Data modeling (Star Schema)
* Fact & Dimension building
* SQL-based analytics

The repository is structured to reflect a professional data engineering environment.

---

## 📂 **Repository Structure**

```
📦 DataWarehouse-Project
│
├── 📁 Dataset/
│   └── Source ERP & CRM CSV files
│
├── 📁 Doc/
│   ├── Project Documentation
│   ├── Architecture Notes
│   └── Data Dictionary
│
├── 📁 Scripts/
│   ├── 🟫 Bronze/   → Raw data layer (DDL + BULK LOAD)
│   ├── ⚪ Silver/   → Cleaned & standardized layer
│   ├── 🟨 Gold/     → Data model (facts + dimensions)
│
├── 📁 Test/
│   └── Validation queries, data quality checks
│
├── 📄 License
└── 📄 README.md
```

---

# 🏗 **Architecture: Medallion Layer Model**

```
               ┌──────────────────────────┐
               │         GOLD Layer        │
               │  Fact Sales, Dimensions   │
               └─────────────▲────────────┘
                             │
               ┌─────────────┴────────────┐
               │        SILVER Layer       │
               │ Clean, Standardized, QC'd │
               └─────────────▲────────────┘
                             │
               ┌─────────────┴────────────┐
               │        BRONZE Layer       │
               │   Raw, Ingested, Untouched│
               └──────────────────────────┘
```

---

## 🎯 **Project Goals**

This project solves the common data challenges organizations face:

* Raw data arriving from multiple systems
* Inconsistent formats, missing values, duplicates
* No proper modeling for analytics
* Need for scalable, structured data pipelines

By applying the Medallion Architecture and SQL Server ETL pipelines, this repository demonstrates how to build a production-ready data warehouse.

---

# ✔ **Solution Summary**

## 🟫 **Bronze Layer – Raw Data Ingestion**

* Loads untouched CSVs from `/Dataset/`
* Uses `BULK INSERT` for ingestion
* No cleaning or transformations at this stage
* Stored for auditability and reproducibility

Scripts stored in:
`Scripts/Bronze/`

---

## ⚪ **Silver Layer – Cleaned Data**

* Data type corrections
* Standardized column names
* Null handling & deduplication
* Validations & business rules

This layer produces **analytic-ready clean data**.

Scripts stored in:
`Scripts/Silver/`

---

## 🟨 **Gold Layer – Data Modeling**

* Star Schema design
* Fact table for sales
* Dimensions for customer, product & date
* Surrogate keys & slowly changing logic
* Optimized for analytics tools & reporting

Scripts stored in:
`Scripts/Gold/`

---

## 📊 **Use Cases Enabled**

* Customer purchase behavior analysis
* Product performance reporting
* Historical sales trend analysis
* BI dashboards (Power BI / Tableau / Excel)
* KPI calculations: revenue, quantity, profit

---

## 🛠 **Tech Stack**

| Category          | Tools / Technologies             |
| ----------------- | -------------------------------- |
| Database Engine   | Microsoft SQL Server             |
| Storage           | CSV files                        |
| ETL Development   | T-SQL scripts                    |
| Architecture      | Medallion (Bronze, Silver, Gold) |
| Modeling Approach | Kimball Dimensional Modeling     |
| Testing           | SQL Data Quality Checks          |

---

## 📘 **Documentation (Doc/ Folder)**

The `/Doc` folder includes:

* Project explanation
* Data architecture design
* Data dictionary for all tables
* SQL workflow notes
* Entity relationship details

---

## 🧪 **Testing (Test/ Folder)**

Includes:

* Row count validation
* Source vs Target comparison
* Duplicate detection queries
* Null & constraint tests
* Business logic tests

---

## 👤 **About the Author – Qasim Tasawar**

I am a **Data Analyst & BI Developer** specializing in:

* SQL Development
* Data Modeling
* Data Engineering
* ETL Pipelines
* Business Intelligence

My goal is to build scalable, reliable, and analytics-driven data systems that deliver real business value.

---

## 🚀 **How to Run the Project**

1. Clone the repository
2. Open SQL Server Management Studio
3. Run scripts in this order:

   * `Scripts/Bronze` → Create & Load Raw Data
   * `Scripts/Silver` → Clean & Transform
   * `Scripts/Gold` → Build Fact & Dimension Tables
4. Start querying the Gold layer for insights

---

## 📬 **Contact**

If you want to collaborate or need help:

**LinkedIn:** *https://www.linkedin.com/in/qasimtasawar/*
**Email:** *tasawarqasim30@gmail.com*

Just tell me!
