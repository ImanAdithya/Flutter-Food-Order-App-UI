import 'package:flutter/material.dart';

class NewestWidgets extends StatelessWidget {
  const NewestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
          child: Column(
            children: [
               Padding(
                 padding:EdgeInsets.symmetric(horizontal: 4.0),
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
                          child: Image.asset("assets/"),
                        ),

                        //descrption
                      ],
                   ),
                 ),

               )
            ],
          ),

        ),
    );
  }
}
