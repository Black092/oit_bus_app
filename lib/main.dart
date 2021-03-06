import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NextBusPage(),
    );
  }
}

class NextBusPage extends StatefulWidget {
  const NextBusPage({Key? key}) : super(key: key);

  @override
  _NextBusPageState createState() => _NextBusPageState();
}

class _NextBusPageState extends State<NextBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('次のバス'),
        //centerTitle: true,
      ),
      body: ListView(
        children: [
          // Card-1
          Card(
            child: InkWell(
              onTap: () {
                //debugPrint('Card tapped.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NagaoKitayamaPage()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.directions_bus_filled,
                  color: Colors.teal,
                ),
                title: Text('長尾駅 → 北山中央'),
                subtitle: Text('Nagao Station → Kitayama Chuo'),
              ),
            ),
          ),
          // Card-2
          Card(
            child: InkWell(
              onTap: () {
                //debugPrint('Card tapped.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KitayamaNagaoPage()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.directions_bus_filled,
                  color: Colors.teal,
                ),
                title: Text('北山中央 → 長尾駅'),
                subtitle: Text('Kitayama Chuo → Nagao Station'),
              ),
            ),
          ),
          // Card-3
          Card(
            child: InkWell(
              onTap: () {
                //debugPrint('Card tapped.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KuzuhaKitayamaPage()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.directions_bus_filled,
                  color: Colors.teal,
                ),
                title: Text('樟葉駅 → 北山中央'),
                subtitle: Text('Kuzuha Station → Kitayama Chuo'),
              ),
            ),
          ),
          // Card-4
          Card(
            child: InkWell(
              onTap: () {
                //debugPrint('Card tapped.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KitayamaKuzuhaPage()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.directions_bus_filled,
                  color: Colors.teal,
                ),
                title: Text('北山中央 → 樟葉駅'),
                subtitle: Text('Kitayama Chuo → Kuzuha Station'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NagaoKitayamaPage extends StatefulWidget {
  const NagaoKitayamaPage({Key? key}) : super(key: key);

  @override
  _NagaoKitayamaPageState createState() => _NagaoKitayamaPageState();
}

class _NagaoKitayamaPageState extends State<NagaoKitayamaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('長尾駅 → 北山中央'),
        //centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: const Text("  - 摂南大学行き (ノンストップバス) -  "),
          ),
          const Text("05時 :"),
          const Text("06時 : 27"),
          const Text("07時 : 02 31"),
          const Text("08時 : 02 19 (23) (27) 35 (40) (46) (50) (54) 59"),
          const Text("09時 : 08 (19)"),
          const Text("10時 : 13 (26) (38) 43 (53)"),
          const Text("11時 : 13 (28) (58)"),
          const Text("12時 : 13 (28) (43)"),
          const Text("13時 : (08) 13 (28) (52)"),
          const Text("14時 : 13 (43)"),
          const Text("15時 : 13 (32) (41)"),
          const Text("16時 : (09) 13"),
          const Text("17時 : 13 57"),
          const Text("18時 : 16 36 51"),
          const Text("19時 : 06 18 41"),
          const Text("20時 : 01 30"),
          const Text("21時 : 07"),
          const Text("22時 : 02"),
          const Text("23時 : "),
          const Text("24時 : "),
          const Text("備考：()はノンストップバス"),
        ],
      ),
    );
  }
}

class KitayamaNagaoPage extends StatefulWidget {
  const KitayamaNagaoPage({Key? key}) : super(key: key);

  @override
  _KitayamaNagaoPageState createState() => _KitayamaNagaoPageState();
}

class _KitayamaNagaoPageState extends State<KitayamaNagaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('北山中央 → 長尾駅'),
        //centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: const Text("  - 長尾駅行き (ノンストップバス) -  "),
          ),
          const Text("05時 :"),
          const Text("06時 : 31 49"),
          const Text("07時 : 08 27 41"),
          const Text("08時 : 02 31 (34) (38)"),
          const Text("09時 : 00 (04) 15 45"),
          const Text("10時 : (42) 45"),
          const Text("11時 : (12) (42) 45"),
          const Text("12時 : (12) 45 (52)"),
          const Text("13時 : (03) (27) (38) 45"),
          const Text("14時 : (31) 45"),
          const Text("15時 : (19) (29) (43) 45 (59)"),
          const Text("16時 : (25) 29 (44) 45"),
          const Text("17時 : (10) (14) 27 (40) 54"),
          const Text("18時 : (10) 25 40 55"),
          const Text("19時 : 10 24 54"),
          const Text("20時 : (10) 28"),
          const Text("21時 : 34"),
          const Text("22時 : "),
          const Text("23時 : "),
          const Text("24時 : "),
          const Text("備考：()はノンストップバス"),
        ],
      ),
    );
  }
}

class KuzuhaKitayamaPage extends StatefulWidget {
  const KuzuhaKitayamaPage({Key? key}) : super(key: key);

  @override
  _KuzuhaKitayamaPageState createState() => _KuzuhaKitayamaPageState();
}

class _KuzuhaKitayamaPageState extends State<KuzuhaKitayamaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('樟葉駅 → 北山中央'),
        //centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: const Text("  - 北山中央行き -  "),
          ),
          const Text("05時 :"),
          const Text("06時 : 48"),
          const Text("07時 : 05 25 42 51"),
          const Text("08時 : 01 13 20 22 30 (36) 44 (49）"),
          const Text("09時 : 01 12 24 34 54"),
          const Text("10時 : 02 16 22 36 54"),
          const Text("11時 : 02 14 22 36 54"),
          const Text("12時 : 02 14 22 36 54"),
          const Text("13時 : 02 14 22 36 54"),
          const Text("14時 : 02 14 22 36 54"),
          const Text("15時 : 02 14 22 36 54"),
          const Text("16時 : 02 14 22 36 54"),
          const Text("17時 : 02 14 28 38 58"),
          const Text("18時 : 08 20 28 38 48 56"),
          const Text("19時 : 08 18 21 33 43 48 56"),
          const Text("20時 : 06 16 27 37 45 57"),
          const Text("21時 : 07 17 25 35 45"),
          const Text("22時 : 08 31 47"),
          const Text("23時 : 08 22 44"),
          const Text("24時 : 13 32"),
          const Text("備考：()は学休期のみ運行、24時は深夜料金"),
        ],
      ),
    );
  }
}

class KitayamaKuzuhaPage extends StatefulWidget {
  const KitayamaKuzuhaPage({Key? key}) : super(key: key);

  @override
  _KitayamaKuzuhaPageState createState() => _KitayamaKuzuhaPageState();
}

class _KitayamaKuzuhaPageState extends State<KitayamaKuzuhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('北山中央 → 樟葉駅'),
        //centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: const Text("  - 樟葉駅行き -  "),
          ),
          const Text("05時 : 33 51"),
          const Text("06時 : 15 31 39 51"),
          const Text("07時 : 03 15 27 42"),
          const Text("08時 : 03 13 24 35 46"),
          const Text("09時 : 05 22 45"),
          const Text("10時 : 05 22 45"),
          const Text("11時 : 05 22 45"),
          const Text("12時 : 05 22 45"),
          const Text("13時 : 05 22 45"),
          const Text("14時 : 05 22 45"),
          const Text("15時 : 05 22 45"),
          const Text("16時 : 05 22 45 53"),
          const Text("17時 : 01 07 17 27 37 44 56"),
          const Text("18時 : 09 31 53"),
          const Text("19時 : 11 26 41 56"),
          const Text("20時 : 16 41"),
          const Text("21時 : 06 35 55"),
          const Text("22時 : 39"),
          const Text("23時 : "),
          const Text("24時 : "),
        ],
      ),
    );
  }
}
