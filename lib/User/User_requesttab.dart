
import 'package:flutter/material.dart';

class User_mechanicrequest extends StatefulWidget {
  const User_mechanicrequest({super.key});

  @override
  State<User_mechanicrequest> createState() => _User_mechanicrequestState();
}

class _User_mechanicrequestState extends State<User_mechanicrequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: ListView.separated(
          separatorBuilder: (context,index)=>  Divider(thickness: 5,color: Colors.white,),
          itemCount: 2,
          itemBuilder:  (BuildContext context,int index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Card(
                color: Colors.lightBlue.shade50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",style: TextStyle(fontSize: 20)),
                        Text("Date",style: TextStyle(fontSize: 20)),
                        Text("Time",style: TextStyle(fontSize: 20)),
                        Text("Fuel Leaking",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green
                      ),
                      child:  Text("Approved",style: TextStyle(color: Colors.white,fontSize: 20,),),
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
