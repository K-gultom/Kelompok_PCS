import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Layar Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Chat"),
          onPressed: () {
            Navigator.pushNamed(context,'/chat');
          },
        ),
            ),
            
    );
  }
}