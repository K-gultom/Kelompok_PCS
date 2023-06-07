import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/bayar.dart';

class PesananSaya extends StatefulWidget {
  @override
  _PesananSayaPage createState() => _PesananSayaPage();
}

class _PesananSayaPage extends State<PesananSaya> {
  final List<Map<String, dynamic>> _pesanan = [
    {
      'gambar': '../assets/images/ban.png',
      'nama': 'Ganti Ban',
      'jumlah': 1,
      'pilih': false,
      'harga' : 'Rp 3.000.000'
    },
    {
      'gambar': '../assets/images/car.png',
      'nama': 'Perbaikan Mesin',
      'jumlah': 1,
      'pilih': false,
      'harga' : 'Rp 1.500.000'
    },
    // {
    //   'gambar': '../assets/images/oli.png',
    //   'nama': 'P',
    //   'jumlah': 1,
    //   'bayar': false,
    // },
    {
      'gambar': '../assets/images/service.png',
      'nama': 'Service Berkala',
      'jumlah': 1,
      'pilih': false,
      'harga' : 'Rp 500.000'
    },
    {
      'gambar': '../assets/images/car.png',
      'nama': 'Perbaikan Mesin',
      'jumlah': 1,
      'pilih': false,
      'harga' : 'Rp 1.500.000'
    },
  ];

  // bool _semuaTerpilih = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
        children: [
            Text('Pesanan Saya'),
            SizedBox(width: 12),
            Icon(Icons.local_offer),
          ],
        )
      ),

      body: Column(
        children: [
          SizedBox(height: 10.0,),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Text(
                'Item list',
                  style: TextStyle(
                  fontSize: 22, // Ukuran font text
                  fontWeight: FontWeight.bold, // Bold text
                  color: Color.fromARGB(255, 0, 0, 0), // Warna text
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0),

          Expanded(
            child: ListView.builder(
              itemCount: _pesanan.length,
              itemBuilder: (context, index) {
                final pesanan = _pesanan[index];
                return ListTile(
                    leading: Image.asset(pesanan['gambar']),
                    title: Text(pesanan['nama']),
                    subtitle: Row(
                      children: [
                        Text('Jumlah: ' ),
                        Text(pesanan['harga']),
                      ],
                    ),
                    trailing: Checkbox(
                        value: pesanan['pilih'],
                        onChanged: (value) {
                          setState(() {
                            pesanan['pilih'] = value;
                          });
                        }));
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Aksi yang dijalankan ketika tombol pembayaran ditekan
                Navigator.pushNamed(context, '/bayar');
              },
              child: Center(
                child: Text('Bayar'),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 0),
                textStyle: TextStyle(fontSize: 20.0),
                shape: RoundedRectangleBorder(
                  //membuat border radius pada tombol
                  borderRadius: BorderRadius.circular(20),
                ),
                //ini membuat button menjadi besar (tinggi)
                padding: EdgeInsets.symmetric(vertical: 25.0), 
                elevation: 0,
                backgroundColor: Theme.of(context).accentColor,
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
