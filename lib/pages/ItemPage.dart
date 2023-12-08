import 'package:buger_hut_delivary/widgets/AppBarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            //app bar
            AppBarWidget(),

            //Image
            Padding(
              padding: EdgeInsets.all(16),
              child:Image.asset("assets/pizza.png",height: 300.0,),
            ),

            //Rating bar and Price
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
              child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         child: RatingBar(
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
                       ),

                       Text("\$10",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 19),)
                     ],
                   ),

                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Hot Pizza",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25),),

                         Padding(
                           padding: EdgeInsets.symmetric(vertical: 10.0),
                           child: Container(
                             padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                             decoration: BoxDecoration(
                               color: Colors.red,
                               borderRadius: BorderRadius.circular(10.0),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Icon(
                                   CupertinoIcons.minus,
                                   size: 18,
                                   color: Colors.white,
                                 ),
                                 SizedBox(width: 7,),
                                 Text(
                                   "2",
                                   style: TextStyle(
                                       fontSize: 16,
                                       color: Colors.white,
                                       ),
                                 ),
                                 SizedBox(width: 7,),
                                 Icon(
                                   size: 18,
                                   CupertinoIcons.add,
                                   color: Colors.white,
                                 ),
                               ],
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 10.0),
                     child: Text("Sizzling, gooey, and tantalizing, a hot pizza emerges from the oven, its golden"
                         " crust adorned with bubbling cheese that stretches in strings with each indulgent bite. "
                         "The air is filled with the savory aroma of tomato sauce, herbs, and pepperoni, creating an "
                         "irresistible symphony that beckons taste buds to savor every delicious note.",
                       textAlign: TextAlign.start,
                       style: TextStyle(fontSize: 14),
                     ),
                   ),
                 ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
