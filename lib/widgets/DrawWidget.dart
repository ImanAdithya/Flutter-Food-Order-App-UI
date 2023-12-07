import 'package:flutter/material.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child:UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  accountName: Text("Iman Adithya"),
                  accountEmail: Text("imanAdithya@gmail.com"),
              ),
          )
        ],
      ),
    );
  }
}
