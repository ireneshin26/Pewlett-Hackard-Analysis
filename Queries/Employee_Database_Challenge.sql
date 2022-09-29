-- Deliverable 1
-- Create Employees eligible for Retirement
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

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
ORDER BY emp_no
