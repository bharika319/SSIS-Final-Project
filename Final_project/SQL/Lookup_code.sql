select * from Invoicing_FP.customers c ;
select * from Invoicing_FP.products p  ;
select * from Invoicing_FP.invoice i  ;
select * from Invoicing_FP.invoice_items ii;  
select * from Invoicing_FP.Customer_data_files_deatils cdfd;  
select * from Invoicing_FP.Products_data_files_deatils pdfd ;
select * from Invoicing_FP.invoice_data_files_deatils idfd  ;
select * from Invoicing_FP.invoice_items_data_files_deatils iidfd;  
select * from Invoicing_FP_dest.customer_dim cd ;
select * from Invoicing_FP_dest.product_dim pd ;
select * from Invoicing_FP_dest.time_dim td ;
select * from Invoicing_FP_dest.invoice_fact if2; 
select * from Invoicing_FP_dest.error_table et ;


select count(*) from Invoicing_FP.customers c ;
select count(*) from Invoicing_FP.products p  ;
select count(*) from Invoicing_FP.invoice i  ;
select count(*) from Invoicing_FP.invoice_items ii;  
select count(*) from Invoicing_FP.Customer_data_files_deatils cdfd;  
select count(*) from Invoicing_FP.Products_data_files_deatils pdfd ;
select count(*) from Invoicing_FP.invoice_data_files_deatils idfd  ;
select count(*) from Invoicing_FP.invoice_items_data_files_deatils iidfd;  
select count(*) from Invoicing_FP_dest.customer_dim cd ;
select count(*) from Invoicing_FP_dest.product_dim pd ;
select count(*) from Invoicing_FP_dest.time_dim td ;
select count(*) from Invoicing_FP_dest.invoice_fact if2; 
select count(*) from Invoicing_FP_dest.error_table et ;