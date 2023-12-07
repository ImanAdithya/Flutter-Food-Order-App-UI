import 'package:buger_hut_delivary/widgets/AppBarWidget.dart';
import 'package:buger_hut_delivary/widgets/CategoryWidget.dart';
import 'package:buger_hut_delivary/widgets/NewestWidget.dart';
import 'package:buger_hut_delivary/widgets/PopularWidget.dart';
import 'package:flutter/cupertino.dart';
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

          CategoriesWidget(),

          //Popular
          Padding(
              padding: EdgeInsets.only(top: 10,left: 20),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
          ),

          PopularWidget(),

          //Newest
          Padding(
            padding: EdgeInsets.only(top: 5,left: 20),
            child: Text(
              "Newest",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          NewestWidgets(),

        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(CupertinoIcons.cart, color: Colors.red, size: 25.0),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
