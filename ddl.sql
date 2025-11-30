-- DDL dim_location
CREATE TABLE IF NOT EXISTS dim_location (
    id TEXT PRIMARY KEY,
    name TEXT,
    branch TEXT,
    city TEXT,
    UNIQUE(branch, city)
);

-- DDL dim_date
CREATE TABLE IF NOT EXISTS dim_date (
    id TEXT PRIMARY KEY,
    date TEXT UNIQUE,
    year INTEGER,
    month INTEGER,
    day INTEGER
);

-- DDL fact_sales
CREATE TABLE IF NOT EXISTS fact_sales (
    invoice_id TEXT PRIMARY KEY,
    location_id TEXT,
    date_id TEXT,
    gross_income REAL,
    rating REAL,
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES dim_location (id),
    CONSTRAINT fk_date FOREIGN KEY (date_id) REFERENCES dim_date (id)
);