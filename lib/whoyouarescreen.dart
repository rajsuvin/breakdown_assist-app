
import 'package:breakdown_assist/Mechanic/Mechanic_Login.dart';
import 'package:breakdown_assist/User/User_login.dart';
import 'package:flutter/material.dart';

import 'Admin/admin_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Who You Are',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WhoYouAreScreen(),
    );
  }
}

class WhoYouAreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Who You Are'),centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 250,
                child: Image.asset('assets/towing 1.jpg')),
            SizedBox(
              height: 20,
            ),
            Text(
              'Who you are',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mechanic_Login()),
                  );
                },
                child: Text('Mechanic'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              width: 250,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => User_login()),
                    );
                  },
                child: Text('User'),
              ),
            ),
            SizedBox(height: 20),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LOGIN()),
              );
            }, child: Text("Admin Login"))

          ],
        ),
      ),
    );
  }
}