drop database  if exists demo;
create database demo;
use demo;
create table products (
id int auto_increment primary key, 
product_code varchar(45), 
product_name varchar(45), 
product_price double, 
product_amount int, 
product_descriptions varchar(45), 
product_status varchar(45));
insert into products (product_code, product_name , product_price , product_amount , product_descriptions , product_status ) values ("XM102","xiaomi", 10, 3, "Tốt" , "Chiếm Lấy Em");
insert into products (product_code, product_name , product_price , product_amount , product_descriptions , product_status ) values ("SS102","samsung", 25, 2, "Tồi Tệ" , "Cho Không Thèm");
insert into products (product_code, product_name , product_price , product_amount , product_descriptions , product_status ) values ("N1280","nokia", 15, 5, "Tạm ổn" , "Đổi Chủ Đổi Đời");
select * from products;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create unique index product_index on products (product_code);


-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create index product_index_composite on products (product_name, product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain select * from products;

-- So sánh câu truy vấn trước và sau khi tạo index

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view view_products as select p.product_code, p.product_name, p.product_price, p.product_status from products p;
select * from view_products;
-- Tiến hành sửa đổi view

update view_products set product_price = 12 where product_name = "nokia";
select * from view_products;

-- Tiến hành xoá view

drop view view_products;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure sp_get_all_info_products()
begin
select * from products;
end //
delimiter ;
call sp_get_all_info_products();
-- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure add_new_product()
begin
insert into products (product_code, product_name , product_price , product_amount , product_descriptions , product_status) values ("HTC300", "HTC", 8, 4, "Người Yêu Cũ", "Không Yêu Không Đau");
end //
delimiter ;
call add_new_product();
select * from products;

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure update_product()
begin
update products set product_price = 17 where id = 3;
end //
delimiter ;
call update_product();
select * from products;

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure delete_product()
begin
delete from products where id =4;
end //
delimiter ;
call delete_product();
select * from products;







