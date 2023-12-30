import 'package:cycle/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'bicycle_rental_app.dart';
import 'bicycle_detail_page.dart';
import 'bicycle_home_page.dart';
import 'login.dart';
import 'bicycle_user_profile.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
      getPages: [
        GetPage(name: '/register', page: () => MyRegister()),
        GetPage(name: '/login', page: () => MyLogin()),
      ],
    );
  }
}
