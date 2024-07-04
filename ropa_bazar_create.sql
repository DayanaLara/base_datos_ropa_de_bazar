-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-07-04 14:22:47.814

-- tables
-- Table: category
CREATE TABLE category (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    description varchar(50)  NOT NULL,
    product_id int  NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (id)
);

-- Table: client
CREATE TABLE client (
    id int  NOT NULL,
    names varchar(50)  NULL,
    last_name varchar(50)  NULL,
    address text  NULL,
    page_web date  NULL,
    identity_document varchar(8)  NULL,
    suppliers_id int  NOT NULL,
    CONSTRAINT client_pk PRIMARY KEY (id)
);

-- Table: product
CREATE TABLE product (
    id int  NOT NULL,
    name varchar(50)  NULL,
    price int  NULL,
    stocks int  NULL,
    client_id int  NOT NULL,
    CONSTRAINT product_pk PRIMARY KEY (id)
);

-- Table: sales
CREATE TABLE sales (
    id int  NOT NULL,
    date date  NOT NULL,
    client varchar(50)  NOT NULL,
    product_details varchar(50)  NOT NULL,
    final_amount int  NOT NULL,
    product_id int  NOT NULL,
    CONSTRAINT sales_pk PRIMARY KEY (id)
);

-- Table: suppliers
CREATE TABLE suppliers (
    id int  NOT NULL,
    name varchar(50)  NULL,
    last_name varchar(50)  NULL,
    address text  NULL,
    web_page text  NULL,
    ruc int  NULL,
    CONSTRAINT suppliers_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: category_product (table: category)
ALTER TABLE category ADD CONSTRAINT category_product FOREIGN KEY category_product (product_id)
    REFERENCES product (id);

-- Reference: client_suppliers (table: client)
ALTER TABLE client ADD CONSTRAINT client_suppliers FOREIGN KEY client_suppliers (suppliers_id)
    REFERENCES suppliers (id);

-- Reference: product_client (table: product)
ALTER TABLE product ADD CONSTRAINT product_client FOREIGN KEY product_client (client_id)
    REFERENCES client (id);

-- Reference: sales_product (table: sales)
ALTER TABLE sales ADD CONSTRAINT sales_product FOREIGN KEY sales_product (product_id)
    REFERENCES product (id);

-- End of file.

