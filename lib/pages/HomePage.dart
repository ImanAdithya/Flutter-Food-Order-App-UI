import 'package:buger_hut_delivary/widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          //Custom App Bar
          AppBarWidget(),

          //Search
          Padding(
            padding:EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child:Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 1,
                     blurRadius: 10,
                     offset: Offset(0, 3),
                   )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search),

                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                          padding:EdgeInsets.symmetric(horizontal: 35.0),
                          child: TextFormField(
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: "What would you like to have?",
                              border: InputBorder.none
                            ),
                          ),
                      ),
                    ),
                    
                    Icon(Icons.filter_list)
                  ],
                ),
                  
              ),
            ) ,

          ),

          //Category
          Padding(
            padding: EdgeInsets.only(top: 10,left: 20),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),





        ],
      ),
    );
  }
}