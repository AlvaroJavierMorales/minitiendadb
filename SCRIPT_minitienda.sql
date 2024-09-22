-- -----------------------------------------------------------
-- CATEGORIAS -----------------------------------------------------------
-- -----------------------------------------------------------
-- Isertar *****************************************************
DELIMITER //
create  procedure procInsertCategorias(In v_description varchar(45))
begin
insert into tbl_categorias(cat_descripcion) values(v_description);
end//
DELIMITER  ; 
-- Actualizar *****************************************************
DELIMITER //
create procedure procUpdateCategorias(IN v_id INT, IN v_description varchar(45))
begin
update tbl_categorias
set cat_descripcion = v_description
where cat_id = v_id;
end//
DELIMITER  ; 
-- Mostrar  *****************************************************
DELIMITER //
create procedure procSelectCategorias()
begin
select cat_id, cat_descripcion from tbl_categorias; 
end//
DELIMITER  ; 
-- Eliminar *****************************************************
DELIMITER //
create procedure procDeleteCategorias(IN v_id INT)
begin 
delete from tbl_categorias where cat_id = v_id;
end//
DELIMITER  ; 
-- -----------------------------------------------------------
-- PROVEEDORES -----------------------------------------------------------
-- -----------------------------------------------------------
-- Insertar *****************************************************
DELIMITER //
create procedure procInsertProveedores (In v_nit varchar (45), v_nombre varchar (45))
begin 
insert into tbl_proveedores(prov_nit, prov_nombre) values(v_nit, v_nombre);
end//
DELIMITER ;
-- MOSTRAR *****************************************************
DELIMITER //
create procedure procSelectProveedores()
begin
select prov_id, prov_nit, prov_nombre from tbl_proveedores;
end//
DELIMITER ;
-- ACTUALIZAR *****************************************************
DELIMITER //
 create procedure procUpdateProveedores(IN v_id INT, IN v_nit varchar(45), IN v_nombre varchar(45))
 begin
 update tbl_proveedores 
 set prov_nit = v_nit,
 prov_nombre = v_nombre
 where prov_id = v_id;
 end// 
DELIMITER ;
-- ELIMINAR *****************************************************
DELIMITER //
create procedure procDeleteProveedores(IN v_id INT)
begin
delete from tbl_proveedores where prov_id = v_id;
end// 
DELIMITER ;
-- -----------------------------------------------------------
-- PRODUCTOS -----------------------------------------------------------
-- -----------------------------------------------------------
-- INSERTAR *****************************************************
DELIMITER //
create procedure procInsertProductos(IN v_codigo varchar(45), IN v_descripcion varchar(100), 
IN v_cantidad INT, IN v_precio double,
IN v_prov_id INT,
IN v_cat_id INT)
begin
insert into tbl_productos(pro_codigo,pro_descripcion,pro_cantidad,pro_precio, 
tbl_proveedores_prov_id,
tbl_categorias_cat_id)
values(v_codigo,v_descripcion,v_cantidad,v_precio,
v_prov_id,
v_cat_id); 
end//
DELIMITER ;
-- MOSTRAR *****************************************************
DELIMITER //
create procedure procSelectProductos()
begin
select pro_id, pro_codigo, pro_descripcion, pro_cantidad, pro_precio from tbl_productos
 join tbl_proveedores ON  tbl_productos.tbl_proveedores_prov_id = prov_id
 join tbl_categorias ON tbl_productos.tbl_categorias_cat_id = cat_id;
end//
DELIMITER ;
-- ACTUALIZAR *****************************************************
DELIMITER //
create procedure procUpdateProductos(
IN v_id INT,
IN v_codigo varchar(45), 
IN v_descripcion varchar(100),
IN v_cantidad INT,
IN v_precio double,
IN v_prov_id INT,
IN v_cat_id INT)
begin
update tbl_productos 
set pro_codigo = v_descripcion,
pro_descripcion = v_descripcion,
pro_cantidad = v_cantidad,
pro_precio = v_precio,
tbl_proveedores_prov_id = v_prov_id,
tbl_categorias_cat_id = v_cat_id
where pro_id = v_id;
end//
DELIMITER ;
-- ELIMINAR *****************************************************
DELIMITER //
create procedure procDeleteProductos(IN v_id INT)
begin
delete from tbl_productos where pro_id = v_id;
end// 
DELIMITER ;
-- -----------------------------------------------------------
-- USUARIOS -----------------------------------------------------------
-- -----------------------------------------------------------
-- INSERTAR *****************************************************
DELIMITER //
create procedure procInsertUsuario(
IN v_correo varchar(89),
IN v_contrasena text, 
IN v_salt text,
IN v_estado varchar(45))
BEGIN
insert into tbl_usuarios(usu_correo,
usu_contrasena,
usu_salt,
usu_estado) values (v_correo,v_contrasena,v_salt,v_estado);
END//
DELIMITER ;
-- MOSTRAR *****************************************************
DELIMITER //
create procedure procSelectUsuario()
begin
Select usu_id,usu_correo,usu_contrasena,usu_salt,usu_salt,usu_estado
from tbl_usuarios;
end//
DELIMITER ;
-- ACTUALIZAR *****************************************************
DELIMITER //
create procedure procUpdateUsuarios(IN v_id INT, IN v_correo varchar(89),
IN v_contrasena text, 
IN v_salt text,
IN v_estado varchar(45))
BEGIN 
update tbl_usuarios 
set usu_id = v_id,
usu_correo = v_correo,
usu_contrasena = v_contrasena,
usu_salt = v_salt,
usu_estado = v_estado
where usu_id = v_id;
END//
DELIMITER ;
-- ELIMINAR *****************************************************
DELIMITER //
create procedure procDeleteUsuario (IN v_id INT)
BEGIN 
delete from tbl_usuarios where usu_id = v_id;
END//
DELIMITER ;
