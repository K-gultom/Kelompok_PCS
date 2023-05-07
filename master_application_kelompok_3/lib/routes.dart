import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/home.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => home()
          );

        
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