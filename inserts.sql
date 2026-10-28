

INSERT INTO Usuario (id, nombre, correo, telefono) 
VALUES 
(1, 'John Doe', 'johndoe@email.com', '1234567890'),
(2, 'Jane Smith', 'janesmith@email.com', '0987654321'),
(3, 'Alice Johnson', 'alicejohnson@email.com', '5555555555'),
(4, 'Charlie Davis', 'charliedavis@email.com', '2222222222'),
(5, 'Diana Evans', 'dianaevans@email.com', '3333333333');


INSERT INTO Restaurante (id, nombre, categoria, direccion, telefono, icono_categoria) 
VALUES
(1,'Pasta Palace', 'Italian', 'Calle 10 #5-20', '3001112233', 'pasta_icon.png'),
(2,'Sushi World', 'Japanese', 'Calle 12 #8-15', '3002223344', 'sushi_icon.png'),
(3,'Burger Barn', 'Fast Food', 'Carrera 5 #10-30', '3003334455', 'burger_icon.png'),
(4,'Taco Town', 'Mexican', 'Carrera 8 #12-40', '3004445566', 'taco_icon.png'),
(5 ,'Curry Corner', 'Indian', 'Calle 15 #6-25', '3005556677', 'curry_icon.png');

INSERT INTO Repartidor (id, nombre, telefono, estado)
VALUES
(1, 'Mike Wilson', '3001110001', 'Disponible'),
(2, 'Sarah Lee', '3001110002', 'Disponible'),
(3, 'Tom Harris', '3001110003', 'Ocupado'),
(4, 'Emma Clark', '3001110004', 'Disponible'),
(5, 'David Lewis', '3001110005', 'Ocupado');

INSERT INTO Plato (id, nombre, precio, categoria) 
VALUES
(1, 'Spaghetti Carbonara', 12.99, 'Pasta'),
(2, 'Lasagna', 14.99, 'Pasta'),
(3, 'California Roll', 8.99, 'Sushi'),
(4, 'Salmon Nigiri', 10.99, 'Sushi'),
(5, 'Cheeseburger', 9.99, 'Hamburguesas'),
(6, 'Fries', 3.99, 'Acompañamientos'),
(7, 'Chicken Tacos', 11.99, 'Tacos'),
(8, 'Beef Burrito', 12.49, 'Tacos'),
(9, 'Chicken Curry', 13.99, 'Curry'),
(10, 'Vegetable Biryani', 11.49, 'Arroz'),
(11, 'Pepperoni Pizza', 13.99, 'Pizza'),
(12, 'Chocolate Cake', 6.99, 'Postres');


INSERT INTO Pedido (id, id_usuario, fecha, estado, opciones_json, total)
VALUES
(1, 3, '2024-06-01 12:30:00', 'Entregado','{"opciones": ["sin salsa", "sin verduras", "extra mariscos"]}', 25.98),
(2, 2, '2024-06-02 13:15:00', 'En proceso','{"opciones": ["con salsa", "sin ajo"]}', 23.97),
(3, 1, '2024-06-03 14:45:00', 'Pendiente','{"opciones": ["pescado fresco", "con ajo"]}', 26.97),
(4, 2, '2024-06-04 15:20:00', 'Entregado','{"opciones": ["extra pescado", "sin salsa"]}', 11.99),
(5, 1, '2024-06-05 16:10:00', 'Cancelado','{"opciones": ["extra queso", "sin ajo"]}', 23.98),
(6, 3, '2024-06-06 12:20:00', 'Entregado','{"opciones": ["sin cebolla"]}', 15.99),
(7, 4, '2024-06-07 13:30:00', 'En proceso','{"opciones": ["extra queso"]}', 22.98),
(8, 5, '2024-06-08 14:10:00', 'Pendiente','{"opciones": ["sin picante"]}', 18.99),
(9, 1, '2024-06-09 15:00:00', 'Entregado','{"opciones": ["extra salsa"]}', 12.49),
(10, 2, '2024-06-10 16:15:00', 'Cancelado','{"opciones": ["sin ajo"]}', 13.99),
(11, 3, '2024-06-11 17:20:00', 'Entregado','{"opciones": ["extra verduras"]}', 19.99),
(12, 4, '2024-06-12 18:30:00', 'Pendiente','{"opciones": ["sin sal"]}', 16.99);

INSERT INTO Detalle_Pedido (id, id_pedido, id_plato, cantidad, precio_unitario)
VALUES
(1, 1, 1, 1, 12.99),
(2, 1, 2, 1, 14.99),
(3, 2, 3, 2, 8.99),
(4, 2, 4, 1, 10.99),
(5, 3, 5, 3, 9.99),
(6, 4, 7, 1, 11.99),
(7, 5, 9, 1, 13.99),
(8, 5, 10, 1, 11.49);
