import 'package:flutter/material.dart';
import './landingPage.dart';

class statePage extends StatefulWidget {
  @override
  _statePageState createState() => _statePageState();
}

class _statePageState extends State<statePage> {
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
              child: Text('What are you doing?',
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
        debugPrint('Found my parking spot');
        Navigator.pop(context);
      },
      child: const Text(
        'Found my parking spot',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 25,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(126, 189, 194, 1),
        padding: EdgeInsets.all(20),
        fixedSize: Size(350, 100),
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
        debugPrint('Leaving my parking spot');
        Navigator.pop(context);
      },
      child: const Text(
        'Leaving my parking spot',
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontSize: 25,
        ),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: Color.fromRGBO(126, 189, 194, 1),
        padding: EdgeInsets.all(20),
        fixedSize: Size(350, 100),
      ),
    );
  }
}
