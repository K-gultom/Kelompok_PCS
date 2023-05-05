import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Layar Pertama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Halaman Profil"),
              onPressed: () {
                Navigator.pushNamed(context, '/dwiandi');
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text("Chat"),
              onPressed: () {
               Navigator.pushNamed(context, '/chat');
              },
            ),
          ],
        ),
      ),
    );
  }
}
