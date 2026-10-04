CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_employee_id IN NUMBER
) RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    SELECT salary
    INTO   v_salary
    FROM   employees
    WHERE  employee_id = p_employee_id;

    IF v_salary IS NULL THEN
        RETURN NULL; 
    END IF;

    RETURN v_salary * 12;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;  
END fn_annual_salary;
