//import file
// import 'package:eventing/views/formregister.dart';
import 'package:eventing/views/non-login/welcomeeventing.dart';
// import 'package:eventing/views/formlogin.dart';
// import 'package:eventing/views/welcomeeventing.dart';
// import 'package:eventing/views/daftar_event.dart';
// import 'package:eventing/views/createevent.dart';
// import 'package:eventing/views/test_bottomnavbar.dart';
import 'package:eventing/views/login/homescreen/homepage.dart';
import 'package:eventing/views/detailPengumuman.dart';
import 'package:eventing/views/login/teman/daftarTeman.dart';
import 'package:eventing/views/login/homescreen/homepage.dart';
import 'package:eventing/views/pengaturan.dart';
import 'package:eventing/views/login/homescreen/mainDaftarCalendar.dart';

//import package
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';

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
        debugShowCheckedModeBanner: false, home: MainMenu());
  }
}
