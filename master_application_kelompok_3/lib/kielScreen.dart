import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class KielScreen extends StatelessWidget {
  const KielScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Profil Yehezkiel'),
      ),
      body: Container(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(),
            SizedBox(height: 100),
            ClipOval(
              child: Image(
              width: 250,
              height: 250,
              image: AssetImage('assets/images/kiel.jpg'),
              fit: BoxFit.cover),
            ),

            // Image.asset('assets/images/kiel.jpg',
            //   height: 30,
            //   width: 30,
            // ),
            SizedBox(height: 20,),
            Text(
              'Yehezkiel Gultom',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),


            
            SizedBox(height: 10),
            Text(
              'yehezkielgg28@gmail.com',
              style: Theme.of(context).textTheme.bodyText2,
            ),

            SizedBox(height: 10),
            Text(
              'github.com/K-gultom',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            
            SizedBox(height: 10),
            Text(
              'Sukabangun 2, Soak Simpur',
              style: Theme.of(context).textTheme.bodyText2,
            ),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
