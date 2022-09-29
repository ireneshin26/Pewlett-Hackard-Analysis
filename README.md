# **Pewlett-Hackard-Analysis**

## **Overview of the analysis:**
Using the data that was provided, an analysis was conducted to determine the number of retiring employees per title and employees who are eligible to participate in a mentorship program. This analysis was completed to help make decisions and prepare for the "silver tsunami" as many current employees reach retirement age.

## **Resources:**
### Data Sources:
* departments.csv
* dept_emp.csv
* dept_manager.csv
* employees.csv
* salaries.csv
* titles.csv

### ERD Diagram: 
* https://app.quickdatabasediagrams.com/
* INSERT PICTURE EmployeeDB.png

### Tools: 
* pgAdmin 4 - Version 6.12 (4280.88)

***
## **Results:**

### **Deliverable 1**
*For the first analysis, we determined the number of retiring employees by title. We took employees born between 1/1/1952 - 12/31/1955, identified unique instances of an employee's ID to identify the most recent title, and excluded people that have left the company.*

**Observations:**
* There are a total of 72,458 employees that are coming up for retirement. Split by title: 
    * INSERT PICTURE retiring_titles.png
* The two positions that have the highest number of employees are Senior Engineers (25916) and Senior staff (24926) and the lowest being the managers (2).

**Resources:**
Unique_Titles.csv



### **Deliverable 2**
*For the second analysis, we identified retirement-ready employees that were born between 1/1/1965 - 12/31/1965 that could be a mentor to help train the next generation of employees. 

**Observations:**
* A total of 1549 employees are eligible for the mentorship program. 
    * INSERT PICTURE mentorship_eligibility_count.png
* The title with the highest number of eligible mentors are Staff (576) and Senior Engineer (528).
* The title with no eligible mentors is for the Manager position. 

**Resources:**
Mentorship_Eligibility.csv

***
## **Summary:**
#### **How many roles will need to be filled as the "silver tsunami" begins to make an impact?** 
A total of 72,458 positions are coming up for retirement, suggesting that the company would need to plan to promote non-Senior staff to the Senior positions and hire to backfill their positions or hire external candidates to fill the Senior positions. If the plan is to promote non-Senior staff to the Senior positions, then it is recommended to build mentorshp relationships for these employees with the Senior positions for knowledge transfer and guidance prior to the Senior employees' retirement.


#### **Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**
No, there are only a total of 1549 employees eligible to be a mentor with the number divided across the different titles. Below are the percentages of the retiring candidates (72,458) that are eligible to be a mentor across the different titles. 
* Senior Engineer: 548 / 25916 (2%)
* Senior Staff: 148 / 24926 (1%)
* Engineer: 191 / 9285 (2%)
* Staff: 576 / 7636 (8%)
* Technique Leader: 77 / 3603 (2%)
* Assistant Engineer: 29 / 1090 (3%)
* Manager: 0 / 2 (0%)
**Resources:** mentorship_eligibility_test1.csv

#### **Additional Queries/Tables that could provide further insight**

Increase the eligibility of the mentors to include more ages. Currently, the mentor eligibility is set to a birthdate of 1965 but we can test by using birth year of 1964 -1966. 
* INSERT PICTURE mentorship_eligibility_test1_count.png

The percentages of available mentors increases significantly although the number of mentors for managers stayed the same:
* Senior Engineer: 7071 / 25916 (27%)
* Senior Staff: 1882 / 24926 (8%)
* Engineer: 2547 / 9285 (27%)
* Staff: 7167 / 7636 (94%)
* Technique Leader: 954 / 3603 (26%)
* Assistant Engineer: 284 / 1090 (26%)
* Manager: 0 / 2 (0%)


From the Unique_titles dataset, we did a deep dive into the number of women and men for each title to determine hiring strategy to maintain company diversity and equal hiring rights. 
* INSERT PICTURE unique_titles_by_gender.png
