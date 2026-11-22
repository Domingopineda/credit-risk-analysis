-- on this query we want to see how much affect the interest rate has on the default rate
SELECT loan_grade,cb_person_default_on_file, AVG(loan_int_rate) AS avg_interest_rate
FROM credit_risk_dataset
GROUP BY loan_grade, cb_person_default_on_file
ORDER BY avg_interest_rate desc

