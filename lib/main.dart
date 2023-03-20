import 'package:flutter/material.dart';
import 'package:eventing/views/formlogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart'; 

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: formlogin(),
    );
  }
}
