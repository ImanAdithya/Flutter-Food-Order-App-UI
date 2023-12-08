
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color:Color(0xFFF5F5F3),
      child: Container(
        //color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Have To Pay",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(width: 15,),
                Text("\$23",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
              ],
            ),

            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                  ),
                ),
              ),
              child: const Text(
                "Order Now",
                style: TextStyle(color: Colors.white),
              ),
            ),

          ],
        ),

      ),
    );
  }
}
