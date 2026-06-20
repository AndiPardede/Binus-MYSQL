create database rental_kendaraan_Andi;

USE rental_kendaraan_Andi;
create table pelanggan (
Id_pelanggan int PRIMARY KEY auto_increment,
nama_pelanggan varchar(300) NOT NULL,
alamat_pelanggan text,
no_telp varchar(200),
nik_pelanggan int unique,
jenis_kendaraan varchar (200),
nomor_mesin text
);

insert into pelanggan (Id_pelanggan, nama_pelanggan, alamat_pelanggan, no_telp, nik_pelanggan, jenis_kendaraan, nomor_mesin) values
('6590866','Budi','Jakarta','123456789','9599483','Innova','AP10'),
('8934573','Bambang','Bandung','123456789','8939880','Innova','AP11'),
('9151828','Ilham','Medan','123456789','8521009','Innova','AP12'),
('3903124','Adit','Palembang','123456789','6249134','Innova','AP13'),
('1591155','Bebi','Surabaya','123456789','7863079','Innova','AP14'),
('4239618','Romeo','Jayapura','123456789','7788383','Innova','AP15'),
('2846233','juliet','Makassar','123456789','9762738','Innova','AP16'),
('9281294','Akbar','Pontianak','123456789','1317725','Innova','AP17'),
('3928719','Iman','Banyuwangi','123456789','3653060','Innova','AP18')
;

SELECT*FROM PELANGGAN 


use rental_kendaraan_andi;

create table kendaraan (
Id_kendaraan int PRIMARY KEY,
nama_kendaraan varchar(300),
tipe_kendaraan text,
tahun_terbit year,
warna_kendaraan text,
harga_kendaraan INT,
nomor_mesin text
);

use rental_kendaraan_andi;
insert into kendaraan (Id_kendaraan, nama_kendaraan, tipe_kendaraan, tahun_terbit, warna_kendaraan, harga_kendaraan, nomor_mesin) values
('1111','BYD','kecil','2024','Hitam','100000000','AP10'),
('1112','Honda','Sedamg','2024','Hitam','200000000','AP11'),
('1113','Toyota','Besar','2025','Putih','150000000','AP12'),
('1114','Mercy','kecil','2025','Putih','300000000','AP13'),
('1115','Wuling','Sedang','2026','Putih','400000000','AP14'),
('1116','Lamborgii','Besar','2026','Hitam','200000000','AP15'),
('1117','Jaecoo','Besar','2023','Merah','500000000','AP16'),
('1118','Tesla','kecil','2023','Merah','600000000','AP17'),
('1119','Mistsubishi','kecil','2024','Hitam','700000000','AP18'),
('111110','Mazda','kecil','2024','Hitam','500000000','AP19')
;

SELECT*FROM kendaraan 


create table Rental (
Id_rental int PRIMARY KEY,
nama_rental varchar(300),
alamat_rental text,
pemilik_rental text,
nama_pelanggan varchar(300),
nik_pelanggan int unique
);	

use rental_kendaraan_andi;
insert into Rental (Id_rental, nama_rental, alamat_rental, pemilik_rental, nama_pelanggan, nik_pelanggan) values
('2222','Sumber Makmur','Jakarta','Prasetyo','Budi','9599483');

use rental_kendaraan_andi;
insert into Rental (Id_rental, nama_rental, alamat_rental, pemilik_rental, nama_pelanggan, nik_pelanggan) values
('222233','Sumber Makmur','Jogja','Akbar','Bambang','8939881'),
('22224','Sumber Makmur','Bandung','Doddy','Ilham','8521009'),
('22225','Sumber Makmur','Padang','Rosari','Adit','6249134'),
('22226','Sumber Makmur','Samarinda','Adit','Bebi','7863079'),
('22227','Sumber Makmur','Kendari','Mulyono','Romeo','7788383'),
('22228','Sumber Makmur','Manado','Freddy','juliet','9762738'),
('22229','Sumber Makmur','Bandung','Alex','Akbar','1317725'),
('222210','Sumber Makmur','Jakarta','Ronaldo','Iman','3653060'),
('222211','Sumber Makmur','Jakarta','Messi','Sudirman','7654999')
;

SELECT*FROM Rental 



use rental_kendaraan_Andi;
create table Kategori_Kendaraan (
Id_kategori_kendaraan int PRIMARY KEY,
nama_rental varchar(300),
jenis_mesin text,
nomor_rangka text,
jenis_kendaraan text,
nomor_mesin text
);

use rental_kendaraan_andi;
insert into Kategori_Kendaraan (Id_kategori_kendaraan, nama_rental, jenis_mesin, nomor_rangka, jenis_kendaraan, nomor_mesin) values
('333','Sumber Makmur','AAA','A11','Innova','AP10'),
('444','Sumber Makmur','AAB','A12','Innova','AP11'),
('555','Sumber Makmur','AAC','A13','Innova','AP12'),
('666','Sumber Makmur','AAD','A14','Innova','AP13'),
('777','Sumber Makmur','AAE','A15','Innova','AP14'),
('888','Sumber Makmur','AAF','A16','Innova','AP15'),
('999','Sumber Makmur','AAG','A17','Innova','AP16'),
('000','Sumber Makmur','AAH','A18','Innova','AP17'),
('111','Sumber Makmur','AAI','A19','Innova','AP18'),
('222','Sumber Makmur','AAJ','A20','Innova','AP19')
;

SELECT*FROM Kategori_Kendaraan 