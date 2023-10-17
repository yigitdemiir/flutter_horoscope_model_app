// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_burc_projesi/horoscope_model.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final HoroscopeModel horoscope;
  const HoroscopeDetail({required this.horoscope});

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appBarColor = Colors.transparent;
  PaletteGenerator? _generator;

  @override
  void initState() {
    super.initState();
    getAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: CustomScrollView(
        // ignore: prefer_const_literals_to_create_immutables
        slivers: [
          SliverAppBar(
            backgroundColor: appBarColor,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.horoscope.horoscopeName} Burcu ve Özellikleri"),
              background: Image.asset(
                "images/${widget.horoscope.horoscopeBigPic}",
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(
                  widget.horoscope.horoscopeDetail,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void getAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.horoscope.horoscopeBigPic}"));
    appBarColor = _generator!.dominantColor!.color;

    setState(() {});
  }
}
