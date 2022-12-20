import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> countries = [
      "Polen",
      "Danmark",
      "Irak",
      "Iran",
      "Sverige",
      "Ungarn",
      "Uzbekistan",
      "Uruguay"
    ];

    List<String> filter = [];
    filter.addAll(countries);

    filter.retainWhere((countryone) {
      return countryone.toLowerCase().contains("U".toLowerCase());
    });

    print(filter);

    return Scaffold(
        appBar: AppBar(
            title: Text("Filtrering i Flutter"),
            backgroundColor: Colors.purple),
        body: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          child: Column(
            children: filter.map((countryone) {
              return Card(child: ListTile(title: Text(countryone)));
            }).toList(),
          ),
        ));
  }
}
