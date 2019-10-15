-- 1 How do you get all users from Chicago?
SELECT * FROM "accounts"
WHERE "city"='chicago';

-- 2 How do you get all users with usernames that contain the letter a?
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%'

-- 3 The bank is giving a new customer bonus! How do you update all records with an account balance of 0.00 and a transactions_attempted of 0? Give them a new account balance of 10.00.
UPDATE "accounts" Set "account_balance"='10.00'
WHERE "transactions_completed"='0' AND "transactions_attempted"='0'

-- 4 How do you select all users that have attempted 9 or more transactions?
SELECT "username" FROM "accounts"
WHERE "transactions_attempted">='9'

-- 5 How do you get the username and account balance of the 3 users with the highest balances, sorted highest to lowest balance? NOTE: Research LIMIT
SELECT "username","account_balance" FROM "accounts"
ORDER BY "account_balance" desc
LIMIT 3;

-- 6 How do you get the username and account balance of the 3 users with the lowest balances, sorted lowest to highest balance?


SELECT "username","account_balance" FROM "accounts"
ORDER BY "account_balance" asc
LIMIT 3;



-- 7 How do you get all users with account balances that are more than $100?
SELECT "username" FROM "accounts"
WHERE "account_balance">100;


-- 8 How do you add a new account?
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('name', 'cityname', 5, 10, 355.80),



-- 9 The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: 
--How do you delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM "accounts"
WHERE ("transactions_completed"< 5) AND ("city"='miami' OR "city"='phoenix')

-- 10 Stretch Goal Questions (word problems)
-- 11 Anthony moved to Santa Fe.

UPDATE "accounts" SET "city"='Santa Fe'
WHERE "username"='anthony';

-- 12 Grace closed her account.

DELETE FROM "accounts"
WHERE "username"='grace';


-- 13 Travis made a withdrawl of $20,000. What's their new balance? NOTE: Research RETURNING


-- 14 The Bank needs to track last names. NOTE: Research ALTER TABLE https://www.postgresql.org/docs/10/static/sql-altertable.html
