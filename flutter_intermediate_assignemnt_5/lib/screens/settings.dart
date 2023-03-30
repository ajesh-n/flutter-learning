import 'package:flutter/cupertino.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("Settings Page")),
      child: Column(children: [
        const Padding(padding: EdgeInsets.all(16.0)),
        const Text("Settings Page"),
        const Padding(padding: EdgeInsets.all(16.0)),
        const CupertinoButton(
            onPressed: null,
            child: Text("Next")),
        const Padding(padding: EdgeInsets.all(16.0)),
        CupertinoButton(
            onPressed: () => Navigator.of(context).pushNamed('/about'),
            child: const Text("Back")),
      ]),
    );
  }
}
