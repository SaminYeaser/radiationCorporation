import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class MyServices extends StatelessWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'My Services',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap:(){},child: Text('My Reviews', style: styleMyServices,)),
              InkWell(onTap:(){},child: Text('My Orders', style: styleMyServices,))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap:(){},child: Text('My Payment Options', style: styleMyServices,)),
              InkWell(onTap:(){},child: Text('My Cancelations', style: styleMyServices,))
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap:(){},child: Text('My Returns', style: styleMyServices,)),
              InkWell(onTap:(){},child: Text('My Reviews', style: styleMyServices,))
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
