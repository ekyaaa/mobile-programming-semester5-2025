# Codelab 09 — Photo Filter Carousel

Singkat: gabungan Praktikum 1 (kamera) dan Praktikum 2 (filter carousel). Letakkan screenshot/gif di folder `img/`.

## Hasil (Screenshots)

- Praktikum 1 — Kamera  
  ![Praktikum 1 — Kamera](img/filter_kamera.gif)

- Praktikum 2 — Filter Carousel  
  ![Praktikum 2 — Filter Carousel](img/kamera_flutter.gif)

---

## Soal dan Jawaban

1. Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!
   - Jawaban: Sudah digabungkan pada repository ini. Letakkan screenshot hasil di folder `img/` dan commit perubahan README dan file gambar. Perbaikan yang dilakukan: ganti URL gambar 404 dengan URL valid atau gunakan aset lokal; pastikan permission kamera; reset filter setelah pengambilan foto bila perlu.

2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!
   - Jawaban: Telah digabungkan. Alur: buka kamera -> ambil foto -> tampilkan foto -> tampilkan FilterSelector untuk memilih filter; filter diterapkan ke foto yang sudah diambil menggunakan ValueNotifier<Color>.

3. Jelaskan maksud void async pada praktikum 1?
   - Jawaban singkat:
     - `async` menandakan fungsi berjalan secara asynchronous dan memungkinkan penggunaan `await`.
     - Biasanya fungsi async mengembalikan `Future<T>` (contoh: `Future<void>`).  
     - `void` bersama `async` (fungsi `void async`) menghasilkan `void` yang tidak bisa di-await oleh pemanggil — ini tidak disarankan untuk operasi yang perlu dipantau (lebih baik gunakan `Future<void>`).  
     - Contoh yang benar: `Future<void> initCamera() async { ... }`.

4. Jelaskan fungsi dari anotasi `@immutable` dan `@override`?
   - Jawaban singkat:
     - `@immutable`: anotasi dari package `meta` yang menandakan semua field dalam kelas harus final (tidak berubah). Umum dipakai pada widget StatelessWidget/konfigurasi immutable untuk meningkatkan safety.
     - `@override`: menandakan method/field sedang menimpa (override) definisi dari superclass atau interface. Membantu lint dan mencegah kesalahan penamaan/parameter.

5. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

---