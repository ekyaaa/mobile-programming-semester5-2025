# Codelab 07

![alt text](img/1.png)

### 2. Jelaskan maksud dari langkah 2 pada praktikum tersebut!
-Command itu dijalankan untuk menambahkan plugin/library kedalam proyek Flutter kita

### 3. Jelaskan maksud dari langkah 5 pada praktikum tersebut!
-Dia memanggil class yang dibuatnya kedalam screen yaitu text berwarna merah.

### 4. Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
-widget pertama memiliki lebar 50 dan kedua 100.

### 5. Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !
-text adalah text yang ingin ditampilkan, Style untuk mengatur style seperti text biasa, maxLines adalah maximum baris yang akan ditampilkan, overflow adalah apa yang akan dilakukan ketika child text melebihi maximum baris.
return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
);