import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/zoe_logo.png',
              width: 100,
            ),
            Text(
              'Zoe Salon',
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Container(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                child: Text('Próximo'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
