import 'package:flutter/material.dart';
import 'package:weather_demo/screens/main_tabs/page/main_tabs.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF223644),
      debugShowCheckedModeBanner: false,
      home: MainTabs(),
    );
  }
}
