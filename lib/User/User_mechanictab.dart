import 'package:flutter/material.dart';

class User_mechanic_tab extends StatefulWidget {
  const User_mechanic_tab({super.key});

  @override
  State<User_mechanic_tab> createState() => _User_mechanic_tabState();
}

class _User_mechanic_tabState extends State<User_mechanic_tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 5,
            color: Colors.white,
          ),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                color: Colors.lightBlue.shade50,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/person2.jpg"),
                          radius: 40,
                        ),
                        Text("Name", style: TextStyle(fontSize: 20))
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "+1 Year Experience",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Fuel Leacking", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                                "Available",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}