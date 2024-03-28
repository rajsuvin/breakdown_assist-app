import 'package:flutter/material.dart';
class Admin_Home_Mechanic extends StatefulWidget {
  const Admin_Home_Mechanic({super.key});

  @override
  State<Admin_Home_Mechanic> createState() => _Admin_Home_MechanicState();
}

class _Admin_Home_MechanicState extends State<Admin_Home_Mechanic> {
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
                      backgroundImage: AssetImage("assets/person2.jpg"),
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
                          padding: const EdgeInsets.only(left: 62),
                          child: Text("Mobile number", style: TextStyle(
                            fontSize: 15,)),
                        ),

                        Text("Service", style: TextStyle(fontSize: 15,)),
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