import 'package:flutter/cupertino.dart';
import 'package:flutter_burc_projesi/horoscope_model.dart';
import 'package:flutter_burc_projesi/horoscope_detail.dart';
import 'package:flutter_burc_projesi/horoscope_list.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(
          builder: (context) => HoroscopeList(),
        );
      case "/horoscopeDetail":
        final HoroscopeModel burc = settings.arguments as HoroscopeModel;
        return CupertinoPageRoute(
          builder: (context) => HoroscopeDetail(horoscope: burc),
        );
    }
    return null;
  }
}
