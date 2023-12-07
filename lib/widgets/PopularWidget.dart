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
            Padding(
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
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/burger.png",height: 130.0,),
                      ),
                      Text(
                        "Hot Buger",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      )

                    ],
                  ) ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
