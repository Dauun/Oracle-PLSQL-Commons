
-- definir un tipo record

TYPE EmpRecord
	IS RECORD (
		nombre empleado.nombre%TYPE,
		apellido empleado.apellido%TYPE,
		descuento NUMBER(6)
	);

vEmpleado EmpRecord;

-- obtener un registro

AND ROWNUM <= 1;

-- Sequences

DECLARE
	newEmpID empleado.EmpID%TYPE;
BEGIN

newEmpID := EmpIDSecuence.NEXTVAL;
INSERT INTO empleado(EmpID) VALUES (newEmpID);

END;

-- for loops

FOR I IN 1..1000 LOOP
	...
END LOOP;

-- while loop

SELECT COUNT(*) INTO EmpsRemaining FROM empleado;

WHILE EmpsRemaining >= 4 LOOP

	SELECT COUNT(*) INTO EmpsRemaining FROM empleado;

END LOOP;

-- Cursosres

SQL%FOUND

SQL%NOTFOUND

SQL%ROWCOUNT

SQL%ISOPEN

--Explicit Cursors

DECLARE
	CURSOR Employees IS
		SELECT * FROM employee;

EmpRecord employee%ROWTYPE;

BEGIN
	OPEN Employees;

	LOOP
		FETCH Employees INTO EmpRecord;
		EXIT WHEN Employees%NOTFOUND;

		dbms_output.put_line(EmpRecord.LName);
	END LOOP;
	CLOSE Employees;

END;
