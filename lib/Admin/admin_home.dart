
import 'package:breakdown_assist/admin/admin_home_user.dart';

import 'package:flutter/material.dart';

import 'admin_home_tabbar.dart';
import 'admin_notification.dart';
import 'admin_payment.dart';
class Admin_home extends StatefulWidget {
  const Admin_home({super.key});

  @override
  State<Admin_home> createState() => _Admin_homeState();
}

class _Admin_homeState extends State<Admin_home> {
  int _indexNum=0;
  List tabs = [
    Admin_Home_tab(),
    Admin_Payment(),
    Admin_Notification(),


  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[100],
          leading: CircleAvatar(
            backgroundImage: ExactAssetImage("assets/PERSON.png"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Payment",
            icon: Icon(Icons.payments)
            ,),
          BottomNavigationBarItem(
              label: "Notification",
              icon: Icon(Icons.notification_add))
        ],
            iconSize: 30,
            // showSelectedLabels: false,


            currentIndex: _indexNum,
            onTap: (int index){

              setState(() {
                _indexNum= index;
              });

            }
        ),
        body: tabs.elementAt(_indexNum),

      ),



    );
  }
}