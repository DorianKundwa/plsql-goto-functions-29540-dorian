# PL/SQL GOTO Statements and Functions — Individual Assignment III

**Name:** Turashimye Dorian Kundwa
**Student ID:** 29540
**Group:** B

## Overview

This repository is for Individual Assignment III for INSY 8311 —
PL/SQL `GOTO` statements, stored functions, exception handling, and
calling functions from SQL — against a small employees/departments
schema.

## Environment

- DBMS: Oracle Database XE 21c
- Tool: Oracle SQL Developer

## How to run

Run the scripts in this exact order:

1. `00_setup/create_tables.sql` — creates `departments` and `employees`,
   loads sample data (including two edge-case rows used later for
   exception testing).
2. `02_functions/B1_fn_annual_salary.sql` through
   `02_functions/C1_fn_validate_payroll.sql` — compiles all five
   functions.
3. `01_goto/A1_number_classifier.sql` through
   `01_goto/A4_rewrite_no_goto.sql` — runs the GOTO exercises.
4. `03_tests/B5_functions_in_select.sql`, `test_functions.sql`,
   `test_validate_payroll.sql` — exercises and verifies the functions.
5. Compare each run's output against the matching screenshot in
   `screenshots/`.

## Task summary

| Task | File | What it does |
|---|---|---|
| A1 | `01_goto/A1_number_classifier.sql` | tell user if  a number as Negative/Zero/Positive using GOTO |
| A2 | `01_goto/A2_salary_review.sql` | mention an employees under a salary threshold for review; uses GOTO to skip the rest |
| A3 | `01_goto/A3_illegal_goto.sql` | Shows an illegal GOTO (jumping into a loop)in comments , then its fix |
| A4 | `01_goto/A4_rewrite_no_goto.sql` | Same logic as A2, but using IF/ELSE instead of GOTO |
| B1 | `02_functions/B1_fn_annual_salary.sql` | Function: monthly salary → annual salary |
| B2 | `02_functions/B2_fn_years_of_service.sql` | Function: hire date → completed years of service |
| B3 | `02_functions/B3_fn_calculate_tax.sql` | Function: salary →  tax owed (5% rate) |
| B4 | `02_functions/B4_fn_dept_name.sql` | Function: department_id → department name |
| B5 | `03_tests/B5_functions_in_select.sql` | Calls all of the above inside one SELECT |
| C1 | `02_functions/C1_fn_validate_payroll.sql` | Combines B1/B4 with exceptions to validate a payroll record |
| C2 | `docs/REFLECTION.md` | reflection |

## Notes

ai assistant was used to help understand some concepts and correct some errors
