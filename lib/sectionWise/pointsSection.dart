import 'package:flutter/material.dart';

class PointsSection extends StatelessWidget {
  const PointsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('575', style: TextStyle(fontSize: 50,color: Colors.white),),
              Text('points', style: TextStyle(color: Colors.white),)
            ],
          ),
          Column(
            children: [
              Text('1', style: TextStyle(fontSize: 50,color: Colors.white),),
              Text('Coupons',style: TextStyle(color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
