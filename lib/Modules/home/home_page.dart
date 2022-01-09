import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/agendar');
                    },
                    child: Text('Agendar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Container(
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/agenda');
                    },
                    child: Text('Agenda'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
