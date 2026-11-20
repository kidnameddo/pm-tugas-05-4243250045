import 'package:flutter/material.dart';

import 'pages/halaman_menu.dart';

void main() {
  runApp(const AplikasiKuliner());
}

class AplikasiKuliner extends StatefulWidget {
  const AplikasiKuliner({super.key});

  @override
  State<AplikasiKuliner> createState() => _AplikasiKulinerState();
}

class _AplikasiKulinerState extends State<AplikasiKuliner> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dapur Melayu Medan',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9C3D21)),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF9C3D21),
          brightness: Brightness.dark,
        ),
      ),
      home: HalamanMenu(themeMode: _themeMode, onToggleTheme: _toggleTheme),
    );
  }
}
