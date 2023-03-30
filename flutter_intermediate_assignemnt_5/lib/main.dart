import 'package:flutter/cupertino.dart';

import 'screens/about.dart';
import 'screens/home.dart';
import 'screens/settings.dart';

void main() {
  runApp(CupertinoApp(
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => const Home(),
      '/about': (BuildContext context) => const About(),
      '/settings': (BuildContext context) => const Settings(),
    },
    home: const Home(),
    title: "Cupertino App",
  ));
}
