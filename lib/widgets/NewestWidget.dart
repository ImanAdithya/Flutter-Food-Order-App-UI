import 'package:flutter/material.dart';

class NewestWidgets extends StatelessWidget {
  const NewestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
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
                          alignment: Alignment.center,
                          child: Image.asset("assets/pizza.png",width: 155.0),
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
                                   "Hot Pizza",
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
                             
                             Text("Taste Our Hot Pizza.We\n Provide Our Great Food")
                           ],
                                                 ),
                        )
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
