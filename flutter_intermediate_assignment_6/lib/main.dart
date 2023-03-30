import 'package:flutter/material.dart';
import 'package:flutter_intermediate_assignment_6/state/state.dart';

import 'another_page.dart';

void main() {
  runApp(MaterialApp(
    routes: <String, WidgetBuilder>{
      'anotherPage': (BuildContext context) => AnotherPage(),
    },
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  int _value = 0;

  void updateState() {
    GlobalState.instance.set("counter", _value);
  }

  void increment() {
    _value++;
    updateState();
  }

  void decrement() {
    _value--;
    updateState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App with Global State"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              FloatingActionButton(
                onPressed: increment,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: decrement,
                child: const Icon(Icons.remove),
              ),
              ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed('anotherPage'),
                  child: const Text("Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}
