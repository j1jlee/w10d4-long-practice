PRAGMA FOREIGN_KEYS = 1;

CREATE TABLE cats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    birth_year INTEGER
);

CREATE TABLE owners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE toys (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,

    cat_id INTEGER REFERENCES cats(id)
);

CREATE TABLE cats_owners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cat_id INTEGER,
    owner_id INTEGER,

    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);
