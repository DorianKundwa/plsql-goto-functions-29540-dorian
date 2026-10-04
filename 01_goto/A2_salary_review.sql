SET SERVEROUTPUT ON;

DECLARE
    v_threshold CONSTANT NUMBER := 5000;
 
BEGIN
FOR emp_rec IN (
        SELECT employee_id, first_name, salary
        FROM   employees
        WHERE  salary IS NOT NULL
        ORDER BY employee_id
    ) LOOP
        IF emp_rec.salary >= v_threshold THEN
            DBMS_OUTPUT.PUT_LINE(emp_rec.first_name ||
                ' is already at or above the threshold -skipped.');
            GOTO next_employee;
        END IF;

        DBMS_OUTPUT.PUT_LINE(emp_rec.first_name ||
            ' FLAGGED for review.');

        <<next_employee>>
        NULL;
    END LOOP;
END;

