-- The case of ITC for investing the data base and creating the table -

create table distributors (
  distributor_id integer primary key,
  name   text not NULL,
  city   text,
  region  text, 
  phone   text
  );
  
  -- Dropping the table -----
  Drop table distributors;
  
  -- Create another table name Products --
  
  -- create a table name products with follwing information - product id, product name, product category, product price, and product stock 
  product id should be in integer and UNIQUE
  product name should be in non null and UNIQUE,
  product category should be in text and not NULL
  product price should be in real value and price shuld be greater than 0
  and stock should be in integer if it is is blank then 0
  brand name - text and not null 
  
  
  
  create table products (
    product_id integer primary key,
    proiduct_name text not null unique,
    brand text,
    category text not null,
    price real check (price > 0),
    stock integer default 0
    );
  
  
  --create a table name sales containing variables - sales id, product id, distributor id, sales date, 
  --quantity amount 
  
  create TABLE sales (
  sales_id integer primary key,
  product_id integer,
  distributor_id integer,
  sales_date text,
  quantity integer check (Quantity>0),
  amount real,
  Foreign key (product_id) REFERENCES products(product_id),
  FOREIGN KEY(distributor_id) REFERENCES distributors(distributor_id)
  );
 
  