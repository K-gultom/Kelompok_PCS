import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/home.dart';
import 'package:master_application_kelompok_3/pesanansaya.dart';
import 'package:master_application_kelompok_3/bayar.dart';
import 'package:master_application_kelompok_3/layanan.dart';
import 'package:master_application_kelompok_3/menu_layanan/gantiaki.dart';
import 'package:master_application_kelompok_3/menu_layanan/gantiban.dart';
import 'package:master_application_kelompok_3/menu_layanan/serviskaki.dart';
import 'package:master_application_kelompok_3/menu_layanan/perbaikandarurat.dart';
import 'package:master_application_kelompok_3/menu_layanan/perbaikanmesin.dart';
import 'package:master_application_kelompok_3/menu_layanan/serviceberkala.dart';
import 'package:master_application_kelompok_3/menu_layanan/servisac.dart';
import 'package:master_application_kelompok_3/profil.dart';
import 'package:master_application_kelompok_3/OrderHistoryScreen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => home());
        
      case '/pesanansaya':
        return MaterialPageRoute(builder: (_) => PesananSaya());

      case '/bayar':
        return MaterialPageRoute(builder: (_) => Bayar());

      case '/layanan':
          return MaterialPageRoute(builder: (_) => LayananScreen());

      case '/service-berkala':
          return MaterialPageRoute(builder: (_) => ServiceBerkalaScreen());

    case '/ganti-ban':
        return MaterialPageRoute(builder: (_) => GantiBanScreen());
        
    case '/perbaikan-darurat':
          return MaterialPageRoute(
          builder: (_) => PerbaikanDaruratScreen()
          );
    case '/perbaikan-mesin':
          return MaterialPageRoute(
          builder: (_) => PerbaikanMesinScreen()
          );
    case '/servis-ac':
          return MaterialPageRoute(
          builder: (_) => ServicACScreen()
          );
    case '/profil':
          return MaterialPageRoute(
          builder: (_) => ProfilePage()
          );
    case '/orderhistoryscreen':
          return MaterialPageRoute(
          builder: (_) => OrderHistoryScreen()
          );

    default:
          return _errorRoute();  
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center( child: Text('Halaman Eror')),
      );
    });
  }
}