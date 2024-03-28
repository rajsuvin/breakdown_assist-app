
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Mechanic_homerating extends StatefulWidget {
  const Mechanic_homerating({super.key});

  @override
  State<Mechanic_homerating> createState() => _Mechanic_homeratingState();
}

class _Mechanic_homeratingState extends State<Mechanic_homerating> {

  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title:  Text("Rating",style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("The rating given to you",style: TextStyle(color: Colors.grey,fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView.separated(
                  separatorBuilder: (context,index)=>  Divider(thickness: 5,color: Colors.white,),
                  itemCount: 2,
                  itemBuilder: (BuildContext context,int index) {
                    return Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage("assets/userpic.jpg"),
                              ),
                              Text("Name", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Engine work", style: TextStyle(fontSize: 20),),
                              Text("Date", style: TextStyle(fontSize: 20)),
                              Text("Time", style: TextStyle(fontSize: 20)),
                              Text("Place", style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rating"),
                              SizedBox(
                                height: 5,
                              ),
                              RatingBar.builder(
                                itemSize: 20,
                                minRating: 0.5,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) =>
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) =>
                                    setState(() {
                                      this.rating = rating;
                                    }
                                    ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('$rating'),

                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

