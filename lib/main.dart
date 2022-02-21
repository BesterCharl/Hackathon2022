import 'package:flutter/material.dart';
import './home.dart';
import './parkingTest.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCXl-6LktBYE2snQC-Psb8PKbAFliOIuow", // Your apiKey
      appId: "1:1032919392243:android:690dfd0d30b92693bb3c86", // Your appId
      messagingSenderId: "1032919392243", // Your messagingSenderId
      projectId: "parking-finder-6add4", // Your projectId
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: const MyHomePage(title: 'Smart Parking Locator'),
        home: ParkingTest());
  }
}
