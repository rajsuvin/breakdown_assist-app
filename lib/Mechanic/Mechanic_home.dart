import 'package:breakdown_assist/admin/admin_home_user.dart';

import 'package:flutter/material.dart';

import '../Admin/admin_home_tabbar.dart';
import '../Admin/admin_notification.dart';
import '../Admin/admin_payment.dart';
import 'Mechanic_home_rating.dart';
import 'Mechanic_home_requests.dart';
import 'Mechanic_home_services.dart';
import 'Mechanic_home_tabbar.dart';
import 'Mechanic_notification.dart';
import 'Mechanic_profile.dart';


class Mechanic_home extends StatefulWidget {
  const Mechanic_home({super.key});

  @override
  State<Mechanic_home> createState() => _Mechanic_homeState();
}

class _Mechanic_homeState extends State<Mechanic_home> {
  int _indexNum=0;
  List tabs = [

    //need to changed these
    Mechanic_home_tab(),
    Mechanic_services(),
    Mechanic_homerating(),


  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[100],
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mechanic_profile ()),
              );
            },
            child: CircleAvatar(
              backgroundImage: ExactAssetImage("assets/person2.jpg"),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mechanic_notification ()),
                );
              },
              icon: Icon(Icons.notifications),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            label: "Request",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Service",
            icon: Icon(Icons.payments)
            ,),
          BottomNavigationBarItem(
              label: "Rating",
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