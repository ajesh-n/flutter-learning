import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("Home Page")),
      child: Column(children: [
        const Padding(padding: EdgeInsets.all(16.0)),
        const Text("Home Page"),
        const Padding(padding: EdgeInsets.all(16.0)),
        CupertinoButton(
            onPressed: () => Navigator.of(context).pushNamed('/about'),
            child: const Text("About")),
        const Padding(padding: EdgeInsets.all(16.0)),
        const CupertinoButton(onPressed: null, child: Text("Back")),
      ]),
    );
  }
}
