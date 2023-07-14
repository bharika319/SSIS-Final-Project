delete from Invoicing_FP.customers;
DBCC CHECKIDENT('Invoicing_FP.customers', RESEED, 0);
truncate table Invoicing_FP.products ;
delete from Invoicing_FP.invoice; 
DBCC CHECKIDENT('Invoicing_FP.invoice', RESEED, 0);
truncate table Invoicing_FP.invoice_items; 
DBCC CHECKIDENT('Invoicing_FP.invoice_items', RESEED, 0);
truncate table Invoicing_FP.Customer_data_files_deatils; 
DBCC CHECKIDENT('Invoicing_FP.Customer_data_files_deatils', RESEED, 0);
truncate table Invoicing_FP.Products_data_files_deatils;
DBCC CHECKIDENT('Invoicing_FP.Products_data_files_deatils', RESEED, 0);
truncate table Invoicing_FP.invoice_data_files_deatils;
DBCC CHECKIDENT('Invoicing_FP.invoice_data_files_deatils', RESEED, 0);
truncate table Invoicing_FP.invoice_items_data_files_deatils;
DBCC CHECKIDENT('Invoicing_FP.invoice_items_data_files_deatils', RESEED, 0);
truncate table Invoicing_FP_dest.customer_dim;
truncate table Invoicing_FP_dest.product_dim;
truncate table Invoicing_FP_dest.time_dim;
truncate table Invoicing_FP_dest.invoice_fact; 
truncate table Invoicing_FP_dest.error_table;


