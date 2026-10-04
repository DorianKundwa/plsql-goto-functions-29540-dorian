CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER,
    p_rate   IN NUMBER DEFAULT 0.05   
) RETURN NUMBER
IS
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RETURN NULL;
    END IF;

    RETURN ROUND(p_salary * p_rate, 2);
END fn_calculate_tax;

