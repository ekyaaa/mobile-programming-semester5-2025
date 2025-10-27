# Tugas Praktikum 2 - Aplikasi Belanja (Shopping App)

## Informasi Mahasiswa
- **Nama**: Ekya Gagah Adhitama
- **NIM**: 2241760049

## Deskripsi
Aplikasi belanja sederhana yang dibangun menggunakan Flutter dengan fitur navigasi menggunakan **go_router** dan animasi **Hero** untuk transisi antar halaman.

## Fitur Aplikasi

### 1. Halaman Home (HomePage)
- Menampilkan daftar produk dalam bentuk **GridView** seperti marketplace pada umumnya
- Setiap item produk ditampilkan dalam **Card** dengan informasi:
  - Foto produk (dengan Hero animation)
  - Nama produk
  - Harga
  - Rating (bintang)
  - Stok

### 2. Halaman Detail Produk (ItemPage)
- Menampilkan detail lengkap produk yang dipilih
- Menggunakan **Hero Animation** untuk transisi gambar dari halaman home
- Informasi detail meliputi:
  - Gambar produk ukuran besar (dengan Hero)
  - Nama produk
  - Rating dengan badge
  - Stok dengan badge berwarna (hijau jika tersedia, merah jika habis)
  - Harga dalam format rupiah
  - Deskripsi produk
- Tombol "Tambah ke Keranjang" (disabled jika stok habis)

### 3. Navigasi dengan go_router
Aplikasi menggunakan **go_router** untuk pengelolaan routing yang lebih modern dan efisien dibandingkan Navigator biasa.

**Konfigurasi Route:**
```dart
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/item',
      builder: (BuildContext context, GoRouterState state) {
        final item = state.extra as Item;
        return ItemPage(item: item);
      },
    ),
  ],
);
```

**Navigasi ke halaman detail:**
```dart
context.go('/item', extra: item);
```

### 4. Hero Animation
Hero animation digunakan untuk memberikan transisi yang smooth pada gambar produk dari halaman home ke halaman detail.

**Implementasi di ItemCard (HomePage):**
```dart
Hero(
  tag: 'item-${item.name}',
  child: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(item.imageUrl),
        fit: BoxFit.cover,
      ),
    ),
  ),
)
```

**Implementasi di ItemPage:**
```dart
Hero(
  tag: 'item-${item.name}',
  child: Image.network(
    item.imageUrl,
    fit: BoxFit.cover,
  ),
)
```

### 5. Model Item
Model `Item` memiliki atribut:
- `name`: Nama produk
- `price`: Harga produk (dalam rupiah)
- `imageUrl`: URL gambar produk
- `stock`: Jumlah stok
- `rating`: Rating produk (skala 1-5)
- `description`: Deskripsi produk

### 6. Widget Components
Aplikasi dibagi menjadi beberapa widget kecil untuk reusability:

#### a. ItemCard Widget
- Menampilkan card produk di halaman home
- Mengatur tampilan gambar, nama, harga, rating, dan stok
- Handle tap untuk navigasi ke detail

#### b. Footer Widget
- Menampilkan informasi mahasiswa (Nama dan NIM)
- Ditempatkan di bagian bawah halaman home

## Struktur Project

```
lib/
├── main.dart                 # Entry point & routing configuration
├── models/
│   └── item.dart            # Model Item
├── pages/
│   ├── home_page.dart       # Halaman utama (GridView produk)
│   └── item_page.dart       # Halaman detail produk
└── widgets/
    ├── item_card.dart       # Widget card produk
    └── footer.dart          # Widget footer dengan info mahasiswa
```

## Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  go_router: ^14.0.0
```

## Cara Menjalankan

1. Clone repository
2. Masuk ke direktori `codelab06/prak_2`
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

## Screenshot Aplikasi

### Halaman Home
![Home Page](screenshots/home_page.png)
*GridView menampilkan produk-produk dengan card yang menarik*

### Halaman Detail Produk
![Item Detail](screenshots/item_detail.png)
*Detail produk dengan Hero animation dan informasi lengkap*

### Hero Animation
![Hero Animation](screenshots/hero_animation.gif)
*Transisi smooth dengan Hero animation*

## Penjelasan Teknis

### 1. Pengiriman Data ke Halaman Berikutnya
Menggunakan parameter `extra` dari go_router:
```dart
context.go('/item', extra: item);
```

### 2. Pembacaan Data di Halaman Tujuan
Data diterima melalui parameter constructor:
```dart
class ItemPage extends StatelessWidget {
  final Item item;
  
  const ItemPage({super.key, required this.item});
  // ...
}
```

### 3. GridView Implementation
Menggunakan `GridView.builder` dengan `SliverGridDelegateWithFixedCrossAxisCount`:
```dart
GridView.builder(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,           // 2 kolom
    childAspectRatio: 0.7,       // Rasio tinggi/lebar
    crossAxisSpacing: 8,         // Jarak horizontal
    mainAxisSpacing: 8,          // Jarak vertikal
  ),
  itemCount: items.length,
  itemBuilder: (context, index) {
    // Build item card
  },
)
```

### 4. Responsive Design
- Menggunakan `Expanded` dan `Flexible` untuk layout yang responsif
- Image menggunakan `NetworkImage` dengan error handling
- Button state berdasarkan kondisi stok

## Keunggulan Aplikasi

1. ✅ **Modern Navigation**: Menggunakan go_router untuk routing yang deklaratif
2. ✅ **Smooth Animation**: Hero animation untuk transisi yang mulus
3. ✅ **Clean Architecture**: Pemisahan model, pages, dan widgets
4. ✅ **Responsive UI**: GridView yang menyesuaikan dengan ukuran layar
5. ✅ **User Friendly**: Informasi lengkap dan tampilan yang menarik
6. ✅ **Material Design 3**: Menggunakan Material 3 design language

## Referensi

- [Flutter Navigation with Arguments](https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
- [Hero Animations](https://docs.flutter.dev/cookbook/navigation/hero-animations)
- [go_router Package](https://pub.dev/packages/go_router)
- [GridView Class](https://api.flutter.dev/flutter/widgets/GridView-class.html)

---

**© 2025 - Ekya Gagah Adhitama (2241760049)**
