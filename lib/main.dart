import 'package:breakdown_assist/Mechanic/Mechanic_home.dart';
import 'package:breakdown_assist/Mechanic/Mechanic_status.dart';
import 'package:breakdown_assist/User/User_home.dart';
import 'package:breakdown_assist/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Admin/Admin_userprofile.dart';
import 'Admin/admin_home.dart';

import 'Admin/admin_login.dart';
import 'Admin/admin_mechanicprofile.dart';
import 'Mechanic/Mechanic_Login.dart';
import 'Mechanic/Mechanic_home_requests.dart';
import 'User/User_bill.dart';
import 'User/User_failed.dart';
import 'User/User_login.dart';
import 'User/User_payment.dart';
import 'User/User_rating.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LOGIN()
    );
  }
}