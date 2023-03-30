import 'package:charts_flutter_new/flutter.dart' as charts;
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

//  cats, birds, lizards, and dogs
class Sale {
  String pet;
  int sales;

  Sale(this.pet, this.sales);
}

class _State extends State<MyApp> {
  late List<Sale> _sales;
  late final List<charts.Series<Sale, String>> _chartData = [];

  @override
  void initState() {
    super.initState();
    _sales = [
      Sale("cats", 10),
      Sale("birds", 15),
      Sale("lizards", 5),
      Sale("dogs", 30),
    ];
    _chartData.add(charts.Series(
      id: "sales",
      data: _sales,
      domainFn: (Sale sale, _) => sale.pet,
      measureFn: (Sale sale, _) => sale.sales,
    ));
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
              const Text("Pet Sales"),
              Expanded(child: charts.BarChart(_chartData))
            ],
          ),
        ),
      ),
    );
  }
}
