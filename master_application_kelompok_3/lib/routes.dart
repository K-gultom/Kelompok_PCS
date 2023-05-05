import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/chat.dart';
import 'package:master_application_kelompok_3/firstscreen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => firstscreen()
          );

        case'/chat':
        return MaterialPageRoute(
          builder: (_) => ChatPage()
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