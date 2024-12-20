# 🛍️ Gallery Sport

Gallery Sport adalah aplikasi e-commerce mobile yang berfokus pada koleksi sportswear, dirancang untuk memenuhi kebutuhan pengguna akan pakaian olahraga berkualitas. Aplikasi ini menyediakan platform sederhana dan mudah diakses untuk menemukan berbagai pilihan sportswear melalui perangkat mobile.
## Pertanyaan dan Jawaban Tugas 7: Elemen Dasar Flutter

### 1. Apa yang dimaksud dengan Stateless Widget dan Stateful Widget, dan apa perbedaannya? 

- **Stateless Widget**: Widget tanpa state atau kondisi yang berubah, digunakan untuk tampilan statis. Contoh: Text, Icon.
- **Stateful Widget**: Widget dengan state yang dapat berubah. Setiap perubahan pada state menyebabkan widget dirender ulang. Contoh: Checkbox, Slider.

**Perbedaan utama**: Stateless widget tidak berubah setelah dibuat, sedangkan stateful widget memiliki state yang dapat berubah dan memicu pengulangan render.

### 2. Widget utama apa saja yang digunakan pada proyek ini dan apa fungsinya? 

Berikut widget utama yang digunakan:

- **Scaffold**: Struktur dasar halaman dengan AppBar dan body.
- **AppBar**: Menampilkan judul aplikasi di bagian atas.
- **Padding**: Memberikan ruang di sekitar widget.
- **Column** dan **Row**: Menyusun widget secara vertikal atau horizontal.
- **Card**: Tampilan kartu untuk menampilkan informasi.
- **GridView**: Menampilkan widget dalam bentuk grid.

### 3. Apa fungsi dari setState()? 

setState() digunakan dalam StatefulWidget untuk memperbarui state widget secara dinamis. Pemanggilan setState() menyebabkan Flutter me-render ulang widget agar mencerminkan data terbaru. Dalam proyek ini, variabel yang memerlukan setState() adalah variabel yang berubah sesuai interaksi pengguna, seperti jika ada fitur penghitung produk atau daftar produk yang dinamis.

### 4. Jelaskan perbedaan antara const dengan final. 

- **const**: Nilai harus diketahui sebelum runtime dan tidak berubah. Contoh: const Text('Hello').
- **final**: Nilainya tetap setelah diinisialisasi, tetapi dapat diatur pada runtime. Contoh: final String name = 'John';.

### 5. Implementasi Checklist ✅

1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
   - Menggunakan perintah flutter create gallery_sport untuk membuat proyek baru
   - Mengubah judul aplikasi menjadi "Gallery Sport" di dalam MyHomePage
   - Membuat struktur dasar aplikasi dengan Scaffold yang memiliki AppBar dan body
   - Menambahkan informasi NPM, Nama, dan Kelas menggunakan widget InfoCard

2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
   - Melihat daftar produk (Lihat Daftar Produk)
   - Menambah produk (Tambah Produk)
   - Logout (Logout)
   
   Implementasi dilakukan dengan:
   - Membuat class ItemHomepage untuk menyimpan properti tombol (nama, ikon, dan warna)
   - Membuat class ItemCard sebagai widget untuk menampilkan tombol dalam bentuk card
   - Mengatur layout tombol menggunakan GridView.count dengan 3 kolom
   - Menambahkan ikon yang sesuai untuk setiap tombol (Icons.shopping_bag_outlined, Icons.add, Icons.logout)
   - Mengatur padding dan spacing antar tombol untuk tampilan yang rapi

3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
   - Menggunakan properti color pada class ItemHomepage untuk memberikan warna unik pada setiap tombol:
     - Menambahkan atribut color di Constructor
     - Lihat Daftar Produk: Colors.green
     - Tambah Produk: Colors.orange
     - Logout: Colors.blue

4. Memunculkan Snackbar dengan tulisan:
   - "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
   - "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
   - "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
   
   Implementasi:
   - Memanfaatkan ScaffoldMessenger.of(context) untuk menampilkan Snackbar
   - Menggunakan string interpolation untuk menampilkan pesan yang sesuai dengan tombol yang ditekan

## Pertanyaan dan Jawaban Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

### 1. Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

- **Kegunaan `const`**: `const` digunakan untuk mendeklarasikan objek yang nilainya bersifat tetap dan diketahui sebelum runtime. Penggunaan `const` memungkinkan Flutter mengoptimalkan performa aplikasi karena objek yang sama tidak perlu dibuat ulang saat widget dirender kembali.
  
- **Keuntungan**: `const` menghemat memori dan meningkatkan performa dengan cara mencegah pembuatan ulang objek pada setiap render, terutama untuk aplikasi yang kompleks dan sering diperbarui. Penggunaan `const` pada objek statis mengurangi overhead rendering.

- **Penggunaan yang Disarankan**: `const` sebaiknya digunakan ketika objek memiliki nilai tetap yang tidak akan berubah, seperti pada widget statis (contohnya, teks atau ikon yang tetap).

- **Situasi di Mana `const` Tidak Digunakan**: `const` tidak dianjurkan pada objek atau variabel yang bersifat dinamis atau bergantung pada perubahan state.

### 2. Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

- **Column**: Widget ini menyusun child-nya secara vertikal, dari atas ke bawah. `Column` cocok digunakan untuk menata elemen secara vertikal dalam satu baris, seperti pada formulir atau tampilan bertumpuk.

- **Row**: Widget ini menyusun anak-anaknya secara horizontal, dari kiri ke kanan. `Row` digunakan untuk menata elemen-elemen dalam satu baris mendatar, cocok untuk tata letak dengan orientasi horizontal, seperti ikon dan teks pada satu baris.

**Perbandingan**:
- `Column` cocok untuk tata letak vertikal, sedangkan `Row` cocok untuk tata letak horizontal.

### 3. Apa saja elemen input yang digunakan pada halaman form yang dibuat pada tugas kali ini? Apakah terdapat elemen input Flutter lain yang tidak digunakan pada tugas ini? Jelaskan!

- **Elemen input yang digunakan**:
  - **TextFormField**: Digunakan untuk input teks, yaitu nama produk, deskripsi produk, dan jumlah produk.
  - **ElevatedButton**: Digunakan sebagai tombol untuk menyimpan data produk setelah diisi pada form.

- **Elemen input lain yang tidak digunakan**:
  - **DropdownButton**: Berguna untuk memilih salah satu dari beberapa opsi yang tersedia.
  - **Checkbox**: Berguna untuk memilih beberapa opsi dalam sebuah grup pilihan.
  - **Slider**: Cocok untuk input berupa angka dalam rentang tertentu, misalnya memilih level atau tingkat.

  Elemen-elemen tersebut tidak digunakan karena formulir hanya membutuhkan input teks dan tombol.


### 4. Bagaimana cara mengatur tema (theme) dalam aplikasi Flutter agar aplikasi konsisten? Apakah tema diimplementasikan pada aplikasi yang dibuat?

- **Cara Mengatur Tema**: Tema diatur pada `MaterialApp` menggunakan properti `theme`, yang memungkinkan pengaturan warna utama (`primaryColor`), warna sekunder (`secondaryColor`), dan lain-lain.

- **Apakah tema diimplementasikan pada aplikasi yang dibuat?**: Ya, Pada aplikasi ini, tema diimplementasikan dalam `main.dart` dengan `primary` dan `secondary` yang disesuaikan sesuai kebutuhan, di mana warna utama diatur menjadi warna biru kustom dan warna sekunder diatur menjadi warna merah kustom. Tema ini kemudian diterapkan pada elemen-elemen lain, seperti `AppBar` menggunakan `Theme.of(context).colorScheme.primary` dan  `DrawerHeader` menggunakan `secondary`. Pendekatan ini memastikan konsistensi warna dan gaya di seluruh halaman aplikasi.


### 5. Bagaimana cara menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

- **Penanganan Navigasi**: Navigasi antar halaman ditangani menggunakan `Navigator`. `Navigator.push` digunakan untuk membuka halaman baru dan menambahkannya ke stack navigasi, memungkinkan pengguna kembali ke halaman sebelumnya dengan tombol "Back". `Navigator.pushReplacement` digunakan untuk mengganti halaman tanpa menyimpan halaman sebelumnya di stack.

## Pertanyaan dan Jawaban Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

### 1. Mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
- **Alasan Membuat Model**: Model diperlukan untuk mempermudah proses serialisasi dan deserialisasi data JSON antara Flutter dan Django. Dengan model, data JSON dapat dikonversi ke dalam objek yang mudah dikelola di Flutter, serta memastikan data dikirim dalam format yang sesuai ke Django.
- **Jika Tidak Membuat Model**:
  - Akan sulit untuk memetakan struktur data JSON ke dalam format yang dapat digunakan dalam aplikasi.
  - Potensi error seperti tipe data yang tidak sesuai dapat terjadi, terutama jika data JSON memiliki struktur kompleks.

### 2. Jelaskan fungsi dari library `http` yang sudah kamu implementasikan pada tugas ini.
- Library `http` digunakan untuk melakukan komunikasi HTTP antara aplikasi Flutter dan server Django.
- **Fungsi Utama**:
  - Mengirim permintaan HTTP (`GET`, `POST`, `PUT`, `DELETE`) ke server Django.
  - Menerima respons dari server (dalam format JSON) untuk diolah dan ditampilkan di aplikasi Flutter.
- **Keunggulan**:
  - Sederhana dan fleksibel untuk mengintegrasikan aplikasi dengan layanan web berbasis REST API.

### 3. Jelaskan fungsi dari `CookieRequest` dan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- **Fungsi `CookieRequest`**:
  - Menyimpan cookie autentikasi yang diterima dari Django setelah proses login.
  - Memastikan semua permintaan HTTP dari aplikasi Flutter membawa cookie ini untuk menjaga status autentikasi.
- **Pentingnya Membagikan Instance**:
  - Semua komponen dalam aplikasi Flutter memerlukan akses ke instance `CookieRequest` agar dapat melakukan permintaan ke endpoint yang dilindungi dan menjaga konsistensi status autentikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. **Input Data**:
   - Data dimasukkan melalui form di Flutter.
   - Flutter melakukan validasi data sebelum mengirimkannya ke Django.
2. **Pengiriman ke Django**:
   - Flutter mengirimkan data dalam format JSON menggunakan HTTP POST ke endpoint Django.
3. **Pemrosesan di Django**:
   - Django menerima data, memvalidasi, menyimpannya ke dalam database, dan mengembalikan respons JSON.
4. **Menampilkan di Flutter**:
   - Flutter menerima respons JSON, mengonversinya menjadi objek menggunakan model, dan menampilkan data menggunakan widget seperti `ListView`.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. **Registrasi**:
   - Pengguna mengisi form registrasi di Flutter.
   - Data dikirim ke endpoint Django untuk membuat akun baru.
   - Django memvalidasi data dan menyimpan akun baru ke database.
2. **Login**:
   - Flutter mengirimkan username dan password ke endpoint Django.
   - Django memvalidasi kredensial dan mengirimkan cookie autentikasi.
   - Flutter menyimpan cookie menggunakan `CookieRequest`.
3. **Logout**:
   - Flutter mengirim permintaan logout ke Django.
   - Django menghapus sesi pengguna, dan Flutter menghapus cookie lokal.
4. **Tampilan Menu**:
   - Setelah login, cookie autentikasi digunakan untuk mengakses endpoint Django yang dilindungi dan menampilkan data di Flutter.


### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
Proses implementasi dimulai dengan menyiapkan backend Django, termasuk pembuatan model untuk data item dan endpoint yang dapat mengirimkan atau menerima data dalam format JSON melalui metode HTTP seperti GET dan POST. Sistem autentikasi menggunakan cookie juga disiapkan untuk membatasi akses hanya kepada pengguna yang login. Di Flutter, model data dibuat sesuai dengan struktur JSON dari Django untuk mempermudah parsing data. Halaman daftar item dirancang untuk menampilkan atribut name, price, dan description, dengan halaman detail yang menampilkan informasi lengkap setiap item serta tombol kembali ke daftar. Filter diterapkan pada backend agar hanya item yang terkait dengan pengguna login yang ditampilkan, dengan cookie autentikasi disimpan menggunakan CookieRequest. Selain itu, fitur login, registrasi, dan logout diimplementasikan untuk mengelola sesi pengguna. Dengan langkah ini, aplikasi Flutter mampu berkomunikasi secara dinamis dengan Django, menampilkan data sesuai status autentikasi pengguna, dan memberikan pengalaman pengguna yang terpadu.


