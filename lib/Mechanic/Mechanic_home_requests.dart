
import 'package:flutter/material.dart';

class Mechanic_request_home extends StatefulWidget {
  const Mechanic_request_home({super.key});

  @override
  State<Mechanic_request_home> createState() => _Mechanic_request_homeState();
}

class _Mechanic_request_homeState extends State<Mechanic_request_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
          separatorBuilder: (context,index)=> Divider(thickness: 5,color: Colors.white,),
          itemCount: 3,
          itemBuilder:  (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                color: Colors.blue.shade200,
                child: Row(
                  children: [

                    SizedBox(
                      width: 10,
                    ),

                    Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/userpic.jpg"),
                          radius: 40,
                        ),
                        Text("Name",style: TextStyle(fontSize: 20))
                      ],
                    ),

                    SizedBox(
                      width: 70,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Fuel Leaking",style: TextStyle(fontSize: 20),),
                        Text("Date",style: TextStyle(fontSize: 20)),
                        Text("Time",style: TextStyle(fontSize: 20)),
                        Text("Place",style: TextStyle(fontSize: 20)),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}