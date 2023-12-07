import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
        child: Row(
          children: [
            CategoryItems("burger.png"),
            CategoryItems("pizza.png"),
            CategoryItems("salan.png"),
            CategoryItems("biryani.png"),
            CategoryItems("drink.png"),

          ],
        ),
      ),

    );
  }

  Widget CategoryItems(String imagePath){
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0,3),
              )
            ]
        ),
        child: Image.asset("assets/"+imagePath,width: 50,height: 55,),
      ),
    );
  }
}
