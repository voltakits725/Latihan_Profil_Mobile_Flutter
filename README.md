# Pertemuan Ke-5 — Flutter Portfolio App

Aplikasi mobile berbasis Flutter yang menampilkan profil diri, keterampilan pemrograman, dan kumpulan proyek. Proyek ini dibuat sebagai latihan pengembangan aplikasi mobile menggunakan Flutter dan bahasa pemrograman Dart.

## 📱 Fitur Aplikasi

### 1. Profile
Halaman profil yang menampilkan informasi diri, statistik profil, dan pengalaman.

Fitur:
- Menampilkan foto profil dan informasi diri.
- Menampilkan statistik profil.
- Menampilkan daftar pengalaman menggunakan `ExperienceCard`.
- Menggunakan `SingleChildScrollView` agar halaman dapat digulir.
- Menampilkan notifikasi menggunakan `SnackBar` melalui tombol interaksi.

### 2. Skills
Halaman untuk menampilkan keterampilan dan teknologi yang dipelajari.

Kategori keterampilan:
- **Bahasa Pemrograman:** menampilkan daftar bahasa pemrograman.
- **Framework:** menampilkan daftar framework.
- **Database:** menampilkan daftar database.

Fitur:
- Navigasi kategori menggunakan `TabBar`.
- Menampilkan konten setiap kategori menggunakan `TabBarView`.
- Menampilkan daftar keterampilan dalam bentuk grid.
- Menggunakan gambar untuk merepresentasikan setiap teknologi.

### 3. Projects
Halaman yang menampilkan kumpulan proyek yang pernah dibuat.

Daftar proyek:
- **Taraka Cafe Management System** — aplikasi manajemen kafe.
- **VoltaKits** — sistem penjualan jersey dan pengelolaan stok.
- **MBTI Test Kepribadian Desktop** — aplikasi desktop untuk mengidentifikasi tipe kepribadian MBTI.

Informasi yang ditampilkan:
- Nama proyek.
- Deskripsi proyek.
- Teknologi yang digunakan.
- Gambar proyek.

Fitur:
- Menampilkan proyek dalam bentuk grid.
- Menggunakan `GridView.builder` untuk membuat daftar kartu proyek.
- Menggunakan gambar dari assets lokal.

 ### 4. Bottom Navigation Bar

Aplikasi menggunakan `BottomNavigationBar` untuk memudahkan pengguna berpindah antarhalaman tanpa harus membuka halaman baru secara manual.

**Menu navigasi:**
- **Profile:** menampilkan informasi profil, statistik, dan pengalaman.
- **Skills:** menampilkan keterampilan pemrograman, framework, dan database.
- **Projects:** menampilkan kumpulan proyek beserta deskripsi, teknologi, dan gambar.

**Fitur:**
- Navigasi antarhalaman melalui menu di bagian bawah layar.
- Menampilkan ikon dan label pada setiap menu.
- Menandai menu yang sedang aktif.
- Mengelola perpindahan halaman melalui perubahan indeks menu yang dipilih.

**Widget yang digunakan:**
- `Scaffold` — menyediakan struktur dasar halaman aplikasi.
- `BottomNavigationBar` — menampilkan menu navigasi di bagian bawah layar.
- `BottomNavigationBarItem` — mendefinisikan ikon dan label setiap menu.
- `setState()` — memperbarui tampilan ketika pengguna memilih menu lain.

## 🧩 Widget yang Digunakan

Proyek ini menerapkan konsep pemisahan widget (*Extract Widget*) untuk membuat kode lebih terstruktur, mudah dibaca, dan dapat digunakan kembali.

### Widget pada Halaman Profile

| Widget | Fungsi |
|---|---|
| `ProfileAvatar` | Menampilkan foto atau avatar profil. |
| `ProfileInfo` | Menampilkan informasi diri. |
| `ProfileStats` | Menampilkan statistik profil. |
| `ExperienceCard` | Menampilkan informasi pengalaman dalam bentuk kartu. |

### Widget pada Halaman Skills

| Widget | Fungsi |
|---|---|
| `SkillsCard` | Mengatur halaman keterampilan beserta kategori yang tersedia. |
| `SkillCard` | Menampilkan satu keterampilan beserta gambar dan namanya. |
| `SkillGrid` | Menampilkan kumpulan keterampilan dalam bentuk grid. |

### Widget pada Halaman Projects

| Widget | Fungsi |
|---|---|
| `ProjectGua` | Mengatur halaman utama kumpulan proyek. |
| `ProjectGrid` | Menampilkan kumpulan proyek menggunakan `GridView.builder`. |
| `ProjectCard` | Menampilkan satu kartu proyek yang berisi gambar, nama, deskripsi, dan teknologi. |

## 📂 Struktur Folder

Struktur folder utama yang digunakan dalam proyek ini:

```text
lib/
├── main.dart
├── profil_page.dart
├── skills_page.dart
├── project_page.dart
└── widgets/
    ├── experience_card.dart
    ├── profile_stats.dart
    ├── skill_card.dart
    ├── skill_grid.dart
    ├── project_card.dart
    └── project_grid.dart
```

Folder `lib/` berisi kode utama aplikasi dan halaman-halamannya, sedangkan folder `lib/widgets/` menyimpan widget yang dipisahkan dari halaman utama.

## 🛠️ Teknologi yang Digunakan

- **Flutter** — framework untuk pengembangan aplikasi mobile.
- **Dart** — bahasa pemrograman yang digunakan dalam pengembangan aplikasi.
- **Material Design** — komponen antarmuka pengguna melalui Flutter Material.
- **Assets lokal** — menyimpan gambar profil, teknologi, dan proyek.

## 🎯 Tujuan Pembelajaran

Proyek ini bertujuan untuk mempelajari dan mempraktikkan:

- Pembuatan antarmuka menggunakan widget Flutter.
- Penggunaan `StatelessWidget`.
- Penggunaan `Scaffold`, `AppBar`, `Column`, dan `Padding`.
- Penggunaan `GridView.builder` untuk menampilkan data.
- Penggunaan `TabBar` dan `TabBarView`.
- Penggunaan `ListView.builder` untuk menampilkan daftar.
- Penggunaan `SnackBar` untuk menampilkan notifikasi.
- Pengelolaan gambar menggunakan assets.
- Penerapan konsep *Extract Widget* untuk memisahkan komponen antarmuka.
- Penggunaan parameter untuk mengirim data antarwidget.

## 🚀 Menjalankan Aplikasi

Pastikan Flutter dan Dart sudah terpasang di komputer.

1. Clone atau unduh repository proyek.
2. Buka folder proyek melalui terminal.
3. Jalankan perintah berikut untuk mengunduh dependensi:

   ```bash
   flutter pub get
   ```

4. Jalankan aplikasi:

   ```bash
   flutter run
   ```

## 📚 Referensi

- [Flutter Documentation](https://docs.flutter.dev/)
- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)

---

Dikembangkan sebagai bagian dari pembelajaran Flutter pada pertemuan ke-5.
