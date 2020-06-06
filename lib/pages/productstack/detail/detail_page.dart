import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('detail'),),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ProductDetail', style: Theme.of(context).textTheme.headline3,),
           
          ],
        ),
      ),
    );
  }
}