# Crowdfunding ETL (Extract-Transform-Load)

## Overview of the Project
The purpose of this project was to perform the process of collect, clean, and store data, better known as Extract, Transform and Load. 
The objective was to divide a large dataset into five separate data frames, to latter on be cleaned and separated into 4 different datasets: *category*, *subcategory*, *campaign*, *contacts*, and *backers*. Finally, the goal was to have Each dataset loaded into PostgreSQL. 


## Results
The method used to transform the data was *list comprehensions*, as well as the *string_split* function.

<img width="715" alt="1" src="https://user-images.githubusercontent.com/111388644/198721132-3415d007-877d-4ecd-8e84-322163a70cfc.png">

After the cleaning process an Entity Relationship Diagram was created. The ERD shows the different tables and their relationships to each other including the data types as well as the primary and foreign keys. With the help of the ERD five different tables were created in PostgreSQL. The tables were named: *campaign*, *contacts*, *backers*, *category*, and *subcategory*. Then, the tables were successfully exported into *comma separated values* (csv) files. 

<img width="484" alt="2" src="https://user-images.githubusercontent.com/111388644/198721197-4996cddc-6d14-41e4-8c96-8a356ebf7987.png">

This is an example of the table named *backers*

<img width="555" alt="3" src="https://user-images.githubusercontent.com/111388644/198721242-aa5540d7-acf7-4be8-a082-37f522bd8110.png">

Finally, an analysis using SQL queries was performed. In this analysis it is shown the number of *backer counts* in descending order for each *cf_id* for the *live* campaigns. 

<img width="265" alt="4" src="https://user-images.githubusercontent.com/111388644/198721286-a1211e24-3818-4ec2-a037-b327c5b21715.png">

Also, two additional tables were created:
The first table shows the amount left to reach the goal for all the *live* projects, including the first name, last name, and email address of each contact.  

<img width="486" alt="5" src="https://user-images.githubusercontent.com/111388644/198721321-c961669a-9587-4fe0-977b-4fc0a31e930f.png">

The second table displays the remaining goal amount of the *live* campaigns, but this time using the backers table data, instead of the contacts table data. This table included the email address of each backer, their first name, last name, the cf_if, the company name the description, and the date each campaign ended. 

<img width="787" alt="6" src="https://user-images.githubusercontent.com/111388644/198721378-d41d5dd7-26d0-42df-9c0e-6c2d7649ad3b.png">
