import 'package:flutter/material.dart';

class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Where is my parking dude?'),
        backgroundColor: const Color.fromRGBO(187, 68, 48, 1),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text('Please select your choice',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38)),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: FindParkingButton(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: ChangeState(),
            ),
          ],
        ),
      ),
    );
  }
}

class FindParkingButton extends StatelessWidget {
  const FindParkingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Find my parking');
      },
      child: const Text(
        'Find my parking',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 25,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(126, 189, 194, 1),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}

class ChangeState extends StatelessWidget {
  const ChangeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Change Parking state');
      },
      child: const Text(
        'Change Parking state',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 25,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(126, 189, 194, 1),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
