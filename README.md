# plsql-window-functions--Uwineza---Delphine-
PL/SQL Window Functions individual assignment

##Problem definition

##Business context
MediCare Solutions, a healthcare company based in Kigali-Rwanda, manages patient care and medical supply distribution across the region.
It operates in healthcare industry.
And it handles all aspects of direct patient care-diagnosing, treating, and managing illnesses,
as well as coordinating with other departments to ensure full healthcare service.

##Data challenge
The company will have to:
-Analyze patient treatment data
-track medical supply usage
-segment patients for targeted care programs

##Expected outcome
Solution to a realistic healthcare business problem

---

##Success criteria
1. **Top 5 patients per region/quarter** using `ROW_NUMBER(), RANK(), DENSE_RANK(), PERCENT_RANK()`.
2. **Running monthly totals of medical supply usage** using `SUM() OVER()`.
3. **Month over month growth in treatment usage** using `LAG()/LEAD()`.
4. **Segment patients into quartiles** using `NTILE(4)`.
5. **3-month moving averages of treatment quantities per region** using `AVG() OVER()`.

---

##Database schema
**Entities and Attributes:**
-**Patients** (patient_id, patient_name,region) ,purpose: Patients information.
-**Treatments** (treatment_id, treatment_name, category, supplier_id(FK)) ,purpose: treatments information.
-**Usage** (usage_id, patient_id(FK), treatment_id(FK), usage_date, quantity,staff_id(FK)) ,purpose: usage of treatments information.
-**Suppliers** (supplier_id, supplier_name, contact_info, region) ,purpose: tracks the suppliers information.
-**Staff** (staff_id, staff_name, role, region) ,purpose: staff information.

References

1. Course lecture notes
2. Academic: "Data Analysis in Healthcare" (Journal of Medical Informatics, 2023)
(Hypothetical citation; represents peer-reviewed research on healthcare data analysis, informing patient segmentation strategies.)
3. Tutorial: "Mastering SQL Window Functions" by Udemy
(Course excerpt used for practical examples and interpretation of results.)
4. Rwanda Health Data Report 2024 - Ministry of Health Rwanda
(Hypothetical report; represents local health data trends in Kigali, guiding regional analysis.)
5.MySQL 8.0 Documentation – Window Functions
6. W3Schools – SQL Window Functions Tutorial
7. Khan Academy – Introduction to SQL Queries and Analysis
8. Journal of Database Management – Articles on SQL Analytics
9. Oracle Documentation: "Analytic Functions" - https://docs.oracle.com/en/database/oracle/oracle-database/19/sqlrf/Analytic-Functions.html
(Official guide on PL/SQL window functions, used for syntax and implementation details.)
10. GeeksforGeeks – SQL Analytic Functions

"All sources were properly cited. Implementations and analysis represent original work.
No AI generated content was copied without attribution or adaptation."







