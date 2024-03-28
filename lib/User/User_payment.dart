
import 'package:flutter/material.dart';

import 'User_home.dart';

class User_paymentsuccess extends StatefulWidget {
  const User_paymentsuccess({super.key});

  @override
  State<User_paymentsuccess> createState() => _User_paymentsuccessState();
}

class _User_paymentsuccessState extends State<User_paymentsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/done.png"),
            ),
            Text("Successfull",style: TextStyle(fontSize: 25),),
            Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_home()),
                  );
                },
                child:  Text("Back to home page")),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ) ,
    );
  }
}
