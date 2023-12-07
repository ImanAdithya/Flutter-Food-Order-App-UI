import 'package:buger_hut_delivary/widgets/AppBarWidget.dart';
import 'package:buger_hut_delivary/widgets/CartBottomNavBar.dart';
import 'package:buger_hut_delivary/widgets/DrawWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //App Bar
                  AppBarWidget(),

                  //Order List
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Text(
                      "Order List",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //List Items
                  carPageItems("pizza.png", "Pizza", "14"),
                  carPageItems("burger.png", "Burger", "10"),
                  carPageItems("drink.png", "Sting", "4"),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                                spreadRadius: 1,
                                offset: Offset(0, 1))
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 21),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub Total",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 21),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(fontSize: 21),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      drawer: DrawWidget(),
      //bottomNavigationBar:CartBottomNavBar(),
    );
  }

  Padding carPageItems(String imagePath, String name, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 1))
            ]),
        child: Row(
          children: [
            //Image
            Container(
                child: Image.asset(
              "assets/" + imagePath,
              height: 80,
              width: 150,
            )),

            //Details
            Container(
              width: 210.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Text(
                    "Taste Our Hot " + name,
                    style: TextStyle(fontSize: 14.0),
                  ),
                  Text(
                    "\$" + price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.red),
                  ),
                ],
              ),
            ),

            //CartCount
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    ),
                    Text(
                      "0",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      CupertinoIcons.minus,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
