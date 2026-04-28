-- this query is to see if there is a correlation between loan intent, loan status and default on file
SELECT loan_intent, loan_status, cb_person_default_on_file, COUNT(*) AS total
FROM credit_risk_dataset
GROUP BY loan_intent,loan_status, cb_person_default_on_file
ORDER BY total desc;

-- this query we want to see what is the default rate for each loan intent 
SELECT loan_intent, SUM(CAST(cb_person_default_on_file AS INT)) * 1.0 / COUNT(*) AS default_rate
FROM credit_risk_dataset
GROUP BY loan_intent
ORDER BY default_rate DESC;