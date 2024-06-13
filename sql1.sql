use ejercicio;
CREATE TABLE articulo(
codArticulo char(4),
denom varchar(48) not null,
precio numeric(6,2) not null,
unidades integer,
descuento numeric(3,0),
PRIMARY KEY(codArticulo)
);
CREATE TABLE compra(
idCliente char(3),
idArticulo char(4),
fecCompra date not null,
NumUnidades integer,
CHECK(numUnidades >0),
PRIMARY KEY(idCliente, idArticulo),
FOREIGN KEY(idCliente) REFERENCES cliente(codCliente)
ON DELETE cascade,
FOREIGN KEY(idArticulo) REFERENCES articulo(codArticulo)
ON DELETE cascade
);