USE redlock;
CREATE TABLE employees (
  ID INTEGER PRIMARY KEY,
  Nama TEXT,
  Alamat TEXT,
  Jabatan TEXT
);

INSERT INTO employees (ID, Nama, Alamat, Jabatan) VALUES
(1, 'Asep', 'jl. Manggis', 'IT Specialist'),
(2, 'Anto', 'jl. Apel', 'Sales Representative'),
(3, 'Aji', 'jl. Mangga', 'Assistant Manager'),
(4, 'Budi', 'jl. Kelapa', 'Customer Service Representative'),
(5, 'Toni', 'jl. Pepaya', 'Manager');