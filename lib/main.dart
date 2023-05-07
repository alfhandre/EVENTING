import 'package:eventing/views/formregister.dart';
import 'package:flutter/material.dart';
import 'package:eventing/views/formlogin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:eventing/views/welcomeeventing.dart';
// import 'package:eventing/views/create_event.dart';
import 'package:eventing/views/createevent.dart';
// import 'package:eventing/views/homepage.dart';
// import 'package:eventing/views/homescreen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:eventing/views/testcreateprofile.dart';

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
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomeEventing());
  }
}
