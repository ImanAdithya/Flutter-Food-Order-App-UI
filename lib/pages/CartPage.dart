import 'package:buger_hut_delivary/widgets/AppBarWidget.dart';
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
                  Padding(
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
                            child: Image.asset("assets/pizza.png",height: 80,width: 150,)
                          ),

                          //Details
                          Container(
                            width: 190.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Hot Pizza",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                                Text("Taste Our Hot Pizza",style: TextStyle(fontSize: 14.0),),
                                Text("\$14", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.red),),
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
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Column(

                              ),
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
    );
  }
}
