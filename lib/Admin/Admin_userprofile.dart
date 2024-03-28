import 'package:flutter/material.dart';

class Admin_user extends StatefulWidget {
  const Admin_user({super.key});

  @override
  State<Admin_user> createState() => _Admin_userState();
}

class _Admin_userState extends State<Admin_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 60
            ),
            child: Container(
              height:900,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/userpic.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Name",style: TextStyle(fontSize: 19),),
                      Text("Location",style: TextStyle(fontSize: 19),),
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("Username",style: TextStyle(fontSize: 18),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "Username"
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("Phone number",style: TextStyle(fontSize: 18),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "0000000000"
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("Email address",style: TextStyle(fontSize: 18),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "Example@email.com"
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                backgroundColor: Colors.green.shade300,
                                foregroundColor: Colors.white
                            ),
                            onPressed: (){},
                            child: Text("Accept",style: TextStyle(fontSize: 20))),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                backgroundColor: Colors.red.shade300,
                                foregroundColor: Colors.white
                            ),
                            onPressed: (){},
                            child: Text("Reject",style: TextStyle(fontSize: 20),)),  ],
                    ),
                  ),

                ],
              ),

            ),
          ),
        ),
      ),
    );

  }
}