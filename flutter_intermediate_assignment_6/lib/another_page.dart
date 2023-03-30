import 'package:flutter/material.dart';

import 'state/state.dart';

class AnotherPage extends StatelessWidget {
  final int _value = GlobalState.instance.get("counter");

  AnotherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(16.0)),
            Text("Value $_value")
          ],
        ),
      ),
    );
  }
}
