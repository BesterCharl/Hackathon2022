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
        title: const Text('Ek is bored :Dasdasd'),
        backgroundColor: const Color.fromRGBO(187, 68, 48, 1),
        elevation: 0.0,
      ),
      body: Center(
          child: Column(
        children: [
          Text('Hello World'),
          FindParkingButton(),
          ChangeState(),
        ],
      )),
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
      child: const Text('Find my parking'),
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
      child: const Text('Change Parking state'),
    );
  }
}
