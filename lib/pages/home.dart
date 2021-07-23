import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Radiation Corporation'),backgroundColor: Colors.teal,),
      body: Container(
        width: double.infinity,
        color: Colors.white70,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/banner.jpg'),
              Image.asset('images/Banner2.jpg'),
              Image.asset('images/Banner3.jpg'),
              Image.asset('images/Banner4.jpg'),
              Image.asset('images/Banner5.jpg'),
              Image.asset('images/Banner6.jpg'),
              Image.asset('images/Banner8.jpg'),
              Image.asset('images/Banner9.jpg'),

            ],
          ),
        ),
      ),
    );
  }
}
