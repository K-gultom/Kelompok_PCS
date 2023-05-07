import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DOKTER MOBIL'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // jumlah kolom
        children: [
          _buildButton('Layanan', Icons.directions_car, context),
          _buildButton('Pomo', Icons.shopping_cart, context),
          _buildButton('Lokasi Bengkel', Icons.location_on, context),
          _buildButton('Pesanan Saya', Icons.local_offer, context),
          _buildButton('Riwayat Pemesanan', Icons.history, context),
          _buildButton('Profil', Icons.person, context),
        ],
      ),
    );
  }

  Widget _buildButton(String title, IconData icon, BuildContext context) {
    Color color;
    if (title == 'Layanan') {
      color = Colors.red;
    } else if (title == 'Promo') {
      color = Colors.blue;
    } else if (title == 'Lokasi Bengkel') {
      color = Colors.green;
    } else if (title == 'Pesanan Saya') {
      color = Colors.pink;
    } else if (title == 'Riwayat Pemesanan') {
      color = Colors.purple;
    } else {
      color = Colors.orange;
    }

    return Container(
      margin: EdgeInsets.all(25.0),
      child: ElevatedButton(
        onPressed: () {
          // aksi ketika tombol ditekan
          if (title == 'Layanan') {
            Navigator.pushNamed(context, '/layanan');
          } else if (title == 'Pesanan Saya') {
            Navigator.pushNamed(context, '/Pesanan-Saya');
          } else if (title == 'Lokasi Bengkel') {
            Navigator.pushNamed(context, '/lokasi-bengkel');
          } else if (title == 'Promo') {
            Navigator.pushNamed(context, '/promo');
          } else if (title == 'Riwayat Pemesanan') {
            Navigator.pushNamed(context, '/riwayat-pemesanan');
          } else {
            Navigator.pushNamed(context, '/profil');
          }
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
