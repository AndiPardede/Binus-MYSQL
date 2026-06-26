create database db_andi;
use db_andi;


create table data_Pegawai(
id_pegawai INT auto_increment primary key,
nik_pegawai INT UNIQUE,
nama_pegawai varchar(300),
tahun_masuk_pegawai year,
tanggal_lahir_pegawai date,
jenis_kelamin text,
alamat_tinggal varchar(400),
nama_ibu text); 


create table data_keuangan(
nik_pegawai INT auto_increment primary key,
nama_pegawai text,
nama_bank_peminjam text,
jenis_pinjaman ENUM('KPR', 'KTA', 'KARTU KREDIT', 'KREDIT INVESTASI'),
Tahun_jenis_pinjaman datetime DEFAULT NOW(),
jenis_investasi enum('OBLIGASI', 'SAHAM', 'REKSA DANA', 'ASURANSI'),
Tahun_jenis_investasi timestamp DEFAULT NOW(),
total_aset INT unsigned
);

create table data_pinjaman_KPR (
id_pinjaman INT auto_increment primary key,
nik_pegawai INT not null unique,
limit_pinjaman INT,
Tahun_jenis_pinjaman datetime DEFAULT NOW(),
norek_pinjaman INT not null,
Income_debitur INT,
Lokasi_rumah Varchar(300) not null,
email_Debitur varchar(300) unique
);
