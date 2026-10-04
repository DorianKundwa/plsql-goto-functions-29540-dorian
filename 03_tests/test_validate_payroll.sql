SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee 1  (valid):     ' || fn_validate_payroll(1));
    DBMS_OUTPUT.PUT_LINE('Employee 999 (missing):  ' || fn_validate_payroll(999));
    DBMS_OUTPUT.PUT_LINE('Employee 9  (no salary): ' || fn_validate_payroll(9));
    DBMS_OUTPUT.PUT_LINE('Employee 10 (no dept):   ' || fn_validate_payroll(10));
END;

