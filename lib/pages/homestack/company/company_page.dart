import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  CompanyPage({Key key}) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ข้อมูลบริษัท')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: AssetImage('assets/images/building.png'), fit: BoxFit.cover),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Ultimate Software', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.blue[900]),),
                    Divider(color: Colors.grey[700],)
                  ],
                ),
            ),
            )
          ],
        ),
      )
      
    );
  }
}