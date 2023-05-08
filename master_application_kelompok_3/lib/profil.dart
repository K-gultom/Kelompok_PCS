import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://www.example.com/profile.jpg',
                ),
              ),
              SizedBox(height: 24),
              Text(
                'M Rudiansyah',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'arudi8451@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Akun'),
                    subtitle: Text('M Rudiansyah'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('arudi8451@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Telepon'),
                    subtitle: Text('089561041377'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Alamat'),
                    subtitle: Text('Jl. Jend. Basuki Rachmat,Talang Aman, Kec. Kemuning, Kota Palembang, Sumatera Selatan'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
