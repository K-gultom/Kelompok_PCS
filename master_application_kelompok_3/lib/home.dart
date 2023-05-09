import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.commute),
            SizedBox(width: 8),
            Text('DOKTER MOBIL'),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2, // jumlah kolom
        childAspectRatio: 1.3, // rasio aspek child
        padding: EdgeInsets.all(16),
        children: [
          _buildButton('Layanan', Icons.directions_car, Colors.red, context),
          _buildButton('Konsultasi', Icons.chat, Colors.blue, context),
          _buildButton('Lokasi Bengkel', Icons.location_on, Colors.green, context),
          _buildButton('Pesanan Saya', Icons.local_offer, Colors.pink, context),
          _buildButton('Riwayat Pemesanan', Icons.history, Colors.purple, context),
          _buildButton('Profil', Icons.person, Colors.orange, context),
        ],
      ),
    );
  }

  Widget _buildButton(String title, IconData icon, Color color, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // aksi ketika tombol ditekan
          if (title == 'Layanan') {
            Navigator.pushNamed(context, '/layanan');
          } else if (title == 'Pesanan Saya') {
            Navigator.pushNamed(context, '/pesanansaya');
          } else if (title == 'Konsultasi') {
            Navigator.pushNamed(context, '/konsultasi');
          } else if (title == 'Lokasi Bengkel') {
            Navigator.pushNamed(context, '/lokasi-bengkel');
          } else if (title == 'Pesanan Saya') {
            Navigator.pushNamed(context, '/pesanan-saya');
          } else if (title == 'Riwayat Pemesanan') {
            Navigator.pushNamed(context, '/orderhistoryscreen');
          } else {
            Navigator.pushNamed(context, '/profil');
          }
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: Size(double.infinity, 0),
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
