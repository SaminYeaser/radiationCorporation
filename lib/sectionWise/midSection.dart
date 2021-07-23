import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';

class MidSection extends StatelessWidget {
  const MidSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 20,),
                Text('Wallet', style: styleMidSection,)
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 20,),
                Text('Get More Coupons', style: styleMidSection,)
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(
                  Icons.card_giftcard_sharp,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 20,),
                Text('Gift Coupon', style: styleMidSection,)
              ],
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                Icon(
                  Icons.money,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(width: 20,),
                Text('Purchase Coupon', style: styleMidSection,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
