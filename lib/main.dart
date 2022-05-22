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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NagaoPage()));
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
        ],
      ),
    );
  }
}

class NagaoPage extends StatefulWidget {
  const NagaoPage({Key? key}) : super(key: key);

  @override
  _NagaoPageState createState() => _NagaoPageState();
}

class _NagaoPageState extends State<NagaoPage> {
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
