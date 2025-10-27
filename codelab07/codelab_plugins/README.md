# Praktikum Menerapkan Plugin di Project Flutter

## Informasi Mahasiswa
- **Nama**: Ekya Gagah Adhitama
- **NIM**: 2241760049

## Deskripsi
Project ini dibuat untuk mempelajari cara menambahkan dan menggunakan plugin di Flutter, khususnya plugin `auto_size_text` yang digunakan untuk membuat text yang otomatis menyesuaikan ukurannya dengan container.

---

## Langkah-langkah Praktikum

### Langkah 1: Buat Project Baru
Membuat project Flutter baru dengan nama `codelab_plugins`:
```bash
flutter create codelab_plugins
```

### Langkah 2: Menambahkan Plugin
Menambahkan plugin `auto_size_text` menggunakan perintah:
```bash
flutter pub add auto_size_text
```

**Hasil:**
Plugin `auto_size_text` versi 3.0.0 berhasil ditambahkan ke `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  auto_size_text: ^3.0.0
```

### Langkah 3: Buat file red_text_widget.dart
Membuat file baru `red_text_widget.dart` di dalam folder `lib`:

```dart
import 'package:flutter/material.dart';

class RedTextWidget extends StatelessWidget {
  const RedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

### Langkah 4: Tambah Widget AutoSizeText
Mengubah `return Container()` menjadi:

```dart
return AutoSizeText(
  text,
  style: const TextStyle(color: Colors.red, fontSize: 14),
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
);
```

**❓ Mengapa terjadi error?**

**Jawaban:**
Error terjadi karena beberapa alasan:
1. **Import belum ditambahkan**: Plugin `auto_size_text` belum di-import ke file `red_text_widget.dart`
   ```dart
   import 'package:auto_size_text/auto_size_text.dart';
   ```

2. **Variabel `text` belum dideklarasikan**: Widget `AutoSizeText` membutuhkan parameter `text`, tetapi variabel tersebut belum dibuat di class `RedTextWidget`.

3. **Constructor belum menerima parameter**: Constructor `RedTextWidget` belum memiliki parameter untuk menerima nilai text dari widget parent.

### Langkah 5: Buat Variabel text dan parameter di constructor
Menambahkan variabel dan parameter:

```dart
final String text;

const RedTextWidget({Key? key, required this.text}) : super(key: key);
```

**Kode Lengkap red_text_widget.dart:**
```dart
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
```

### Langkah 6: Tambahkan widget di main.dart
Menambahkan import dan widget di `main.dart`:

**Import:**
```dart
import 'red_text_widget.dart';
```

**Di dalam children pada _MyHomePageState:**
```dart
children: <Widget>[
  Container(
    color: Colors.yellowAccent,
    width: 50,
    child: const RedTextWidget(
      text: 'You have pushed the button this many times:',
    ),
  ),
  Container(
    color: Colors.greenAccent,
    width: 100,
    child: const Text(
      'You have pushed the button this many times:',
    ),
  ),
  const Text('You have pushed the button this many times:'),
  Text(
    '$_counter',
    style: Theme.of(context).textTheme.headlineMedium,
  ),
],
```

---

## Penjelasan Plugin auto_size_text

### Apa itu auto_size_text?
`auto_size_text` adalah plugin Flutter yang secara otomatis menyesuaikan ukuran font agar text pas di dalam constraints yang diberikan.

### Keunggulan:
1. **Responsive Text**: Text otomatis mengecil jika container terlalu kecil
2. **Tidak Overflow**: Mencegah text keluar dari batas container
3. **Customizable**: Mendukung berbagai styling seperti Text widget biasa
4. **Max Lines**: Bisa mengatur jumlah baris maksimal

### Parameter Penting:
- `style`: Styling text (color, fontSize, fontWeight, dll)
- `maxLines`: Jumlah baris maksimal
- `minFontSize`: Ukuran font minimum (default: 12)
- `maxFontSize`: Ukuran font maksimum (default: tak terbatas)
- `overflow`: Cara menangani text yang terlalu panjang

---

## Hasil Praktikum

### Perbandingan Widget:

1. **Container Kuning (width: 50) - RedTextWidget dengan AutoSizeText**
   - Text berwarna **merah**
   - Font size otomatis mengecil untuk muat dalam container kecil
   - Maksimal 2 baris
   - Jika masih terlalu panjang, akan ada ellipsis (...)

2. **Container Hijau (width: 100) - Text Widget Biasa**
   - Text berwarna **hitam** (default)
   - Font size tetap
   - Bisa overflow jika text terlalu panjang
   - Tidak ada auto-sizing

### Screenshot Aplikasi:
![Screenshot](screenshots/praktikum_plugin.png)

**Perbedaan yang Terlihat:**
- Container kuning: Text merah yang lebih kecil dan pas dengan container sempit
- Container hijau: Text hitam yang mungkin terpotong karena width terbatas
- AutoSizeText secara otomatis menyesuaikan ukuran font agar text tetap terbaca

---

## Struktur Project

```
lib/
├── main.dart              # Entry point aplikasi
└── red_text_widget.dart   # Custom widget dengan AutoSizeText
```

---

## Cara Menjalankan

1. Clone repository
2. Masuk ke direktori project:
   ```bash
   cd codelab07/codelab_plugins
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```
   atau tekan **F5** di VS Code

---

## Kesimpulan

Praktikum ini mengajarkan:
1. ✅ Cara menambahkan plugin eksternal ke project Flutter
2. ✅ Cara menggunakan plugin `auto_size_text`
3. ✅ Membuat custom widget yang reusable
4. ✅ Memahami perbedaan antara Text biasa dan AutoSizeText
5. ✅ Pentingnya import dan deklarasi variabel yang benar

**Manfaat auto_size_text:**
- Text lebih responsive
- Tampilan lebih rapi di berbagai ukuran layar
- Menghindari overflow text
- User experience yang lebih baik

---

## Referensi
- [auto_size_text Plugin](https://pub.dev/packages/auto_size_text)
- [Flutter Plugin Documentation](https://docs.flutter.dev/packages-and-plugins/using-packages)

---

**© 2025 - Ekya Gagah Adhitama (2241760049)**
