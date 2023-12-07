import 'package:flutter/cupertino.dart';
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
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/iman.jpeg")),
                accountName: Text("Iman Adithya",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                accountEmail: Text("imanadithya@gmail.com"),
                decoration:BoxDecoration(
                  color: Colors.red
                )  ,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: Colors.red,),
            title: const Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(CupertinoIcons.person,color: Colors.red,),
            title: const Text('My Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(CupertinoIcons.cart_fill,color: Colors.red,),
            title: const Text('My Orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(CupertinoIcons.settings,color: Colors.red,),
            title: const Text('Setting',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            onTap: () {
            },
          ),

          ListTile(
            leading: Icon(Icons.exit_to_app,color: Colors.red,),
            title: const Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
            onTap: () {
            },
          ),

        ],
      ),
    );
  }
}
