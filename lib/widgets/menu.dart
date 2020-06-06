import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {


  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Lisa.jpg'),
            ),
            accountEmail: Text('sutinun.a@gmail.com'),
            accountName: Text('Sutinun Amme'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('หน้าหลัก'),
            trailing: Icon(Icons.arrow_right),
            selected: ModalRoute.of(context).settings.name == 'homestack/home',
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/', (route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('สินค้า'),
            trailing: Icon(Icons.arrow_right),
            selected: ModalRoute.of(context).settings.name == 'productstack/product',
            onTap: () {
              Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil('/productstack', (route) => false);
            },
          )
        ],
      ),
    );
  }
}
