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
              child:Column(
                children: [
                  AppBarWidget(),
                ],
              ) ,
            ),
           ),
         ],
      ),
    );
  }
}
