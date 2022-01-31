import 'package:flutter/material.dart';
import 'paymentpage.dart';

class Eventpage extends StatelessWidget {
  const Eventpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Event'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.date_range),
                  SizedBox(width: 10.0),
                  Text(
                    'Date: 24/12/22',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Icon(Icons.timer),
                  SizedBox(width: 10.0),
                  Text(
                    'Time: 5:30pm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 350.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Paypage()));
              },
              child: Text('Register'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black87)),
            )
          ],
        ),
      ),
    );
  }
}
