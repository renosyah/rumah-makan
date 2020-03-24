DROP DATABASE IF EXISTS rm_db;

CREATE DATABASE rm_db;

USE rm_db;

CREATE TABLE kota (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama TEXT
);

CREATE TABLE rumah_makan (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kota_id INT(11) NOT NULL,
    nama TEXT,
    url_menu TEXT,
    alamat TEXT,
    deskripsi TEXT,
    latitude FLOAT(53),
    longitude FLOAT(53),
    url_gambar TEXT
);

ALTER TABLE rumah_makan ADD FOREIGN KEY (kota_id) REFERENCES kota (id);



