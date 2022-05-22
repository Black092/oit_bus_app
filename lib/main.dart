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
            child: const Text("  - 摂南大学行き  |  ノンストップバス -  "),
          ),
          const Text("06時 : 27"),
          const Text("07時 : 02 31"),
          const Text("08時 : 02 19 35 59  |  23 27 40 46 50 54"),
          const Text("09時 : 08  |  19"),
          const Text("10時 : 13 43  |  26 38 53"),
          const Text("11時 : 13  |  28 58"),
          const Text("12時 : 13  |  28 43"),
          const Text("13時 : 13  |  08 28 52"),
          const Text("14時 : 13  |  43"),
          const Text("15時 : 13  |  32 41"),
          const Text("16時 : 13  |  09"),
          const Text("17時 : 13 57"),
          const Text("18時 : 16 36 51"),
          const Text("19時 : 06 18 41"),
          const Text("20時 : 01 30"),
          const Text("21時 : 07"),
          const Text("22時 : 02")
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
            child: const Text("  - 長尾駅行き  |  ノンストップバス -  "),
          ),
          const Text("06時 : 31 49"),
          const Text("07時 : 08 27 41"),
          const Text("08時 : 02 31  |  34 38"),
          const Text("09時 : 00 15 45  |  04"),
          const Text("10時 : 45  |  42"),
          const Text("11時 : 45  |  12 42"),
          const Text("12時 : 45  |  12 52"),
          const Text("13時 : 45  |  03 27 38"),
          const Text("14時 : 45  |  31"),
          const Text("15時 : 45  |  19 29 43 59"),
          const Text("16時 : 29 45  |  25 44"),
          const Text("17時 : 27 54  |  10 14 40"),
          const Text("18時 : 25 40 55  |  10"),
          const Text("19時 : 10 24 54  |  "),
          const Text("20時 : 28  |  10"),
          const Text("21時 : 34"),
          const Text("22時 : ")
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
          const Text("()は学休期のみ運行"),
        ],
      ),
    );
  }
}
