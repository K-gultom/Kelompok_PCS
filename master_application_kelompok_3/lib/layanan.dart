import 'package:flutter/material.dart';

class LayananScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMenuButton(
              context: context,
              title: 'Service Berkala',
              icon: Icons.car_repair,
              routeName: '/service-berkala',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Servis Kaki-Kaki',
              icon: Icons.build,
              routeName: '/serviskakikaki',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Servis & Ganti Aki',
              icon: Icons.battery_alert,
              routeName: '/ganti-aki',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Ganti Ban',
              icon: Icons.directions_car_filled_sharp,
              routeName: '/ganti-ban',
            ),
             SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Perbaikan Darurat Dijalan',
              icon: Icons.car_crash,
              routeName: '/perbaikan-darurat',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Perbaikan Mesin',
              icon: Icons.miscellaneous_services,
              routeName: '/perbaikan-mesin',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Servis AC',
              icon: Icons.ac_unit,
              routeName: '/servis-ac',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String routeName,
  }) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      icon: Icon(icon),
      label: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Theme.of(context).primaryColor,
        elevation: 3.0,
        minimumSize: Size(double.infinity, 64.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
