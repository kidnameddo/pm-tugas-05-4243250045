import 'package:flutter/material.dart';

import '../models/menu.dart';
import '../widgets/header_usaha.dart';
import '../widgets/informasi_kontak.dart';
import '../widgets/kartu_menu.dart';

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({
    super.key,
    required this.themeMode,
    required this.onToggleTheme,
  });

  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  static const daftarMenu = <MenuItem>[
    MenuItem(
      nama: 'Soto Medan',
      harga: 28000,
      kategori: 'Berkuah',
      gambarUrl:
          'https://images.unsplash.com/photo-1547592180-85f173990554'
          '?auto=format&fit=crop&w=600&q=80',
    ),
    MenuItem(
      nama: 'Mie Gomak',
      harga: 25000,
      kategori: 'Mie',
      gambarUrl:
          'https://images.unsplash.com/photo-1569718212165-3a8278d5f624'
          '?auto=format&fit=crop&w=600&q=80',
    ),
    MenuItem(
      nama: 'Nasi Gurih Medan',
      harga: 32000,
      kategori: 'Nasi',
      gambarUrl:
          'https://images.unsplash.com/photo-1512058564366-18510be2db19'
          '?auto=format&fit=crop&w=600&q=80',
    ),
    MenuItem(
      nama: 'Bihun Bebek',
      harga: 35000,
      kategori: 'Lauk',
      gambarUrl:
          'https://images.unsplash.com/photo-1555126634-323283e090fa'
          '?auto=format&fit=crop&w=600&q=80',
    ),
    MenuItem(
      nama: 'Teh Tarik',
      harga: 12000,
      kategori: 'Minuman',
      gambarUrl:
          'https://images.unsplash.com/photo-1576092768241-dec231879fc3'
          '?auto=format&fit=crop&w=600&q=80',
    ),
    MenuItem(
      nama: 'Es Markisa',
      harga: 15000,
      kategori: 'Minuman',
      gambarUrl:
          'https://images.unsplash.com/photo-1544145945-f90425340c7e'
          '?auto=format&fit=crop&w=600&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Kuliner Medan'),
        actions: [
          IconButton(
            tooltip: isDark ? 'Aktifkan tema terang' : 'Aktifkan tema gelap',
            onPressed: onToggleTheme,
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderUsaha(),
            const SizedBox(height: 20),
            Text(
              'Informasi Usaha',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const InformasiKontak(),
            const SizedBox(height: 20),
            Text(
              'Menu Pilihan',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            for (final menu in daftarMenu) ...[
              KartuMenu(
                nama: menu.nama,
                harga: menu.harga,
                kategori: menu.kategori,
                gambarUrl: menu.gambarUrl,
              ),
              const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}
