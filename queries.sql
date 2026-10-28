SELECT 
-- Selección de campos relevantes de las tablas involucradas
-- Le decimos a sqlite que nos devuelva el ID del pedido, el nombre del cliente, el nombre del plato, 
--la cantidad y las opciones solicitadas en formato JSON
    p.id,
    --Le decimos a sqlite que nos devuelva el nombre del cliente y del plato en lugar de sus IDs
    u.Nombre AS Cliente,
    pl.Nombre AS Plato,
    dp.Cantidad,
    -- Uso de json_extract para sacar elementos específicos del string JSON
    json_extract(p.Opciones_JSON, '$.opciones' ) AS Adicion_Solicitada
  
-- De la tabla Pedido, unimos con Usuario para obtener el nombre del cliente, con Detalle_Pedido para obtener
-- los detalles del pedido y con Plato para obtener el nombre del plato
FROM Pedido p
JOIN Usuario u ON p.ID_Usuario = u.id
JOIN Detalle_Pedido dp ON p.id = dp.id
JOIN Plato pl ON dp.ID_Plato = pl.id;

-- CONSULTA 2: Mostrar los restaurantes registrados
SELECT
    id AS id,
    nombre AS Restaurante,
    categoria AS Categoria,
    direccion AS Direccion,
    telefono AS Telefono
FROM Restaurante;

-- CONSULTA 3: Mostrar los repartidores registrados
SELECT
    id AS id,
    nombre AS Repartidor,
    telefono AS Telefono,
    estado AS Estado
FROM Repartidor;