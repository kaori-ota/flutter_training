import 'package:flutter/material.dart';

import 'package:flutterapp/pages/homestack/home_stack.dart';
import 'package:flutterapp/pages/productstack/product_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        //primarySwatch: Colors.red,
        primaryColor: Colors.red[700],
        accentColor: Colors.lightGreenAccent[200],
        canvasColor: Colors.grey[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline3: TextStyle(
            color: Colors.red
          )
        )
      ),
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (context) => HomeStack(),
        '/productstack': (context) => ProductStack(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}