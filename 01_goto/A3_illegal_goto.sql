SET SERVEROUTPUT ON;


/*
BEGIN
    GOTO inside_loop;          

    FOR i IN 1..3 LOOP
        <<inside_loop>>       
        DBMS_OUTPUT.PUT_LINE('num ' || i);
    END LOOP;
END;
*/




BEGIN
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('num ' || i);
    END LOOP;

    GOTO after_loop;

    <<after_loop>>
    DBMS_OUTPUT.PUT_LINE('Loop finished ');
END;

