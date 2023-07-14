-- DROP SCHEMA Invoicing_FP;

CREATE SCHEMA Invoicing_FP;
-- tinitiate.Invoicing_FP.Customer_data_files_deatils definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.Customer_data_files_deatils;

CREATE TABLE tinitiate.Invoicing_FP.Customer_data_files_deatils (
	id int IDENTITY(1,1) NOT NULL,
	file_path varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	uplaoded_date date NULL,
	record_count int NULL
);


-- tinitiate.Invoicing_FP.Products_data_files_deatils definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.Products_data_files_deatils;

CREATE TABLE tinitiate.Invoicing_FP.Products_data_files_deatils (
	id int IDENTITY(1,1) NOT NULL,
	file_path varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	uplaoded_date date NULL,
	record_count int NULL
);


-- tinitiate.Invoicing_FP.customers definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.customers;

CREATE TABLE tinitiate.Invoicing_FP.customers (
	customer_ID int IDENTITY(1,1) NOT NULL,
	customer_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	membership_details varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT pk_customer_id PRIMARY KEY (customer_ID)
);


-- tinitiate.Invoicing_FP.invoice_data_files_deatils definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.invoice_data_files_deatils;

CREATE TABLE tinitiate.Invoicing_FP.invoice_data_files_deatils (
	id int IDENTITY(1,1) NOT NULL,
	file_path varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	uplaoded_date date NULL,
	record_count int NULL
);


-- tinitiate.Invoicing_FP.invoice_items_data_files_deatils definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.invoice_items_data_files_deatils;

CREATE TABLE tinitiate.Invoicing_FP.invoice_items_data_files_deatils (
	id int IDENTITY(1,1) NOT NULL,
	file_path varchar(120) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	uplaoded_date date NULL,
	record_count int NULL
);


-- tinitiate.Invoicing_FP.products definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.products;

CREATE TABLE tinitiate.Invoicing_FP.products (
	product_id int NOT NULL,
	product_category varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_unit_price decimal(12,3) NULL
);


-- tinitiate.Invoicing_FP.invoice definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.invoice;

CREATE TABLE tinitiate.Invoicing_FP.invoice (
	invoice_id int IDENTITY(1,1) NOT NULL,
	store_id int NOT NULL,
	customer_ID int NOT NULL,
	invoice_date date NULL,
	invoice_total decimal(12,2) NULL,
	discount decimal(12,2) NULL,
	invoice_price decimal(12,2) NULL,
	CONSTRAINT pk_invoice_id PRIMARY KEY (invoice_id),
	CONSTRAINT fk_customer_id FOREIGN KEY (customer_ID) REFERENCES tinitiate.Invoicing_FP.customers(customer_ID)
);


-- tinitiate.Invoicing_FP.invoice_items definition

-- Drop table

-- DROP TABLE tinitiate.Invoicing_FP.invoice_items;

CREATE TABLE tinitiate.Invoicing_FP.invoice_items (
	invoice_item_id int IDENTITY(1,1) NOT NULL,
	invoice_id int NOT NULL,
	product_id int NOT NULL,
	quantity decimal(12,2) NULL,
	invoice_item_price decimal(12,2) NULL,
	CONSTRAINT pk_invoice_item_id PRIMARY KEY (invoice_item_id),
	CONSTRAINT fk_invoice_id FOREIGN KEY (invoice_id) REFERENCES tinitiate.Invoicing_FP.invoice(invoice_id)
);
