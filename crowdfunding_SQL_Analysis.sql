-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 
SELECT COUNT (b.cf_id),
    b.cf_id,
    c.outcome
FROM backers as b
INNER JOIN campaign as c
ON (b.cf_id = c.cf_id)
WHERE (c.outcome = 'live')
GROUP BY b.cf_id, c.outcome
ORDER BY b.cf_id DESC;


-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.
SELECT COUNT (b.cf_id),
    b.cf_id
FROM backers as b
INNER JOIN campaign as c
ON (b.cf_id = c.cf_id)
WHERE (c.outcome = 'live')
GROUP BY b.cf_id, c.outcome
ORDER BY b.cf_id DESC;



-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 
SELECT c.first_name,
    c.last_name,
    c.email,
   	ca.goal - ca.pledged as "Remaining goal amount"
INTO email_contacts_remaining_goal_amount
FROM contacts as c
INNER JOIN campaign as ca
ON (c.contact_id = ca.contact_id)
WHERE (ca.outcome = 'live')
GROUP BY ca.outcome, c.first_name, c.last_name, c.email, ca.goal, ca.pledged
ORDER BY ca.goal - ca.pledged DESC;


-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 
-- CORRECTION: for the output shown in the bootcamp challenge page:
-- the ORDER BY function was supposed to be applied to the last_name in ascending order

SELECT b.email,
    b.first_name,
    b.last_name,
    b.cf_id,
    ca.company_name,
    ca.description,
    ca.end_date,
   	ca.goal - ca.pledged as "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers as b
INNER JOIN campaign as ca
ON (b.cf_id = ca.cf_id)
WHERE (ca.outcome = 'live')
GROUP BY b.email, b.first_name, b.last_name, b.cf_id, ca.company_name, ca.description, ca.end_date, ca.goal, ca.pledged, ca.outcome
ORDER BY b.last_name ASC;


-- Check the table

SELECT * FROM email_backers_remaining_goal_amount;
