import 'package:flutter/material.dart';
import 'package:untitled/model/navClass.dart';

import 'package:untitled/sectionWise/header.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/sectionWise/midSection.dart';
import 'package:untitled/sectionWise/middleLastSection.dart';
import 'package:untitled/sectionWise/myServicesSection.dart';
import 'package:untitled/sectionWise/pointsSection.dart';

import 'cart.dart';
import 'home.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  _ProfileSectionState createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: scafoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            PointsSection(),
            MidSection(),
            MyServices(),
            MidLastSection(),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
