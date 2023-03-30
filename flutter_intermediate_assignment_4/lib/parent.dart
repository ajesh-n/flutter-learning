import 'package:flutter/cupertino.dart';
import 'package:flutter_intermediate_assignment_4/child.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<StatefulWidget> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  String _name = "";

  void _onNameChanged(String name) => setState(() => _name = name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text("Enter you name"),
          Child(_onNameChanged),
          Text("User name $_name")
        ],
      ),
    );
  }
}
