CREATE Table usuario(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email TEXT NOT NULL,
    name TEXT NOT null,
    password TEXT NOT NULL,
    created_at DATE DEFAULT CURRENT_TIMESTAMP);


CREATE Table usuario_historic(
    id INTEGER NOT NULL PRIMARY KEY,
    created_at DATE DEFAULT CURRENT_TIMESTAMP,
    ip TEXT NOT NULL,
    usuario_id TEXT NOT NULL);


CREATE Table carrito(
    id INTEGER NOT NULL PRIMARY KEY,
    created_at DATE DEFAULT CURRENT_TIMESTAMP,
    usuario_id INTEGER NOT NULL UNIQUE,
    producto_id INTEGER NOT NULL UNIQUE,
    cantidad INTEGER NOT NULL,
    precio INTEGER NOT NULL);


CREATE Table profucto(
    id INTEGER NOT NULL PRIMARY KEY,
    created_at DATE DEFAULT CURRENT_TIMESTAMP,
    nombre TEXT NOT NULL UNIQUE,
    precio INTEGER NOT NULL,
    cantidad INTEGER not NULL);


    CREATE Table post(
        id INTEGER NOT NULL PRIMARY KEY,
        created_at DATE DEFAULT CURRENT_TIMESTAMP,
        titulo TEXT not NULL,
        cuerpo TEXT NOT NULL,
        categoria_id INTEGER NOT NULL UNIQUE);


    CREATE Table categotias(
        id INTEGER NOT NULL PRIMARY KEY,
        created_at TIME DEFAULT CURRENT_TIMESTAMP,
        titulo TEXT NOT NULL);



    CREATE Table etiquetas(
        id INTEGER NOT NULL PRIMARY KEY,
        titulo TEXT NOT NULL,
        created_at TIME DEFAULT CURRENT_TIMESTAMP);





