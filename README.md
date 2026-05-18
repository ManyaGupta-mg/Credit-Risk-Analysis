# Credit Risk Analysis Dashboard

## Project Overview
This project analyzes borrower, loan, and credit behavior data to identify key drivers of credit risk and loan performance. The objective is to support portfolio monitoring and risk-based lending decisions using Python, SQL, and Power BI.

---

## Problem Statement
The goal of this project is to analyze borrower and loan characteristics to understand factors influencing credit risk and loan performance. The project focuses on descriptive risk segmentation and borrower behavior analysis to support better lending and portfolio management decisions.

---

## Business Questions
This analysis aims to answer the following key business questions:

- What is the distribution of loan performance across different loan statuses?
- How are borrowers distributed across different risk levels?
- Which financial factors have the strongest influence on borrower risk?
- How does debt-to-income ratio (DTI) vary across different risk categories?
- Does credit utilization impact borrower risk levels?
- How does interest rate vary across risk segments?
- Is credit grade strongly aligned with borrower risk?
- How does delinquency behavior differ across risk levels?
- Do demographic factors like income and homeownership significantly impact risk?
- What differentiates high-risk borrowers from low-risk borrowers?

---

## Tools & Technologies
- Python (Data Cleaning & Preprocessing)
- SQL (Exploratory Data Analysis)
- Power BI (Dashboard & Visualization)

---

## Dataset Overview
- Total Records: 10,000 loan applications 
- The dataset includes borrower financial and credit attributes such as:
  - Loan Id
  - Employment Length
  - State
  - Homeownership
  - Annual Income
  - Verified Income Status
  - Debt-to-Income Ratio (DTI)
  - Delinquency History 
  - Interest Rate
  - Credit Grade
  - Loan Status
  - Credit Utilization
  

---

## Project Workflow

### 1. Data Cleaning (Python)
- Handled missing and inconsistent values
- Standardized categorical and numeric fields
- Prepared dataset for analysis
- created 2 columns risk level and credit utilization ratio

---

### 2. Exploratory Data Analysis (SQL)
- Analyzed loan performance distribution
- Segmented borrowers by income levels and risk levels
- Studied relationships between income, DTI, utilization, and risk
- Evaluated credit grades, delinquency, and interest rate patterns

---

### 3. Dashboard Development (Power BI)
Built an interactive dashboard with two pages:

#### 📊 Portfolio Overview
- Loan performance distribution
- Borrower risk segmentation
- Credit grade distribution
- Homeownership analysis
- Employment length analysis
- KPI metrics (Total Loans, Avg Interest Rate,High Risk %, Default Rate)

#### 📊 Risk Driver Analysis
- Income vs Risk
- DTI vs Risk
- Credit Utilization vs Risk
- Interest Rate vs Risk
- Delinquency behavior across risk levels

---

## Key Insights
- Majority of borrowers fall under the Medium Risk category.
- Credit grade strongly aligns with borrower risk levels.
- Interest rates increase with higher risk categories.
- Credit behavior variables (utilization, delinquency) are stronger risk indicators than demographic variables.
- Homeownership and employment length show limited differentiation in risk levels.

---

## Recommendations
- Strengthen monitoring for borrowers with high credit utilization and delinquency patterns.
- Use credit grade as an important filter in lending decisions.
- Maintain risk-based pricing strategy aligned with borrower risk levels.
- Focus on early detection of financial stress indicators for proactive risk management.

---

## Limitations
- Most loans are currently active, so long-term default outcomes are not fully observed.
- The project focuses on descriptive risk segmentation rather than predictive modeling.
- Extremely low default rate limits advanced statistical validation and predictive accuracy.

---

## Dashboard Preview

[Credit Risk Analysis Dashboard]()

### Portfolio Overview


### Risk Driver Analysis


---

## Conclusion
This project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI to analyze credit risk patterns and borrower behavior. It highlights key risk drivers and supports data-driven lending and portfolio monitoring decisions.
