-- categorias 
-- Isertar 
DELIMITER //
create  procedure procInsertCategorias(In v_description varchar(45))
begin
insert into tbl_categorias(cat_descripcion) values(v_description);
end//
DELIMITER  ; 

-- Actualizar 
DELIMITER //

DELIMITER  ; 

-- Mostrar  
DELIMITER //

DELIMITER  ; 
-- Eliminar 
DELIMITER //

DELIMITER  ; 
-- -----------------------------------------------------------
-- proveedores


-- productos


-- Usuarios