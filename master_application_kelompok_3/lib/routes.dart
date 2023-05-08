import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/home.dart';
import 'package:master_application_kelompok_3/pesanansaya.dart';
import 'package:master_application_kelompok_3/test.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => home());
      case '/pesanansaya':
        return MaterialPageRoute(builder: (_) => PesananSaya());

        
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center( child: Text('Error Page')),
      );
    });
  }
}