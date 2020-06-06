import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/menu.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    drawer: Menu(),
      appBar: AppBar(title: Text('Product'),),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Product', style: Theme.of(context).textTheme.headline3,),
           
          ],
        ),
      ),
    );
  }
}