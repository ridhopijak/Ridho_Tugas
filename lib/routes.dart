import 'package:flutter/material.dart';
import 'screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/Profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/contact':
        return MaterialPageRoute(builder: (_) => Contact());
      case '/Galeri':
        return MaterialPageRoute(builder: (_) => Galeri());
      case '/setting':
        return MaterialPageRoute(builder: (_) => Setting());

      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
