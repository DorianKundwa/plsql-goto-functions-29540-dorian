CREATE OR REPLACE FUNCTION fn_dept_name (
    p_department_id IN NUMBER
) RETURN VARCHAR2
IS
    v_department_name VARCHAR2(50);
BEGIN
    IF p_department_id IS NULL THEN
        RETURN 'No Department Assigned';
    END IF;

    SELECT department_name
    INTO   v_department_name
    FROM   departments
    WHERE  department_id = p_department_id;

    RETURN v_department_name;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Unknown Department';
END fn_dept_name;

