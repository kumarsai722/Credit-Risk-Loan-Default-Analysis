# Bank Loan Risk and Approval Analysis
End-to-End Credit Risk Analysis using Python, SQL &amp; Power BI

📌 Project Overview
This project focuses on analyzing loan applicant data to identify patterns and risk factors that contribute to loan default. The objective is to perform data cleaning, exploratory data analysis (EDA), and generate business insights that help financial institutions minimize credit risk.

The analysis was performed using Python (Pandas), SQL, and Power BI.

🎯 Objectives

. Clean and preprocess raw loan data

. Handle missing values using fillna()

. Detect null values using isna()

. Remove duplicate records using duplicated()

. Perform Exploratory Data Analysis (EDA)

. Extract key risk insights using SQL

. Build an interactive Power BI dashboard

🔎 Key Business Insights:
• High-risk applicants show the lowest approval rate
• Loan-to-Income Ratio is a strong rejection indicator
• Higher credit score improves approval probability, but does not guarantee approval
• Salaried and experienced applicants show stronger approval trends
• Loan demand is concentrated between $10K–$25K range
• Education level has moderate impact on approval decisions


🔹 SQL Analysis (PostgreSQL)
• Calculated overall approval rate

• Segmented customers by credit score range (Poor / Average / Good)

• Analyzed approval rate by employment, experience, age, and city

• Created risk categories using CASE statements

• Identified high-credit customers who were still rejected



🧹 Data Cleaning & EDA (Python - Pandas):

• Identified missing values using isna()

• Handled nulls using median-based fillna()

• Replaced negative Income & LoanAmount values

• Checked duplicates using duplicated()

• Created Loan-to-Income Ratio feature

• Performed approval vs rejection group analysis

• Filled missing values using fillna() (mean/median/mode)


🛠️ Tools & Technologies Used

Python
Pandas
NumPy
Matplotlib
SQL (PostgreSQL)
Power BI

Bnak Loan Risk and Approval Analysis/

├── Pandas_Data_Cleaning      → Data cleaning & EDA notebook

├── Sql_query/                → SQL analysis queries

├── Powerbi_Dashboard/        → Power BI dashboard file

├── Screenshots/              → Dashboard visuals

├── bank_loan_raw_file/       → Original dataset

├── LICENSE

└── README.md



👨‍💻 Author

SaiKumar Gandham
Data Analyst
Python | SQL | Power BI
