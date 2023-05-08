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
      'nama': 'Product 1',
      'jumlah': 1,
      'bayar': false,
    },
    {
      'gambar': '../assets/images/car.png',
      'nama': 'Product 2',
      'jumlah': 1,
      'bayar': false,
    },
    {
      'gambar': '../assets/images/oli.png',
      'nama': 'Product 3',
      'jumlah': 1,
      'bayar': false,
    },
    {
      'gambar': '../assets/images/service.png',
      'nama': 'Product 4',
      'jumlah': 1,
      'bayar': false,
    },
    {
      'gambar': '../assets/images/ban.png',
      'nama': 'Product 5',
      'jumlah': 1,
      'bayar': false,
    },
  ];

  bool _semuaTerpilih = false;

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
                'Item list', // Text yang ditampilkan pada tombol
                style: TextStyle(
                  fontSize: 22, // Ukuran font text
                  fontWeight: FontWeight.bold, // Bold text
                  color: Color.fromARGB(255, 0, 0, 0), // Warna text
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20.0,
          ),

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
                        Text('Jumlah:'),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              pesanan['jumlah']--;
                            });
                          },
                        ),
                        Text(pesanan['jumlah'].toString()),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              pesanan['jumlah']++;
                            });
                          },
                        ),
                      ],
                    ),
                    trailing: Checkbox(
                        value: pesanan['bayar'],
                        onChanged: (value) {
                          setState(() {
                            pesanan['bayar'] = value;
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
