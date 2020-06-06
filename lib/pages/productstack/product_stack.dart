import 'package:flutter/material.dart';
import 'package:flutterapp/pages/productstack/product/product_page.dart';
import 'package:flutterapp/pages/productstack/detail/detail_page.dart';

class ProductStack extends StatelessWidget {
  const ProductStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'productstack/product',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'productstack/product':
            builder = (BuildContext _) => ProductPage();
            break;
            case 'productstack/detail':
            builder = (BuildContext _) => ProductDetailPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}