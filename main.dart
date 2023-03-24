import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(
        title: 'Todos',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get padding => null;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 20)),
            Icon(Icons.list_alt),
            Text('Keterangan'),
            Padding(padding: EdgeInsets.only(left: 20)),
            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Judul Kegiatan',
                ),
              ),
            ),
          ]),
          Column(children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Icon(Icons.sort),
                Text('Keterangan'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Tambah Keterangan',
                    ),
                  ),
                ),
              ],
            )
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Padding(padding: EdgeInsets.only(left: 20)),
            Icon(Icons.calendar_month),
            Text('Tanggal Mulai'),
            Padding(padding: EdgeInsets.only(left: 60)),
            Icon(Icons.calendar_month),
            Text('Tanggal Selesai')
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 40)),
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: '20-03-2022           20-03-2022',
                ),
              ),
            )
          ]),
          Container(
            child: Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  width: 130,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Batal'),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Batal'),
                  ),
                )
              ],
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
