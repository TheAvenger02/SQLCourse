USE classicmodels;

SELECT * FROM employees;

SELECT employeeNumber,lastName FROM employees;

SELECT employeeNumber AS 'Numero de empleado' FROM employees;

SELECT productName AS 'Producto', buyPrice AS 'Precio', buyPrice*1.16 AS 'Precio de venta' FROM products;

SELECT concat(lastName," ",firstName) FROM employees;

SELECT * FROM employees WHERE employeeNumber > 1200;

SELECT * FROM employees WHERE employeeNumber = 1611;

SELECT * FROM employees WHERE jobTitle = "Sales Rep";
SELECT * FROM employees WHERE officeCode = "1";
SELECT * FROM employees WHERE reportsTo = "1088";
SELECT * FROM employees WHERE officeCode != "1";

/* Obtiene a los empleados con número mayor a 1000 y menor igual a 2000*/
SELECT employeeNumber, lastName, firstName FROM employees WHERE employeeNumber >= 1000 AND employeeNumber <= 2000;

SELECT * FROM employees WHERE jobTitle = "Sales Rep" AND reportsTo = "1143";

SELECT * FROM employees WHERE reportsTo = 1002 AND firstName != "jeff";

/* Selecciona todos los empleados que esté en 2 y 3 In -> Permite obtener registros cuyos valores estén en una lista de valores: */
SELECT officeCode, employeeNumber, lastName, firstName FROM employees WHERE employees.officeCode in (2,3);

/* Selecciona nombre que empiece por S -> Like, permite obtener registros cuyo valor en un campo cumpla una condición textual */
SELECT officeCode, employeeNumber, lastName, firstName FROM employees WHERE firstName LIKE 'S%';

SELECT officeCode, employeeNumber, lastName, firstName FROM employees WHERE reportsTo is NULL;

/* Ordena los empleados por apellidos */
SELECT * FROM employees ORDER BY lastName;

/* Selecciona todos los empleados que su trabajo sea el de: Sales Rep y ordenarlos por número de empleado */
SELECT * FROM employees WHERE jobTitle = "Sales Rep" ORDER BY employeeNumber;

/* Ordena los empleados por apellido de manera descendente */
SELECT * FROM employees ORDER BY lastName DESC;

/* Ordena los empleados por número de columna */
SELECT officeCode, employeeNumber, lastName, firstName FROM employees ORDER BY 1 DESC;

/* Selecciona el código del valor máximo de una oficina*/
SELECT MAX(officeCode) FROM employees;

/* Cuenta los registros de una tabla */
SELECT COUNT(*) FROM employees;

/* Cuenta los valores distintos de una tabla */
SELECT COUNT(DISTINCT officeCode) FROM employees;

SELECT officeCode, COUNT(employeeNumber) FROM employees GROUP BY officeCode;
