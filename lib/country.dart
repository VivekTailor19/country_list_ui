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
    "SWITZERLAND",
    "DENMARK",
    "SPAIN",
    "SINGAPORE",
    "MEXICO",
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
    "🇨🇭 ",
    "🇩🇰 ",
    "🇪🇸 ",
    "🇸🇬 ",
    "🇲🇽 ",
  ];
  List col = [
    [Colors.lightBlueAccent, Colors.pinkAccent],
    [Colors.black12, Colors.tealAccent],
    [Colors.yellow, Colors.amber],
    [Colors.lightBlueAccent, Colors.pinkAccent],
    [Colors.black12, Colors.tealAccent],
    [Colors.yellow, Colors.amber],
    [Colors.lightBlueAccent, Colors.pinkAccent],
    [Colors.black12, Colors.tealAccent],
    [Colors.yellow, Colors.amber],
    [Colors.lightBlueAccent, Colors.pinkAccent],
    [Colors.black12, Colors.tealAccent],
    [Colors.yellow, Colors.amber],
    [Colors.lightBlueAccent, Colors.pinkAccent],
    [Colors.black12, Colors.tealAccent],
    [Colors.yellow, Colors.amber],
    [Colors.lightBlueAccent, Colors.pinkAccent],

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(
          Icons.list_alt_sharp,
          size: 30,
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
          children: //i++   0    0
              flag
                  .map((e) => listWidget(e, country[i], col[i++])) //col[i++]
                  .toList(), // ++i   0    1
        ),
      ),
    );
  }

  Widget listWidget(dynamic flag, dynamic country, List<Color> c1) {
    return  Column(
      children: [
        SizedBox(height: 8,),
        Container(

            height: 40,
            width: double.infinity,

            decoration: BoxDecoration(gradient: LinearGradient(colors: c1),borderRadius: BorderRadius.circular(10)),
            //color: col,
            alignment: Alignment.center,
            child: Text(
              "$flag $country",
              style: TextStyle(fontSize: 35, color: Colors.white),

          ),
        ),
      ],
    );
  }
}
