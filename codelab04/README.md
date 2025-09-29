# 04 | Pengantar Bahasa Pemrograman Dart - Bagian 3

Jobsheet 4 | Pemrograman Mobile

## Praktikum 1: Eksperimen Tipe Data List

### Langkah 1

```
void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

### Langkah 2

![alt text](img/1.png)

Penjelasan: assert akan menghentikan program apabila error, lalu berhubung bisa semua maka di jalankan sampai akhir yang menghasilkan print 321.

### Langkah 3

![alt text](img/2.png)

Error karena final tidak bisa diubah setelah diinisiasi. Solusi :

```
void main() {
  List list = List.filled(5, null);

  list[1] = "Ekya Muhammad";
  list[2] = "2341720111";

  print(list);
  print(list[1]);
  print(list[2]);
}
```

Hasil:
![alt text](img/3.png)

## Praktikum 2: Eksperimen Tipe Data Set

### Langkah 1

```
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

### Langkah 2

![alt text](img/4.png)

Tidak ada yang error. Yang terjadi adalah kode ngeprint isi halogens.

### Langkah 3

![alt text](img/5.png)

Tidak ada yang error.

Hasil menambahkan dengan add() dan addAll()
![alt text](img/6.png)

## Praktikum 3:

### Langkah 1 & 2

![alt text](img/7.png)

Tidak ada yang error. yang dilakukan hanya menginisiasi variabel map dan di print.

### Langkah 3

![alt text](img/8.png)

Yang dilakukan adalah menginisiasi mhs 1 dengan key String dan nilai String serta mhs 2 dengan key int dengan nilai String.

Sisanya adalah mencoba untuk mengubah nilai map dengan key tertentu, tidak ada yang error.

![alt text](img/9.png)

## Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators

### Langkah 1 & 2

![alt text](img/10.png)

Hasilnya error karena penulisan variabelnya salah

![alt text](img/11.png)

Yang dilakukan: list diinisiasi, didalam list 2 nilai 0 dibuat lalu memasukkan seluruh nilai list setelah 0 lalu di print. Setelah itu list2 dihitung isinya.

### Langkah 3

![alt text](img/12.png)
Error karena list1 tidak nullable. Cara yang bisa dilakukan adalah menambahkan ? ke kiri null agar dapat di nullkan.

![alt text](img/13.png)

### Langkah 4

Error.
![alt text](img/14.png)

Jika true
![alt text](img/15.png)

Jika false
![alt text](img/16.png)

### Langkah 5

Error karena variabel login belum diinisiasi.

### Langkah 6

![alt text](img/17.png)

Menginisiasi nilai menggunakan for.


## Praktikum 5

## Langkah 1
![alt text](img/18.png)

Menginisiasi dan print record

## Langkah 2 & 3

![alt text](img/19.png)

## Langkah 4
![alt text](img/20.png)
Error karena tidan nullable dan tidak diinisiasi nilai.


## Langkah 5
![alt text](img/21.png)

Kode print atribute dari record

![alt text](img/22.png)