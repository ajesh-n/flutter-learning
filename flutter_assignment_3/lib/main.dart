import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  String _value = "";
  String _valueLocal = "";
  
  void _onPressed(String value) => setState(() => _value = value);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Name Here"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [Text(_value),
              TextField(onChanged: _onChanged),
              TextButton(onPressed: () => _onPressed(_valueLocal), child: const Text("Click me!"))
            ],
          ),
        ),
      ),
    );
  }

  void _onChanged(String value) => setState(() => _valueLocal = value);
}
