import 'package:flutter/material.dart';

import 'admin_home.dart';
import 'admin_notification.dart';


class Admin_Add_Notification extends StatefulWidget {
  const Admin_Add_Notification({super.key});

  @override
  State<Admin_Add_Notification> createState() => Admin_Add_NotificationState();
}

class Admin_Add_NotificationState extends State<Admin_Add_Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],

      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[100],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Use Navigator.pop instead of Navigator.push
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 150,

                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220
                ),
                child: Text("Enter Matter"),
              ),
              Padding(

                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Matter'),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220
                ),
                child: Text("Enter Content"),
              ),
              Padding(

                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Content'),
                ),
              ),

              SizedBox(height: 40,),

              ElevatedButton(onPressed: (){},

                  child: Text("Submit"))
            ]
        ),
      ),
    );
  }
}