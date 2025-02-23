-- TRANSACTION DEMO

use sample;
CREATE TABLE Accounts (
 account_id VARCHAR(10) PRIMARY KEY,
 account_name VARCHAR(100),
 balance DECIMAL(10, 2)
);

select * from Accounts;

-- Insert into accounts
INSERT INTO Accounts (account_id, account_name, balance) 
VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);


select * from accounts;

-- begin and commit
begin;
update accounts set balance = balance+100 where account_id = 'A001';
update accounts set balance = balance-100 where account_id = 'A002';
commit;


-- Rollback
begin;
update accounts set balance = balance+100 where account_id = 'A001';
update accounts set balance = balance-100 where account_id = 'A002';
rollback;

select * from accounts;

begin;
update accounts set balance = balance+100 where account_id = 'A001';
savepoint sp1;
update accounts set balance = balance-100 where account_id = 'A002';

rollback to sp1;

select * from accounts;

-- delimitter
Delimiter // 	-- change the termination sysmbol
create procedure getAllAccounts() 	-- create the procedure
begin
	select * from Accounts;
end //	-- last line of procedure which ends with //
Delimiter ;	-- changes the termination symbol to ;

call getAllAccounts();
