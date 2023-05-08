import 'dart:ui';

import 'package:flutter/material.dart';

class PesananSaya extends StatefulWidget {
  @override
  _PesananSayaPage createState() => _PesananSayaPage();
}

class _PesananSayaPage extends State<PesananSaya> {
  final List<Map<String, dynamic>> _pesanan = [
    {
      'gambar': 'assets/images/ig.png',
      'nama': 'Produk 1',
      'jumlah': 2,
      'bayar' : false,
    },
    {
      'gambar': 'assets/images/ig.png',
      'nama': 'Produk 2',
      'jumlah': 1,
      'bayar' : false,
    },
    {
      'gambar': 'assets/images/ig.png',
      'nama': 'Produk 3',
      'jumlah': 3,
      'bayar' : false,
    },
    {
      'gambar': 'assets/images/ig.png',
      'nama': 'Produk 3',
      'jumlah': 3,
      'bayar' : false,
    },
    {
      'gambar': 'assets/images/ig.png',
      'nama': 'Produk 3',
      'jumlah': 3,
      'bayar' : false,
    },
  ];

  bool _semuaTerpilih = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            Text('Pesanan Saya'),
            SizedBox(width: 12),
            Icon(Icons.local_offer),
            
          ],
        )
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _pesanan.length,
              itemBuilder: (context, index) {
                final pesanan = _pesanan[index];
                return ListTile(
                  leading: Image.asset(pesanan['gambar']),
                  title: Text(pesanan['nama']),
                  subtitle: Text('Jumlah: ${pesanan['jumlah']}'),
                  trailing: Checkbox(
                    value: pesanan['bayar'], 
                    onChanged: (value){
                      setState(() {
                        pesanan['bayar'] = value;
                      });
                    }
                  )
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Aksi yang dijalankan ketika tombol pembayaran ditekan
              },
              child: Center(
                child: Text('Bayar Semua'),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 0),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                elevation: 0,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: Theme.of(context).accentColor,
                foregroundColor: Colors.white,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                alignment: Alignment.centerLeft,
                
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
