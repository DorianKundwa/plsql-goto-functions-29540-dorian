# PL/SQL GOTO Statements and Functions Reflection

**Author:** Turashimye Dorian Kundwa (ID: 29540)  
**Course:** INSY 8311 | Database Development with PL/SQL  

---

## Part A: Comparing Control Structures (GOTO and IF/ELSE)

In comparing the scripts for Task A2 (`A2_salary_review.sql`) and Task A4 (`A4_rewrite_no_goto.sql`), there is a clear difference in both the output and how easy to read them.

- **GOTO  (A2):**
  - The GOTO approach required defining a specific label (`<<next_employee>>`) and utilizing a dummy `NULL;` statement simply to satisfy the requirements.which i discovered while doing the assignmennt before i thought null was not needed but not putting it gave out an error.which i changed after getting some help from an ai assistant.

- **Structured IF/ELSE (A4):**
  - The rewritten A4 script replaced the goto with an `IF/ELSE` block. 
  - while doing it i also got to see a new funtion called cursor but since i dint understand it well i used for loop to iterate over the employees.

---

## Part B & C: Modular Design and Exception Handling


- **Dynamic Type:**
  - Utilizing the dynamic `%TYPE` i learnt this function that allow dynamic data type declaration. but i havent used it but it can be used in functions to help when one change the data type in table the function updates automatically.

- **Custom  Exceptions:**
  - i made some  custom  exceptions (such as `e_invalid_salary` and `e_no_department` in `fn_validate_payroll`) to enforce some rules to the database rather than just catching  Oracle errors.

- **Code Reusability:**
  - by using functions (`fn_annual_salary` and `fn_dept_name`) directly into the `fn_validate_payroll` return statement shows code reusability, helping in reducing time and reusing code

- **Edge Case Resilience:**
  - Testing the functions with null values and with employees that don't exist proved that the `NO_DATA_FOUND` exception blocks and handlers prevents unhandled database crashes.

---

## AI Assistance Disclosure

In accordance with the academic integrity policy for this assignment, an AI assistant was utilized as a thought partner during development:

- The AI helped clarify the  differences between `VARCHAR` and `VARCHAR2`.
- The assistant was used to debug data type mismatches, specifically identifying that `v_hire_date` needed to be declared as a `DATE` rather than a `NUMBER`which was an error on part ofcourse .
- The AI provided explanations of background PL/SQL execution flows (such as how cursor `FOR` loops, and custom exceptions and handlers works,dynamic data type ).

