// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, empty_constructor_bodies, prefer_interpolation_to_compose_strings, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_burc_projesi/horoscope_model.dart';
import 'package:flutter_burc_projesi/horoscope_item.dart';
import 'package:flutter_burc_projesi/data/strings.dart';

class HoroscopeList extends StatelessWidget {
  late final List<HoroscopeModel> allHoroscopes;
  HoroscopeList() {
    allHoroscopes = dataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(
              horoscope: allHoroscopes[index],
            );
          },
          itemCount: allHoroscopes.length,
        ),
      ),
    );
  }

  List<HoroscopeModel> dataSource() {
    List<HoroscopeModel> temp = [];
    for (int i = 0; i < 12; i++) {
      String smallPic = Strings.HOROSCOPE_NAMES[i].toLowerCase() + "${i + 1}.png";
      String bigPic =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + "_buyuk${i + 1}.png";
      HoroscopeModel olusturulanBurc = HoroscopeModel(
          Strings.HOROSCOPE_NAMES[i],
          Strings.HOROSCOPE_DATES[i],
          Strings.HOROSCOPE_DETAILS[i],
          smallPic,
          bigPic);
      temp.add(olusturulanBurc);
    }
    return temp;
  }
}
