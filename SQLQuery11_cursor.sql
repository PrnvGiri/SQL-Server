create database lpu
use lpu
CREATE TABLE customer (      
  id int PRIMARY KEY,      
  c_name nvarchar(45) NOT NULL,      
  email nvarchar(45) NOT NULL,      
  city nvarchar(25) NOT NULL      
); 
INSERT INTO customer (id, c_name, email, city)       
VALUES (1,'Steffen', 'stephen@javatpoint.com', 'Texas'),       
(2, 'Joseph', 'Joseph@javatpoint.com', 'Alaska'),       
(3, 'Peter', 'Peter@javatpoint.com', 'California'),    
(4,'Donald', 'donald@javatpoint.com', 'New York'),       
(5, 'Kevin', 'kevin@javatpoint.com', 'Florida'),  
(6, 'Marielia', 'Marielia@javatpoint.com', 'Arizona'),    
(7,'Antonio', 'Antonio@javatpoint.com', 'New York'),       
(8, 'Diego', 'Diego@javatpoint.com', 'California');
    SELECT * FROM customer;

--Example of simple cursor
DECLARE smcursor2 CURSOR  
    FOR SELECT *FROM customer  
OPEN smcursor2  
FETCH NEXT FROM smcursor2;
---------------To deallocate any cursor--------------------------
DEALLOCATE smcursor2 




--Declare the variables for holding data.  
DECLARE @id INT, @c_name NVARCHAR(50), @city NVARCHAR(50)  
   
--Declare and set counter.  
DECLARE @Counter INT  
SET @Counter = 1  
   
--Declare a cursor  
DECLARE PrintCustomers CURSOR  
FOR  
SELECT id, c_name, city FROM customer  
  
--Open cursor  
OPEN PrintCustomers  
   
--Fetch the record into the variables.  
FETCH NEXT FROM PrintCustomers INTO  
@id, @c_name, @city  
  
--LOOP UNTIL RECORDS ARE AVAILABLE.  
WHILE @@FETCH_STATUS = 0  
    BEGIN  
        IF @Counter = 1  
        BEGIN  
            PRINT 'id' + CHAR(9) + 'c_name' + CHAR(9) + CHAR(9) + 'city'  
            PRINT '--------------------------'  
        END  
   
        --Print the current record  
        PRINT CAST(@id AS NVARCHAR(10)) + CHAR(9) + @c_name + CHAR(9) + CHAR(9) + @city  
      
        --Increment the counter variable  
        SET @Counter = @Counter + 1  
   
        --Fetch the next record into the variables.  
        FETCH NEXT FROM PrintCustomers INTO  
        @id, @c_name, @city  
    END  
   
--Close the cursor  
CLOSE PrintCustomers  
  
--Deallocate the cursor  
DEALLOCATE PrintCustomers    
  