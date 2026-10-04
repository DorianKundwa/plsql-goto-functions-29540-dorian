
SET SERVEROUTPUT ON;


DECLARE
    v_number NUMBER := -7; 
BEGIN
    IF v_number < 0 THEN
        GOTO negative_case;
    ELSIF v_number = 0 THEN
        GOTO zero_case;
    ELSE
        GOTO positive_case;
    END IF;

    <<negative_case>>
    DBMS_OUTPUT.PUT_LINE(v_number || ' is NEGATIVE');
    GOTO end_classify;

    <<zero_case>>
    DBMS_OUTPUT.PUT_LINE(v_number || ' is ZERO');
    GOTO end_classify;

    <<positive_case>>
    DBMS_OUTPUT.PUT_LINE(v_number || ' is POSITIVE');

    <<end_classify>>
    DBMS_OUTPUT.PUT_LINE('Classification ENDED For ' || v_number );
END;

