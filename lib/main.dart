import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person_outline,
            size: 120.0,
            color: Colors.deepPurple,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Peso(kg):"),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Altura(cm):"),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepPurple, fontSize: 25.0),
          )
        ],
      ),
    );
  }
}
