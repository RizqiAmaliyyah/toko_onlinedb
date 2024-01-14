-- Masuk kedalam database
use tokoonline_yatokodb;

-- Tabel customer
create table customer 
(
  id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(50) NOT NULL,
  city VARCHAR(100) NOT NULL,
  gender ENUM('Man', 'Woman') NOT NULL,
  age int,
  PRIMARY KEY (id)
);

--------------- Perbaikan struktur data mulai ---------------
-- Mengubah nama kolom id menjadi customer_id
alter table customer
RENAME COLUMN customer_i to customer_id;

-- Mengubah primary key (id) menjadi (customer_id)
ALTER TABLE customer
DROP PRIMARY KEY,
ADD PRIMARY KEY (customer_id);

--------------- Perbaikan struktur data selesai ---------------

-- Melihat isi tabel customers
desc customer;

-------------------------------------------------------------------------------------------

-- Tabel orders
CREATE Table product 
(
  product_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  product_price int NOT NULL,
  total_sold INT NOT NULL,
  store_name VARCHAR(150) not null,
  shipping_fee BOOLEAN not null,
  PRIMARY KEY(product_id)
);

desc product;

-------------------------------------------------------------------------------------------

-- Tabel store 
CREATE TABLE store (
  store_id INT NOT NULL AUTO_INCREMENT,
  store_name VARCHAR(50) NOT NULL DEFAULT '',
  store_location VARCHAR(100) NOT NULL DEFAULT '',
  store_rating DECIMAL(10,2) NOT NULL,
  chat_response VARCHAR(50),
  PRIMARY KEY (store_id)
);

desc store;

select * from store;

show tables;