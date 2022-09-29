# **Pewlett-Hackard-Analysis**

## **Overview:**
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
* <img width="450" alt="EmployeeDB" src="https://user-images.githubusercontent.com/110875578/193090449-20564fb0-f539-4f12-8919-69c29ad824a8.png">


### Tools: 
* pgAdmin 4 - Version 6.12 (4280.88)

***
## **Results:**

### **Deliverable 1**
*For the first analysis, we determined the number of retiring employees by title. We took employees born between 1/1/1952 - 12/31/1955, identified unique instances of an employee's ID to identify the most recent title, and excluded people that have left the company.*

**Observations:**
* There are a total of 72,458 employees that are coming up for retirement. Split by title: 
    * <img width="250" alt="Retiring_Titles" src="https://user-images.githubusercontent.com/110875578/193090895-e86b57a3-f3e1-44ac-944d-fb4a4e5ed161.png">

* The two positions that have the highest number of employees are Senior Engineers (25916) and Senior staff (24926) and the lowest being the managers (2).

**Resources:**
* Unique_Titles.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)
* Retiring_Titles.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)



### **Deliverable 2**
*For the second analysis, we identified retirement-ready employees that were born between 1/1/1965 - 12/31/1965 that could be a mentor to help train the next generation of employees. 

**Observations:**
* A total of 1549 employees are eligible for the mentorship program. 
    * <img width="250" alt="Mentorship_Eligibility_count" src="https://user-images.githubusercontent.com/110875578/193091028-51143252-033c-4beb-ab12-e3839b6c7244.png">

* The title with the highest number of eligible mentors are Staff (576) and Senior Engineer (528).
* The title with no eligible mentors is for the Manager position. 

**Resources:**
* Mentorship_Eligibility.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)
* Mentorship_Eligibility_Count.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility_count.csv)

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

#### **Additional Queries/Tables that could provide further insight**

1) Increase the eligibility of the mentors to include more ages. Currently, the mentor eligibility is set to a birthdate of 1965 but we can test by using birth year of 1964 -1966. 
   * <img width="250" alt="Mentorship_Eligibility_Test1_Count" src="https://user-images.githubusercontent.com/110875578/193091134-c98cbc07-0023-4ecf-8b05-1653e66f32d0.png">

   The percentages of available mentors increases significantly although the number of mentors for managers stayed the same:
   * Senior Engineer: 7071 / 25916 (27%)
   * Senior Staff: 1882 / 24926 (8%)
   * Engineer: 2547 / 9285 (27%)
   * Staff: 7167 / 7636 (94%)
   * Technique Leader: 954 / 3603 (26%)
   * Assistant Engineer: 284 / 1090 (26%)
   * Manager: 0 / 2 (0%)
   
   Resources: 
   * Mentorship_Eligibility_Test1_Count.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility_test1_count.csv)


2) From the Unique_titles dataset, we did a deep dive into the number of women and men for each title to determine hiring strategy to maintain company diversity and equal hiring rights. 
   * <img width="250" alt="unique_titles_by_gender" src="https://user-images.githubusercontent.com/110875578/193091274-728bacf4-f70a-401b-8778-158adfc3da36.png">
   Resources: 
   * Unique_Titles_ByGender.csv (https://github.com/ireneshin26/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles_bygender.csv)
