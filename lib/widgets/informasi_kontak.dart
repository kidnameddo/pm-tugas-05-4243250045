import 'package:flutter/material.dart';

class InformasiKontak extends StatelessWidget {
  const InformasiKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Alamat'),
            subtitle: Text('Jl. Setia Budi No. 45, Medan'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.phone_outlined),
            title: Text('WhatsApp'),
            subtitle: Text('+62 812 3456 7890'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.schedule_outlined),
            title: Text('Jam operasional'),
            subtitle: Text('Setiap hari, 08.00 - 21.00 WIB'),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.camera_alt_outlined),
            title: Text('Instagram'),
            subtitle: Text('@dapurmelayu.medan'),
          ),
        ],
      ),
    );
  }
}
