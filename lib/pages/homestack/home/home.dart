import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/logo.dart';
import 'package:flutterapp/widgets/menu.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'CCT';
  bool istoggle = false;

  @override
  void initState() {
    super.initState();
    print('init HomePage');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('Change');
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('Update');
  }

  @override
  Widget build(BuildContext context) {
    print('init Build');
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: const Logo(),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('$title', style: Theme.of(context).textTheme.headline3,),
      //       RaisedButton(
      //         child: Text('Click Me'),
      //         onPressed: () {
      //           setState(() {
      //             istoggle = !istoggle;
      //             istoggle ? title = 'CCT' : title = 'Click';
      //           });
      //         },
      //       ),
      //       RaisedButton(
      //         child: Text('Company'),
      //         onPressed: () {
      //           Navigator.pushNamed(context, 'homestack/company');
      //         },
      //       )
      //     ],
      //   ),
      // ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: <Widget>[
          GestureDetector(
            onTap: () => {
              Navigator.pushNamed(context, 'homestack/company')
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.account_balance,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'บริษัท',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              color: Colors.blue[700],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Map<String, dynamic> product = {
    'name': 'Coke',
    'price': 50
  };

  var fullName;

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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${fullName ?? "สวัสดี"}'),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          Text(
            'Name: ${product['name']} Price: ${product['price']}'
          ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add, color: Colors.white, size: 30,),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
