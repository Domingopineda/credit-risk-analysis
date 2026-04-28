
-- on this query we want to se if people with lees income have a higher default rate
SELECT cb_person_default_on_file, AVG(person_income) AS default_vs_income
FROM credit_risk_dataset
GROUP BY cb_person_default_on_file
ORDER BY default_vs_income asc

-- on this query i want to see if there is a correlation between loan status, default on file and income, to see if people with less income have a higher default rate and if that affects their loan status
SELECT loan_status, cb_person_default_on_file, AVG(person_income) AS risk_by_income
FROM credit_risk_dataset
GROUP BY cb_person_default_on_file, loan_status
ORDER BY risk_by_income desc


