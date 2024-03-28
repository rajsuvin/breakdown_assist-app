
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User_mechanictab.dart';
import 'User_notification.dart';
import 'User_profile.dart';
import 'User_requesttab.dart';

class User_home extends StatefulWidget {
  const User_home({super.key});

  @override
  State<User_home> createState() => _User_homeState();
}

class _User_homeState extends State<User_home> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
          leading:  Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>User_profile()));
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/userpic.jpg"),
              ),
            ),
          ),
          title: Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue.shade50,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.lightBlue.shade50)
            ),
            child: TextFormField(
              decoration:  InputDecoration(
                  hintStyle: TextStyle(fontSize: 22),
                  hintText: "Search....",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> User_notification()));
            },
                icon:  Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.amber,
                )
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        bottomSheet:  Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Container(
            color: Colors.white,
            child: Card(
              color: Colors.blue.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular( 10),
              ),
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade500
                  ),
                  labelPadding:  EdgeInsets.symmetric(horizontal: 20),
                  // overlayColor: MaterialStateColor.transparent,
                  tabs:  [
                    Tab(child: Text("Mechanic",style: TextStyle(fontSize: 20,color: Colors.black),),),
                    Tab(child: Text("Request",style: TextStyle(fontSize: 20,color: Colors.black)),),
                  ]
              ),
            ),
          ),
        ),
        body:  TabBarView(children: [
          User_mechanic_tab(),
          User_mechanicrequest(),
        ]),
      ),
    );
  }
}
