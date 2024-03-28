import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Mechanic_home.dart';
import 'Mechanic_Login.dart';

class Mechanic_Signup extends StatefulWidget {
  const Mechanic_Signup({Key? key});

  @override
  State<Mechanic_Signup> createState() => _Mechanic_SignupState();
}

class _Mechanic_SignupState extends State<Mechanic_Signup> {
  final _formkey = GlobalKey<FormState>();
  var username = TextEditingController();
  var number = TextEditingController();
  var email = TextEditingController();
  var experience = TextEditingController();
  var shopname = TextEditingController();
  var password = TextEditingController();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Future<void> mechanicsignup() async {
    await FirebaseFirestore.instance.collection('mechanicsignup').add({
      "username": username.text,
      "phone": number.text,
      "email": email.text,
      "experience": experience.text,
      "shopname": shopname.text,
      "password": password.text,
      "status": 0
    }).then((value) {
      print("Success");
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Mechanic_home();
        },
      ));
      print("Signup Success");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
              ),
              SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/towing 1.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "SIGN UP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Enter Username",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // Validation Logic
                      return 'Please enter username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Repeat the same pattern for other form fields

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Text(
                  "Enter your password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: password,
                  obscureText: _obscureText,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // Validation Logic
                      return 'Please enter password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: _togglePasswordVisibility,
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      mechanicsignup();
                    }
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
