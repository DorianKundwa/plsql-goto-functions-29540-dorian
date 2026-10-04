SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(' fn_annual_salary test');
    DBMS_OUTPUT.PUT_LINE('Employee 1 (normal): ' || fn_annual_salary(1));
    DBMS_OUTPUT.PUT_LINE('Employee 9 (NULL salary): ' || fn_annual_salary(9));
    DBMS_OUTPUT.PUT_LINE('Employee 999 (does not exist): ' || fn_annual_salary(999));

    DBMS_OUTPUT.PUT_LINE('fn_years_of_service test');
    DBMS_OUTPUT.PUT_LINE('Employee 1: ' || fn_years_of_service(1) || ' years');
    DBMS_OUTPUT.PUT_LINE('Employee 999 (does not exist): ' || fn_years_of_service(999));

    DBMS_OUTPUT.PUT_LINE(' fn_calculate_tax  5% test ');
    DBMS_OUTPUT.PUT_LINE('Tax on salary 5000: ' || fn_calculate_tax(5000));
    DBMS_OUTPUT.PUT_LINE('Tax on salary 0: ' || fn_calculate_tax(0));
    DBMS_OUTPUT.PUT_LINE('Tax on NULL salary: ' || fn_calculate_tax(NULL));
    DBMS_OUTPUT.PUT_LINE('Tax on 5000 at  8% rate: ' || fn_calculate_tax(5000, 0.08));

    DBMS_OUTPUT.PUT_LINE('fn_dept_name testt');
    DBMS_OUTPUT.PUT_LINE('Department 1: ' || fn_dept_name(1));
    DBMS_OUTPUT.PUT_LINE('Department 999 (does not exist): ' || fn_dept_name(999));
    DBMS_OUTPUT.PUT_LINE('NULL department id: ' || fn_dept_name(NULL));
END;
