import 'package:flutter/cupertino.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("About Page")),
      child: Column(children: [
        const Padding(padding: EdgeInsets.all(16.0)),
        const Text("About Page"),
        const Padding(padding: EdgeInsets.all(16.0)),
        CupertinoButton(
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
            child: const Text("Setting")),
        const Padding(padding: EdgeInsets.all(16.0)),
        CupertinoButton(
            onPressed: () => Navigator.of(context).pushNamed('/home'),
            child: const Text("Back")),
      ]),
    );
  }
}
