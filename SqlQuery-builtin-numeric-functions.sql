/*SQL Server has many built-in functions.

This reference contains string, numeric, date, 
conversion, and some advanced functions in SQL Server.*/

/* ********************************************************* */

/*SQL inbuilt Numeric Functions */

SELECT Abs(-243.5) AS AbsNum; 
SELECT ACOS(0.25); /*Return the arc cosine of a number*/
SELECT ACOS(-0.8);
/*The ACOS() function returns the arc cosine of a number.

The specified number must be between -1 to 1, otherwise this function returns NULL. */
SELECT ASIN(0.25); 
SELECT ATAN(2.5); /*The ATAN() function returns the arc tangent of a number.*/
SELECT ATN2(0.50, 1); 
SELECT ATN2(-0.8, 2); 
SELECT AVG(Price) AS AveragePrice FROM Products; 
SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products); 
SELECT CEILING(25.75) AS CeilValue; /*Return the smallest integer value that is greater than or equal to a number:*/
SELECT CEILING(-13.5) AS CeilValue; 
SELECT COUNT(ProductID) AS NumberOfProducts FROM Products; 
SELECT COS(2);
SELECT COS(PI()); /*Return the cosine of a number:*/
SELECT COT(6); /*Return the cotangent of a number*/
SELECT COT(-2); 
SELECT DEGREES(1.5); /*Convert a radian value into degrees:*/
SELECT DEGREES(PI()*2); 
SELECT EXP(1); /*Return e raised to the power of 1*/
SELECT EXP(2); 
SELECT FLOOR(25.75) AS FloorValue; /*Return the largest integer value that is equal to or less than 25.75*/
SELECT FLOOR(-13.5) AS FloorValue;
SELECT FLOOR(25) AS FloorValue; 
SELECT LOG(2); /*Return the natural logarithm of 2*/
SELECT LOG(2, 4); /*Return the natural logarithm of 2 to a specified base (4)*/
SELECT LOG10(2); /*Return the base-10 logarithm of 2*/
SELECT LOG10(4.5); 
SELECT MAX(Price) AS LargestPrice FROM Products; 
SELECT MIN(Price) AS SmallestPrice FROM Products; 
SELECT PI(); 
SELECT POWER(4, 2); /*Return 4 raised to the second power*/
SELECT RADIANS(180);/*Convert a degree value into radians*/
SELECT RADIANS(-45);
SELECT RAND(); /*Return a random decimal number (no seed value - so it returns a completely random number >= 0 and <1)*/
SELECT RAND(6); /*Return a random decimal number (with seed value of 6)*/
SELECT RAND()*(10-5)+5; /*Return a random decimal number >= 5 and <10*/
SELECT FLOOR(RAND()*(10-5+1)+5); /*Return a random number >= 5 and <=10*/
SELECT ROUND(235.415, 2) AS RoundValue; /*Round the number to 2 decimal places*/
SELECT ROUND(235.415, 2, 1) AS RoundValue; /*Round the number to 2 decimal places, and also use the operation parameter*/
SELECT ROUND(235.415, -1) AS RoundValue; /*Round the number to -1 decimal place*/
SELECT SIGN(255.5); /*Return the sign of a number*/
/*The SIGN() function returns the sign of a number.

This function will return one of the following:

    If number > 0, it returns 1
    If number = 0, it returns 0
    If number < 0, it returns -1  */
SELECT SIN(2); /*Return the sine of a number*/
SELECT SIN(-1); 
SELECT SQRT(64); 
SELECT SQUARE(64);
SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails; 
SELECT TAN(1.75); /*Return the tangent of a number*/
SELECT TAN(-3); 




