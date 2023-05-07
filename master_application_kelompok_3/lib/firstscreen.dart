import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/kielScreen.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Home'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(),

            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/test');
              },
              child: Text("Profil Yehezkiel"),
            ),
            SizedBox(height: 20.0,),

            ElevatedButton(
              onPressed: () {
                // Aksi yang dijalankan ketika tombol ditekan
                 Navigator.pushNamed(context, '/kiel');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Warna latar belakang tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Membuat sudut tombol melengkung
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 36, // Tinggi tombol
                  horizontal: 24, // Lebar tombol
                ),
              ),
              child: Text(
                'Klik Saya', // Text yang ditampilkan pada tombol
                style: TextStyle(
                  fontSize: 16, // Ukuran font text
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.white, // Warna text
                ),
              ),
            ),


            SizedBox(height: 20),

            
          ],
        )
      )
    );
  }
}