-- DROP SCHEMA Invoicing_FP_dest;

CREATE SCHEMA Invoicing_FP_dest;
-- tinitiate.Invoicing_FP_dest.customer_dim definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP_dest.customer_dim;

CREATE TABLE tinitiate.Invoicing_FP_dest.customer_dim (
	customer_ID int NOT NULL,
	customer_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	membership_details varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- tinitiate.Invoicing_FP_dest.error_table definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP_dest.error_table;

CREATE TABLE tinitiate.Invoicing_FP_dest.error_table (
	username nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Task_name nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Source_name nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Package_name nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	creation_date datetime NULL,
	Errorcode int NULL,
	Error_descripption nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- tinitiate.Invoicing_FP_dest.invoice_fact definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP_dest.invoice_fact;

CREATE TABLE tinitiate.Invoicing_FP_dest.invoice_fact (
	invoice_id int NOT NULL,
	store_id int NOT NULL,
	customer_ID int NOT NULL,
	time_id int NOT NULL,
	product_id int NOT NULL,
	invoice_total decimal(12,2) NULL,
	discount decimal(12,2) NULL,
	invoice_price decimal(12,2) NULL,
	quantity decimal(12,2) NULL,
	invoice_item_price decimal(12,2) NULL
);


-- tinitiate.Invoicing_FP_dest.product_dim definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP_dest.product_dim;

CREATE TABLE tinitiate.Invoicing_FP_dest.product_dim (
	product_id int NOT NULL,
	product_category varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_unit_price decimal(12,2) NULL,
	price_effective_from datetime NULL,
	price_effective_to datetime NULL
);


-- tinitiate.Invoicing_FP_dest.time_dim definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP_dest.time_dim;

CREATE TABLE tinitiate.Invoicing_FP_dest.time_dim (
	time_id int IDENTITY(1,1) NOT NULL,
	invoice_date date NULL,
	invoice_month int NULL,
	invoice_quarter int NULL,
	invoice_year int NULL
);
