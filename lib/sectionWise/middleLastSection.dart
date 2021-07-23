import 'package:flutter/material.dart';

import '../constants.dart';

class MidLastSection extends StatelessWidget {
  const MidLastSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          InkWell(
            onTap:(){},
            child: Row(
              children: [
                Icon(Icons.message,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Invite Friends', style: styleMyServices,),
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap:(){},
            child: Row(
              children: [
                Icon(Icons.question_answer,color: Colors.white,),
                SizedBox(width: 10,),
                Text('About Us', style: styleMyServices,),
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap:(){},
            child: Row(
              children: [
                Icon(Icons.help,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Help', style: styleMyServices,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
