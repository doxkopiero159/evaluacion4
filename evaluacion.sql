use dw_Evaluacion
create table dimAlmacen(
alamacenid int primary key,
almacenname varchar (50),
)
--------------
create table dimSumenistro(
suministroid int primary key,
suministronameP varchar(50),
suministroTelefono varchar(12)
)
--------------
create table dimTiempo(
fechaid int primary key,
fecha datetime,
año int,
mes int,
nombreMes varchar(20),
dia int,
diaSem int,
nombreDiaSemana  varchar(20)
)
-----------------------------------------------
create table Productos(
producto bigint primary key identity,
productid int,
suministroid int references dimSumenistro(suministroid),
alamacenid int references dimAlmacen(alamacenid),
fechaid int references dimTiempo(fechaid),
monto money
)




