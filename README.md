# 🛍️ Gallery Sport

Gallery Sport adalah aplikasi e-commerce mobile yang berfokus pada koleksi sportswear, dirancang untuk memenuhi kebutuhan pengguna akan pakaian olahraga berkualitas. Aplikasi ini menyediakan platform sederhana dan mudah diakses untuk menemukan berbagai pilihan sportswear melalui perangkat mobile.

## Pertanyaan dan Jawaban Tugas 7: Elemen Dasar Flutter

### 1. Apa yang dimaksud dengan Stateless Widget dan Stateful Widget, dan apa perbedaannya? 

- **Stateless Widget**: Widget tanpa state atau kondisi yang berubah, digunakan untuk tampilan statis. Contoh: `Text`, `Icon`.
- **Stateful Widget**: Widget dengan state yang dapat berubah. Setiap perubahan pada state menyebabkan widget dirender ulang. Contoh: `Checkbox`, `Slider`.

**Perbedaan utama**: Stateless widget tidak berubah setelah dibuat, sedangkan stateful widget memiliki state yang dapat berubah dan memicu pengulangan render.

### 2. Widget utama apa saja yang digunakan pada proyek ini dan apa fungsinya? 

Berikut widget utama yang digunakan:

- **Scaffold**: Struktur dasar halaman dengan AppBar dan body.
- **AppBar**: Menampilkan judul aplikasi di bagian atas.
- **Padding**: Memberikan ruang di sekitar widget.
- **Column** dan **Row**: Menyusun widget secara vertikal atau horizontal.
- **Card**: Tampilan kartu untuk menampilkan informasi.
- **GridView**: Menampilkan widget dalam bentuk grid.

### 3. Apa fungsi dari `setState()`? 

`setState()` digunakan dalam StatefulWidget untuk memperbarui state widget secara dinamis. Pemanggilan `setState()` menyebabkan Flutter me-render ulang widget agar mencerminkan data terbaru. Dalam proyek ini, variabel yang memerlukan `setState()` adalah variabel yang berubah sesuai interaksi pengguna, seperti jika ada fitur penghitung produk atau daftar produk yang dinamis.

### 4. Jelaskan perbedaan antara `const` dengan `final`. 

- **const**: Nilai harus diketahui sebelum runtime dan tidak berubah. Contoh: `const Text('Hello')`.
- **final**: Nilainya tetap setelah diinisialisasi, tetapi dapat diatur pada runtime. Contoh: `final String name = 'John';`.

### 5. Implementasi Checklist ✅

1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
   - Menggunakan perintah `flutter create gallery_sport` untuk membuat proyek baru
   - Mengubah judul aplikasi menjadi "Gallery Sport" di dalam `MyHomePage`
   - Membuat struktur dasar aplikasi dengan `Scaffold` yang memiliki `AppBar` dan `body`
   - Menambahkan informasi NPM, Nama, dan Kelas menggunakan widget `InfoCard`

2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
   - Melihat daftar produk (Lihat Daftar Produk)
   - Menambah produk (Tambah Produk)
   - Logout (Logout)
   
   Implementasi dilakukan dengan:
   - Membuat class `ItemHomepage` untuk menyimpan properti tombol (nama, ikon, dan warna)
   - Membuat class `ItemCard` sebagai widget untuk menampilkan tombol dalam bentuk card
   - Mengatur layout tombol menggunakan `GridView.count` dengan 3 kolom
   - Menambahkan ikon yang sesuai untuk setiap tombol (`Icons.shopping_bag_outlined`, `Icons.add`, `Icons.logout`)
   - Mengatur padding dan spacing antar tombol untuk tampilan yang rapi

3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
   - Menggunakan properti `color` pada class `ItemHomepage` untuk memberikan warna unik pada setiap tombol:
     - Menambahkan atribut color di Constructor
     - Lihat Daftar Produk: `Colors.green`
     - Tambah Produk: `Colors.orange`
     - Logout: `Colors.blue`

4. Memunculkan Snackbar dengan tulisan:
   - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
   - "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
   - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
   
   Implementasi:
   - Memanfaatkan `ScaffoldMessenger.of(context)` untuk menampilkan Snackbar
   - Menggunakan string interpolation untuk menampilkan pesan yang sesuai dengan tombol yang ditekan

