import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestWidgets extends StatelessWidget {
  const NewestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          child: Column(
            children: [
              newestItems("pizza.png","Hot pizza","14"),
              newestItems("burger.png","Hot Burger","10"),
              newestItems("salan.png","Salan","8")
            ],
          ),

        ),
    );
  }

  Padding newestItems(String imagePath,String name,String price){
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 4.0,vertical: 3.0),
      child: Container(
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3)
              )
            ]
        ),
        child: Row(
          children: [
            //Image
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/"+imagePath,width: 155.0),
            ),

            //descrption
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(width: 100,),

                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )


                    ],
                  ),

                  SizedBox(height: 5,),

                  Text("Taste Our "+name+".We\n Provide Our Great Food"),

                  SizedBox(height: 10,),

                  RatingBar(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 17,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4),
                    onRatingUpdate: (index) {
                      // Handle rating update
                    },
                    ratingWidget: RatingWidget(
                      full: Icon(Icons.star, color: Colors.red),
                      half: Icon(Icons.star_half, color: Colors.amber),
                      empty: Icon(Icons.star, color: Colors.grey),
                    ),
                  ),

                  SizedBox(height: 8,),

                  Row(
                    children: [
                      Text(
                        "\$"+price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.red
                        ),
                      ),
                      SizedBox(width: 151,),

                      Icon(
                        CupertinoIcons.cart,
                        color: Colors.red,
                      )

                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
