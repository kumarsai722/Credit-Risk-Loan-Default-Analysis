
-- 1️) What is the overall loan approval rate?
select round(avg(loanapproved)*100,2) as loan_approval_rate from customer_loans_approval;

-- 2) What is the total loan amount approved?
select sum(loanamount)as total_loan,loanapproved
from customer_loans_ap
group by loanapproved;

SELECT SUM(loanamount) 
FROM loans
WHERE loanapproved = 1;

-- SECTION 2: Risk & Credit Analysis
-- 3) Do customers with higher credit scores get approved more?

select loanapproved,avg(creditscore)
from loans
group by loanapproved


--4) What is the approval rate by credit score range?


select min(creditscore) from loans --300
select max(creditscore) from loans --849

select 
case
    when creditscore < 600 then 'poor'
	when creditscore between 600 and 700 then 'average'
	else  'good'
	end as  credit_range,
	round(avg(loanapproved),2)*100 as approval_rate
	from loans
	group by  credit_range

-- SECTION 3: Employment & Stability

-- 5) Which employment type has highest approval rate?

select * from loans;

select distinct(employmenttype) from loans

select employmenttype,
round(avg(loanapproved)*100,2) as approval_rate
from loans group by employmenttype
order by approval_rate desc;

-- 6) Does years of experience affect approval?

select * from loans; 

select  min(yearsexperience) from loans --0
select  max(yearsexperience) from loans  --39

select 
case when yearsexperience =0 then 'no experience'
	 when yearsexperience between 1 and 3 then 'less experience'
     when yearsexperience between 4 and 10 then 'avg experience'
     when yearsexperience between 11 and 20 then 'high experience'
	 else 'senior experience'
     end as experience_level,
round(avg(loanapproved)*100,2) as loan_approval
from loans
group by experience_level
order by  loan_approval desc;

select *from loans where yearsexperience=0

--SECTION 4: Education Impact

--7️)Does education level influence loan approval?

select * from loans;

select distinct(education) from loans

select education,
round(avg(loanapproved)*100,2) as loan_approval
from loans
group by education
order by loan_approval desc



--SECTION 5: Geographic Analysis

-- 8️) Which city has highest approval rate?
select * from loans

select city,
round(avg(loanapproved)*100,2) as loan_approval
from loans
group by city
order by loan_approval desc

--SECTION 6: Loan Behavior Analysis

-- 9) Does loan-to-income ratio affect approval?
select loanapproved,avg(loan_income_ratio)*100  loan_to_income 
from loans
group by loanapproved
order by loan_to_income


--`10) Are higher loan amounts rejected more?

select * from loans

SELECT loanapproved,
       AVG(loanamount)*100
FROM loans
GROUP BY loanapproved;


-- 11)which age people are getting more loans_approval..

select distinct(age) from loans
select min(age) from loans --18
select max(age) from loans --69

select 
case when age between 18 and 28 then 'young'
	when age between 29 and 49 then 'middle age'
	else 'senior'
	end as age_group,
round(avg(loanapproved)*100,2) as loans_approval from loans 
group by age_group
order by loans_approval
-----
--11) Is the loan_income_ratio higher for rejected customers?
SELECT 
    AVG(loan_income_ratio)*100,
    loanapproved
FROM loans
GROUP BY loanapproved;

select *from loans

--12) Approval rate by risk category.
SELECT 
    CASE 
        WHEN loan_income_ratio < 0.3 THEN 'Low Risk'
        WHEN loan_income_ratio BETWEEN 0.3 AND 0.6 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category,
    ROUND(AVG(loanapproved)*100,2) AS approval_rate
FROM loans
GROUP BY risk_category
ORDER BY approval_rate DESC;

--13)Are there customers with: Good credit score (>700) ,But still rejected?
select *from 
loans where creditscore>700 and loanapproved=1;

SELECT 
    AVG(loan_income_ratio)
FROM loans
WHERE creditscore > 700
AND loanapproved = 0;


-------------------------------------

select *from loans where loanamount is null

select min(loanmount) from loans