import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
        child: Row(
          children: [
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 10),
              child: Container(

              ),
            )
          ],
        ),
      ),

    );
  }
}
