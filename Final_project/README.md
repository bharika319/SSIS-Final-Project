FP_test is the SSIS package project that can be opened with visual studio.

SQL folder contains the schema DDLs that are needed for the project. Create the Invoicing_FP and Invoicing_FP_dest schemas suing the scripts provided. 
Create the stored procedure in the DB that is used to update invoice totals.

Final_project.dtsx consolidates all the packages and runs them in sequence necessary to a successful load. Update file paths and DB connection strings according to your local setup. Run the Final_project package to load all the data in the *_input_csv_files.

You can use additional test files to check the updates/inserts of followup data loads using files in Test_files folder. You will need to move them to respective *_input_csv_files to load them properly.
