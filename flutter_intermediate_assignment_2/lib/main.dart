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
  int _currentStep = 0;
  final List<Step> _steps = [];
  String _userName = "";
  String _age = "";

  @override
  void initState() {
    super.initState();
    _currentStep = 0;
    _steps.add(
      Step(
          title: const Text("Step 1"),
          content: Container(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: const InputDecoration(label: Text("Name")),
                onChanged: (String text) {
              setState(() => _userName = text);
            }, onSubmitted: (String text) {
              setState(() => _userName = text);
            }),
          )),
    );
    _steps.add(Step(
        title: const Text("Step 2"),
        content: Container(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              decoration: const InputDecoration(label: Text("Age")),
              onChanged: (String text) => setState(() => _age = text),
              onSubmitted: (String text) => setState(() => _age = text)),
        )));
  }

  void _onStepContinue() {
    setState(() {
      _currentStep = _currentStep < 2 ? _currentStep + 1 : _currentStep;
    });
  }

  void _onStepCancel() {
    setState(() => _currentStep = _currentStep > 0 ? _currentStep - 1 : 0);
  }

  void _onStepTapped(int index) {
    setState(() {
      _currentStep = index;
    });
  }

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
            children: [
              Stepper(
                steps: [
                  _steps[0],
                  _steps[1],
                  Step(
                      title: const Text("Step 3"),
                      content: Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("User Name: $_userName, Age: $_age"),
                      ))
                ],
                currentStep: _currentStep >= 0 ? _currentStep : 0,
                onStepContinue: _currentStep < 2 ? _onStepContinue : null,
                onStepTapped: _onStepTapped,
                onStepCancel: _currentStep > 0 ? _onStepCancel : null,
                type: StepperType.vertical,
              )
            ],
          ),
        ),
      ),
    );
  }
}
