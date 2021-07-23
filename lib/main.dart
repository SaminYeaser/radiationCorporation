import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:untitled/pages/mainscreen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radiation Corporation',
      // theme: ThemeData(scaffoldBackgroundColor: Colors.greenAccent),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(fontFamily: 'Poppins',),
    );
  }
}
