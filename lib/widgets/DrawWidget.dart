import 'package:flutter/material.dart';

class DrawWidget extends StatelessWidget {
  const DrawWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        //padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: UserAccountsDrawerHeader(
                accountName: Text("Iman Adithya",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                accountEmail: Text("imanadithya@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/avatar.jpg"),),
                decoration:BoxDecoration(
                  color: Colors.red
                )  ,
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
