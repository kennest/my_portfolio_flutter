import 'package:flutter/material.dart';
import 'package:my_portfolio/desktop/home.dart' as DesktopHome;
import 'package:my_portfolio/mobile/home.dart' as MobileHome;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My PortFolio',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        // ignore: missing_return
        home: LayoutBuilder(builder: (builder, constraints) {
          if (constraints.maxWidth >= 700) {
            return DesktopHome.Home();
          } else {
            return MobileHome.Home();
          }
        }));
  }
}
