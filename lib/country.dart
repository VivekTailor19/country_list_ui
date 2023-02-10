import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  const Country({Key? key}) : super(key: key);

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  int i = 0;
  List country = [
    "INDIA",
    "RUSSIA",
    "USA",
    "JAPAN",
    "CHINA",
    "ENGLAND",
    "IRELAND",
    "CANADA",
    "ISRAIL",
    "NEPAL",
    "MALAYSIA",
  ];
  List flag = [
    "🇮🇳 ",
    "🇷🇺 ",
    "🇺🇸 ",
    "🇯🇵 ",
    "🇨🇳",
    "🇬🇧 ",
    "🇮🇪 ",
    "🇨🇦 ",
    "🇮🇱 ",
    "🇳🇵 ",
    "🇲🇾 ",
  ];
  List col = [
    Colors.yellow,
    Colors.green,
    Colors.yellow,
    Colors.green,
    Colors.yellow,
    Colors.green,
    Colors.yellow,
    Colors.green,
    Colors.yellow,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(
          Icons.list_alt_sharp,
          size: 25,
          color: Colors.orange,
        ),
        title: Text(
          "COUNTRY NAMES",
          style: TextStyle(wordSpacing: 10, letterSpacing: 5),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:                                                          //i++   0    0
              flag.map((e) => listWidget(e,country[i], col[i++])).toList(), // ++i   0    1
         ),
      ),
    );
  }

  Widget listWidget(dynamic flag, dynamic country, Color col) {
    return Container(
      height: 40,
      width: double.infinity,
      color: col,
      alignment: Alignment.center,
      child: Text(
        "$flag $country",
        style: TextStyle(fontSize: 20, color: Colors.amber),
      ),
    );
  }
}
