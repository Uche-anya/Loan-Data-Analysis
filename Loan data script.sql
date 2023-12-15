
--Count of loans by status:
select loan_status, count (loan_status) as loan_count
from Cleaned_Loan_Payments_data
group by loan_status;

-- Average Principal by loan status:
select loan_status, avg(principal) as avg_principal
from Cleaned_Loan_Payments_data
group by loan_status;

--Distribution of Ages in different loan statuses
select loan_status, avg(age) as avg_age, min(age) as min_age, max(age) as max_age
from Cleaned_Loan_Payments_data
group by loan_status

-- Loan Term Analysis
select terms, count(terms) as loan_term_count
from Cleaned_Loan_Payments_data
group by terms

--Education level and gender breakdown in collection
select education, gender, count (*) as customer_count
from Cleaned_Loan_Payments_data
where loan_status = 'collection'
group by education, Gender;

-- Calculate the loan duration
SELECT loan_id, DATEDIFF(day, effective_date, paid_off_time) AS loan_duration
FROM Cleaned_Loan_Payments_data
WHERE paid_off_time IS NOT NULL;

--Average time to pay off by education level
select education, avg(loan_duration) as avg_loan_duration
from Cleaned_Loan_Payments_data
where paid_off_time is not null
group by education;

