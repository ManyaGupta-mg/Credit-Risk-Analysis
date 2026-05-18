CREATE DATABASE  loan_risk_db ;

USE loan_risk_db ;

CREATE TABLE loan_data (
    loan_id INT PRIMARY KEY,
	emp_length INT,
    state VARCHAR(10),
    homeownership VARCHAR(20),
	annual_income FLOAT,
    verified_income VARCHAR(20),
    debt_to_income FLOAT,
    delinq_2y INT,
    inquiries_last_12m INT,
    total_credit_limit INT,
    total_credit_utilized INT,
    num_historical_failed_to_pay INT,
    public_record_bankrupt INT,
    loan_purpose VARCHAR(50),
    loan_amount INT,
    term INT,
    interest_rate FLOAT,
    grade VARCHAR(5),
    loan_status VARCHAR(20),
	risk_level VARCHAR(20),
	credit_utilization_ratio FLOAT
);

SELECT * FROM loan_data ;

-- Q1 What is the distribution of loan status (performance breakdown)?

SELECT loan_status , count(*) as Total_Loans , ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage_share
FROM loan_data
GROUP BY loan_status
ORDER BY Total_Loans desc ;

-- Q2  How are borrowers distributed across risk levels?
SELECT risk_level, count(*) as Total_Borrowers , ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage_share
FROM loan_data
GROUP BY risk_level
ORDER BY Total_Borrowers DESC ;

-- Q3 Do lower-income borrowers have higher risk?
   -- Average income by risk_level
SELECT risk_level,round(AVG(annual_income),0) AS avg_income
FROM loan_data
GROUP BY risk_level
ORDER BY avg_income DESC;
   -- income_group by risk_level
SELECT 
    CASE 
        WHEN annual_income <= 50000 THEN 'Low Income'
        WHEN annual_income BETWEEN 50001 AND 80000 THEN 'Mid Income'
        WHEN annual_income BETWEEN 80001 AND 120000 THEN 'Upper Mid Income'
        ELSE 'High Income'
    END AS income_group,
    risk_level,
    COUNT(*) AS total_borrowers
FROM loan_data
GROUP BY income_group, risk_level
ORDER BY income_group , risk_level ;

-- Q4 How does risk vary by debt-to-income (DTI)?
SELECT risk_level, ROUND(AVG(debt_to_income), 2) AS avg_dti
FROM loan_data
GROUP BY risk_level
ORDER BY avg_dti DESC;

-- Q5 How does credit utilization vary by risk level?
SELECT risk_level,ROUND(AVG(credit_utilization_ratio), 2) AS avg_credit_utilization_ratio
FROM loan_data
GROUP BY risk_level
ORDER BY avg_credit_utilization_ratio DESC;

-- Q6 How does interest rate vary across different risk levels?
SELECT risk_level,ROUND(AVG(interest_rate), 2) AS avg_interest_rate
FROM loan_data
GROUP BY risk_level
ORDER BY avg_interest_rate DESC;

-- Q7 How is loan risk distributed across different home ownership categories?
SELECT homeownership,risk_level,COUNT(*) AS total_loans
FROM loan_data
GROUP BY homeownership, risk_level
ORDER BY homeownership, total_loans DESC;

-- Q8 How does credit delinquency behavior vary across different risk levels?
SELECT risk_level,ROUND(AVG(delinq_2y), 2) AS avg_delinquencies
FROM loan_data
GROUP BY risk_level
ORDER BY avg_delinquencies DESC;

-- Q9 How well do credit grades align with borrower risk levels?
SELECT grade,risk_level,COUNT(*) AS total_loans
FROM loan_data
GROUP BY grade, risk_level
ORDER BY grade, total_loans DESC;

-- Q10  What key financial indicators differentiate high-risk borrowers from low-risk borrowers?
SELECT risk_level,
    ROUND(AVG(annual_income), 2) AS avg_income,
    ROUND(AVG(debt_to_income), 2) AS avg_dti,
    ROUND(AVG(credit_utilization_ratio), 2) AS avg_credit_util,
    ROUND(AVG(interest_rate), 2) AS avg_interest_rate,
    ROUND(AVG(delinq_2y), 2) AS avg_delinquencies
FROM loan_data
GROUP BY risk_level;

