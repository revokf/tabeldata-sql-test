
# Knowledge Test

## 1. Membuat Tabel

Tuliskan perintah untuk membuat tabel dengan nama `tabel1`, dengan column sbb:
* `id`, dengan tipe data berupa bilangan bulat
* `fullname`, dengan tipe data karakter sebanyak 100 karakter
* `email`, dengan tipe data karakter sebanyak 50 karakter

**ANSWER:**

```sql
CREATE TABLE table1 (
    Id SERIAL PRIMARY KEY,
    fullname VARCHAR(100),
    email VARCHAR(50)
);
```

---

## 2. Fungsi PrimaryKey, ForeignKey, Index dan Unique Constraint

* **Primary Key:** PK adalah unique identifier row pada suatu tabel, Primary Key tidak boleh terduplikasi dan tidak boleh null.
* **Foreign Key:** FK adalah kolom dari tabel lain yang menjadi penghubung relasi dengan tabel saat ini.
* **Index:** Index adalah teknik pada penyusunan struktur data untuk mengefisiensikan proses dalam mengakses data.
* **Unique Constraint:** Unique Constraint memastikan data tidak ada yang terduplikasi tetapi masih bisa terjadi null. Dalam 1 tabel bisa lebih dari 1 column dengan unique constraint, tidak seperti PK yang hanya boleh 1 column.

---

## 3.Output INNER JOIN dan LEFT JOIN

* **Query 1:**

```sql
SELECT * FROM tabel1 INNER JOIN tabel2 ON tabel1.id = tabel2.id;
```

Output akan mengambil data yang cocok berada di kedua tabel.

* **Query 2:**

```sql
SELECT * FROM tabel1 LEFT JOIN tabel2 ON tabel1.id = tabel2.id;
```

Output akan mengambil seluruh data dari tabel kiri, tetapi hanya mengambil sebagian data tabel kanan yang juga cocok di tabel kiri.

---

## 4. Sub-query Gmail

Dari soal nomor 1 (tabel1), buat sebuah perintah query dengan menggunakan sub-query, untuk menampilkan data email yang menggunakan Gmail:

```sql
SELECT email
FROM table1
WHERE email IN (
    SELECT email
    FROM table1
    WHERE email LIKE '%@gmail.com'
);
```

---

## 5. Procedure dan Function di Postgres

* **Procedure:** Rangkaian query yang berisi argument, namun procedure tidak akan mengembalikan value, contohnya; melakukan perubahan terhadap tabel dengan INSERT, etc.
* **Function:** Rangkaian query yang berisi argument, jika function ini dirun maka akan mengembalikan value, contohnya; melakukan kalkulasi column dengan SUM, COUNT, etc.      
