# e-commerce-db_task2
Data Insertion and Handling Nulls
#Task 2: E-commerce Database Data Manipulation (DML)

This repository contains an SQL script (`e_commerce_task2.sql`) dedicated to practicing Data Manipulation Language (DML) operations on the previously defined E-commerce database schema.

##  Objective

The primary objective of this task is to learn and practice:
* Inserting new rows into database tables using `INSERT INTO`.
* Handling missing values by explicitly using `NULL` or leveraging `DEFAULT` column values.
* Modifying existing data with `UPDATE` statements, utilizing precise `WHERE` conditions.
* Deleting specific rows from tables using `DELETE` statements, again with careful application of `WHERE` clauses to prevent unintended data loss.

##  Contents

* `e_commerce_task2.sql`: The main SQL script containing all the DML statements.

##  Key Demonstrations

This script provides practical examples of:

* **Diverse Insert Scenarios**: Adding new categories, customers (with varying levels of detail, including `NULL` for optional fields), products, orders, and order items.
* **Leveraging Defaults**: Demonstrating how `DEFAULT` values (e.g., `CURRENT_TIMESTAMP` for `order_date`, `'Pending'` for `order.status`) are automatically applied when a column is not specified in an `INSERT` statement.
* **Targeted Updates**: Modifying specific customer details, product attributes (price, stock), and order statuses using `WHERE` clauses.
* **Controlled Deletions**: Removing individual products or order items, and showcasing the impact of `ON DELETE CASCADE` (deleting an order cascades to its items) versus `ON DELETE RESTRICT` (attempting to delete a customer with orders will fail).

##  How to Use

1.  **Prerequisite**: Ensure you have successfully set up the E-commerce database schema from [https://github.com/sanjay-it-is/e-commerce-db] in your PostgreSQL environment.
2.  **Connect to your Database**: Open your preferred PostgreSQL client (e.g., `psql` command line, pgAdmin, DBeaver).
3.  **Execute the Script**: Run the `e_commerce_task2.sql` file against your `e_commerce_db` database.

    ```bash
    -- Example using psql:
    psql -U your_username -d e_commerce_db -f e_commerce_task2.sql
    ```
    Or, simply open the file in your client and execute all queries.

4.  **Verify Data**: After running the script, you can use `SELECT * FROM table_name;` queries to observe the changes, additions, and deletions in your database. 
##  Outcome

Upon successful execution, your `e_commerce_db` will be populated with sample data, demonstrating clean and consistent data management through standard SQL DML operations. You will gain hands-on experience in manipulating data while respecting defined schema constraints.

