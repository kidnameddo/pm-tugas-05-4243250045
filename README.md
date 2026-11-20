# Dapur Melayu Medan

## A. Identitas

- **Nama aplikasi:** Dapur Melayu Medan
- **Nama UMKM:** Dapur Melayu Medan (konsep bisnis fiktif)
- **Deskripsi singkat:** Aplikasi menu satu halaman yang menampilkan profil, kontak, dan pilihan kuliner Medan.
- **Teknologi:** Flutter, Dart, Material Design 3, dan VS Code

## B. Fitur

- Dukungan tema terang dan gelap melalui tombol pada AppBar.
- Header profil UMKM beserta gambar dan deskripsi.
- Informasi alamat, WhatsApp, jam operasional, dan Instagram.
- Enam menu kuliner Medan dengan nama, harga Rupiah, kategori, dan gambar.
- Tombol favorit individu pada setiap menu.
- Favorite menampilkan ikon hati berisi atau kosong dan memunculkan SnackBar.

## C. Struktur Widget Tree

```text
MaterialApp
└── AplikasiKuliner
    └── HalamanMenu
        └── Scaffold
            ├── AppBar
            └── Body
                └── SingleChildScrollView
                    └── Column
                        ├── HeaderUsaha
                        ├── InformasiKontak
                        └── Daftar KartuMenu
                            ├── KartuMenu
                            │   └── TombolFavorit
                            └── ...
```

## D. Stateless dan Stateful

- `AplikasiKuliner` menggunakan `StatefulWidget` untuk menyimpan `ThemeMode` dan memperbaruinya melalui `setState()`.
- `HalamanMenu`, `HeaderUsaha`, `InformasiKontak`, dan `KartuMenu` menggunakan `StatelessWidget` karena tampilannya berasal dari parameter dan tema.
- `TombolFavorit` menggunakan `StatefulWidget` karena ikon dan status favorit berubah saat ditekan.
- Status favorit diisolasi pada setiap instance `TombolFavorit`, sehingga menyukai satu menu tidak mengubah status menu lain.
- Memisahkan state pada widget kecil membuat pembaruan UI lebih terarah dan halaman utama tetap sederhana.

## E. Widget Tree, Element Tree, dan Render Tree

Widget tree adalah konfigurasi atau rancangan antarmuka yang dibuat oleh kode. Misalnya, `MaterialApp` membentuk `HalamanMenu`, `Scaffold`, `AppBar`, `HeaderUsaha`, `InformasiKontak`, dan kumpulan `KartuMenu`. Rancangan tersebut tidak langsung menggambar layar, tetapi menjadi instruksi bagi Flutter untuk membuat struktur UI.

Element tree adalah struktur instan yang dipertahankan oleh Flutter selama aplikasi berjalan. Setiap widget memiliki elemen yang menghubungkannya dengan widget lain, konteks, layout, dan state. Pada `TombolFavorit`, `State` disimpan oleh elemen sehingga status `_favorit` tetap ada meskipun widget dibangun ulang. Ketika `_themeMode` atau `_favorit` berubah, `setState()` menandai bagian yang perlu dibangun ulang, lalu Flutter memperbarui elemen yang bersangkutan.

Render tree berisi objek render yang bertanggung jawab atas ukuran, posisi, tata letak, dan penggambaran. Elemen meneruskan hasil build menjadi objek render, misalnya untuk menata `SingleChildScrollView`, `Card`, `Row`, `ListTile`, dan `Chip`. Render objek menghitung ruang yang tersedia, menempatkan gambar serta teks, lalu melukisnya ke layar.

Ketiga struktur bekerja berurutan dan saling berhubungan: widget tree mendeskripsikan UI, element tree mempertahankan hubungan dan state, sedangkan render tree melakukan layout dan painting. Dalam aplikasi ini, `KartuMenu` merupakan widget konfigurasi statis, sedangkan `TombolFavorit` mempertahankan state lokal dan mewarnai serta mengganti ikon favoritnya pada render tree.

## F. Cara Menjalankan

```bash
flutter pub get
flutter run
flutter test
flutter analyze
```

Jika Windows menolak menjalankan `flutter_tester.exe` atau `impellerc.exe`, periksa detail pemblokiran pada Windows Security dan pastikan Flutter SDK berasal dari sumber tepercaya. Hindari menonaktifkan Smart App Control, WDAC, atau proteksi keamanan lain sebagai langkah rutin. Jika kebijakan organisasi atau perangkat membatasi eksekusi, hubungi administrator untuk meminta pemeriksaan atau izin yang sesuai. Setelah perubahan kebijakan, jalankan kembali pengujian.

## G. Pernyataan Penggunaan AI

Implementasi dan dokumentasi ini dibantu oleh AI sebagai alat pendamping pengembangan. Pemeriksaan hasil, kompilasi, dan penyesuaian akhir tetap dilakukan dalam proses pengembangan proyek.

## H. Status Validasi

- `flutter pub get`: berhasil.
- `flutter test`: berhasil, dengan satu widget test favorit yang lulus.
- `flutter analyze`: dijalankan pada Flutter SDK 3.50.1; tidak ada error atau warning. Terdapat tujuh informasi bahwa `package:flutter/material.dart` ditandai deprecated oleh SDK 3.50.1 dan menyarankan package baru yang belum tersedia sebagai paket material_lokal pada proyek ini. Package tersebut tetap perlu dipertahankan agar kompatibel dengan rilis Flutter biasa.
