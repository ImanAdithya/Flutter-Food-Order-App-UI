
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          children: [
            Row(
              children: [
                Text("Have To Pay",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                Text("0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
              ],
            )
          ],
        ),

      ),
    );
  }
}
