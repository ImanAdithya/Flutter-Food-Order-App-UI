import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
        child: Row(
          children: [
            popularCategory(
                "burger.png", "Hot Burger", "Taste Our Hot Burger", "10.0"),
            popularCategory(
                "pizza.png", "Cheese Pizza", "Taste Our Hot Pizza", "14.0"),
            popularCategory(
                "salan.png", "Salan Curry", "Taste Our Hot Burger", "8.0"),
            popularCategory(
                "biryani.png", "Pot Biryani", "Taste Our Biryani", "12.0"),
          ],
        ),
      ),
    );
  }

  Padding popularCategory(
      String imagePath, String foodName, String des, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Container(
        width: 170.0,
        height: 225.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3))
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/" + imagePath,
                  height: 130.0,
                ),
              ),
              Text(
                foodName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                des,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$" + price,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
