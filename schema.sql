DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Plato;
DROP TABLE IF EXISTS Pedido;
DROP TABLE IF EXISTS Detalle_Pedido;
DROP TABLE IF EXISTS Restaurante;
DROP TABLE IF EXISTS Repartidor;



PRAGMA foreign_keys = ON;


CREATE TABLE Usuario (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    correo TEXT NOT NULL,
    telefono TEXT
);

CREATE TABLE Plato (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    precio REAL NOT NULL,
    categoria TEXT
);

CREATE TABLE Pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER NOT NULL,
    fecha TEXT NOT NULL,
    estado TEXT NOT NULL,
    opciones_json TEXT,
    total TEXT NOT NULL,
    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id)
);

CREATE TABLE Detalle_Pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pedido INTEGER NOT NULL,
    id_plato INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario REAL NOT NULL,
    FOREIGN KEY (id_pedido)
        REFERENCES Pedido(id),
    FOREIGN KEY (id_plato)
        REFERENCES Plato(id)
);

CREATE TABLE Restaurante (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    categoria TEXT,
    direccion TEXT NOT NULL,
    telefono TEXT,
    icono_categoria TEXT
);

CREATE TABLE  Repartidor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    telefono TEXT,
    estado TEXT NOT NULL DEFAULT 'Disponible'
);

