import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: CircleAvatar(
              backgroundImage: AssetImage('images/goku.png'),
              radius: 50,
            ),
          ),
          SizedBox(width: 10,),
          Column(
            children: [
              Text(
                'Linda Liss',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              Text(
                'Chittagong, Bangladesh',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  for(int i = 0;i<4;i++)
                    Icon(Icons.star_border,color: Colors.yellow,)
                ],
              ),
            ],
          ),
          Image.asset('images/level1.png',width: 120,height: 150,)
        ],
      ),
    );
  }
}

