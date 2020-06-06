import 'package:flutter/material.dart';
import 'package:flutterapp/pages/homestack/home/home.dart';
import 'package:flutterapp/pages/homestack/company/company_page.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({Key key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'homestack/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'homestack/home':
            builder = (BuildContext _) => HomePage();
            break;
            case 'homestack/company':
            builder = (BuildContext _) => CompanyPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}