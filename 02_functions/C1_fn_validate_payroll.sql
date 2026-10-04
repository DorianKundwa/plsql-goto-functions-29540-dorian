CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN NUMBER
) RETURN VARCHAR2
IS
    v_salary    NUMBER;
    v_dept_id   NUMBER;
    v_dept_name VARCHAR2(50);

    e_invalid_salary EXCEPTION;
    e_no_department  EXCEPTION;
BEGIN
    SELECT salary, department_id
    INTO   v_salary, v_dept_id
    FROM   employees
    WHERE  employee_id = p_employee_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RAISE e_invalid_salary;
    END IF;

    IF v_dept_id IS NULL THEN
        RAISE e_no_department;
    END IF;

    v_dept_name := fn_dept_name(v_dept_id);

    RETURN 'VALID : ' || v_dept_name || ' employee, annual salary ' ||
           fn_annual_salary(p_employee_id);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID - employee_id ' || p_employee_id || ' does not exist';
    WHEN e_invalid_salary THEN
        RETURN 'INVALID - salary is missing or not positive';
    WHEN e_no_department THEN
        RETURN 'INVALID - no department assigned';
    WHEN OTHERS THEN
        RETURN 'INVALID - unexpected error: ' || SQLERRM;
END fn_validate_payroll;

