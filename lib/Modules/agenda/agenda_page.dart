import 'package:flutter/material.dart';

class AgendaPage extends StatefulWidget {
  const AgendaPage({Key? key}) : super(key: key);

  @override
  _AgendaPageState createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Agenda'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text('Banco de dados'),
      ),
    );
  }
}
