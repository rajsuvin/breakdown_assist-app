// import 'package:flutter/material.dart';
//
// import 'Mechanic_editprofile.dart';
//
// class Mechanic_profile extends StatefulWidget {
//   const Mechanic_profile({super.key});
//
//   @override
//   State<Mechanic_profile> createState() => _Mechanic_profileState();
// }
//
// class _Mechanic_profileState extends State<Mechanic_profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 120,
//                       ),
//                       CircleAvatar(
//                         radius: 60,
//                         backgroundImage: AssetImage("assets/person2.jpg"),
//                       ),
//                       SizedBox(
//                         width: 50,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
//                         child: IconButton(onPressed: (){
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => Mechanic_editprofile ()),
//                           );
//                         },
//                             icon: Icon(Icons.edit)),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Name"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Username"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Phone Number"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Email"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Experience"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Location"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.blue.shade100,
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       hintText: "Shop Name"
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       fixedSize: Size(150, 30),
//                       backgroundColor: Colors.blue,
//                       foregroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)
//                       )
//                   ),
//                   onPressed: (){},
//                   child: Text("Done",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'Mechanic_editprofile.dart';

class Mechanic_profile extends StatefulWidget {
  const Mechanic_profile({Key? key}) : super(key: key);

  @override
  State<Mechanic_profile> createState() => _Mechanic_profileState();
}

class _Mechanic_profileState extends State<Mechanic_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage("assets/person2.jpg"),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Mechanic_editprofile()),
                              );
                            },
                            icon: Icon(Icons.edit),
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue.shade100,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Name",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Username"
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Phone Number"
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Email"
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Experience"
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Location"
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      hintText: "Shop Name"
                  ),
                ),
              ),


              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 30),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
