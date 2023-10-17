// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_burc_projesi/horoscope_model.dart';

class HoroscopeItem extends StatelessWidget {
  final HoroscopeModel horoscope;
  const HoroscopeItem({required this.horoscope});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/horoscopeDetail",arguments: horoscope);
            },
            leading: Image.asset(
              "images/" + horoscope.horoscopeSmallPic,
            ),
            title: Text(
              horoscope.horoscopeName,
              style: myTextStyle.headline6,
            ),
            subtitle: Text(
              horoscope.horoscopeDate,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink),
          ),
        ),
      ),
    );
  }
}
