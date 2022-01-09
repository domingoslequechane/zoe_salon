import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgendarPage extends StatefulWidget {
  const AgendarPage({Key? key}) : super(key: key);

  @override
  _AgendarPageState createState() => _AgendarPageState();
}

DateTime currentDate = DateTime.now();

class _AgendarPageState extends State<AgendarPage> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );

    // Condition getting date
    if (pickedDate != null && pickedDate != currentDate) {
      setState(
        () {
          currentDate = pickedDate;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var fomatDate = DateFormat('dd-MM-yyyy').format(currentDate);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Agendar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Crie uma nova agenda!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Nome'),
              ),
            ),
            SizedBox(height: 7),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Contacto'),
              ),
            ),
            SizedBox(height: 7),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Serviço'),
              ),
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _selectDate(context);
                    },
                    icon: Icon(Icons.date_range),
                    label: Text('Data'),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 120,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _selectDate(context);
                    },
                    icon: Icon(Icons.av_timer),
                    label: Text('Hora'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
            Text('$fomatDate'),

            ///
            /// Codigo de Horas
            ///
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Salvar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
