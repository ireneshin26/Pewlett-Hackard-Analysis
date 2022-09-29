-- Deliverable 1
-- Create Employees eligible for Retirement
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Exclude Employees that have left the company and export
SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, 
	rt.last_name, rt.title
INTO unique_retirement_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Retrieve number of employees by most recent job title who are about to retire
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_retirement_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;


-- Deliverable 2
-- Mentorship-eligibility table of current employees who were born between January 1, 1965 and December 31, 1965
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

-- Retrieve number of mentors
SELECT me.title, COUNT(me.emp_no)
INTO mentorship_eligibility_count
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT(me.emp_no) DESC;


-- Deliverable 3 Test 2 new queries
-- 1. Mentorship-eligibility expanded to birthyear of 1964 - 1966
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility_test1
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
WHERE (e.birth_date BETWEEN '1964-01-01' AND '1966-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

-- Retrieve number of mentors
SELECT met1.title, COUNT(met1.emp_no)
INTO mentorship_eligibility_test1_count
FROM mentorship_eligibility_test1 as met1
GROUP BY met1.title
ORDER BY COUNT(met1.emp_no) DESC;

-- 2. Retiring employees by Gender
SELECT ut.title, e.gender, COUNT(ut.title)
INTO unique_titles_bygender
FROM unique_retirement_titles as ut
INNER JOIN employees as e
ON ut.emp_no = e.emp_no
GROUP BY ut.title, e.gender;
