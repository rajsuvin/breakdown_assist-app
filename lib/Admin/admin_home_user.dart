import 'package:flutter/material.dart';
class Admin_Home_User extends StatefulWidget {
  const Admin_Home_User({super.key});

  @override
  State<Admin_Home_User> createState() => _Admin_Home_UserState();
}

class _Admin_Home_UserState extends State<Admin_Home_User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: ListView.separated(
          separatorBuilder: (context, index) =>
              Divider(thickness: 5, color: Colors.white,),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(height: 20,),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/userpic.jpg"),
                      radius: 30,
                    ),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text("Name", style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Location", style: TextStyle(
                            fontSize: 15,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 62),
                          child: Text("Mobile number", style: TextStyle(
                            fontSize: 15,)),
                        ),
                        Text("Email", style: TextStyle(fontSize: 15,)),
                        SizedBox(height: 15,),
                      ],
                    ),

                  ],
                ),
              ),
            );
          }
      ),


    );
  }
}