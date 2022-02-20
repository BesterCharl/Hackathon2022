import 'package:flutter/material.dart';

class ParkingTest extends StatefulWidget {
  @override
  _ParkingTestState createState() => _ParkingTestState();
}

class _ParkingTestState extends State<ParkingTest> {
  // text field state
  String coordinates = '';
  String state = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Test Parking Space Database Service'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => coordinates = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => state = val);
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                  color: Colors.purple[400],
                  child: Text(
                    'Update',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    print(coordinates);
                    print(state);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
