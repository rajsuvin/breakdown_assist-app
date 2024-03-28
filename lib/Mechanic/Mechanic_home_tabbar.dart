import 'package:flutter/material.dart';

import '../Admin/admin_home_mechanic.dart';
import '../Admin/admin_home_user.dart';
import 'Mechanic_accept_home.dart';
import 'Mechanic_home_requests.dart';





class Mechanic_home_tab extends StatefulWidget {
  const Mechanic_home_tab({super.key});

  @override
  State<Mechanic_home_tab> createState() => _Mechanic_home_tabState();
}

class _Mechanic_home_tabState extends State<Mechanic_home_tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(tabs: [Tab(child: Text("Requests"),
            ),
              Tab(child:Text("Accepted"),)
            ]),
            Expanded(
              child: TabBarView(children: [

                Mechanic_request_home(),
                Mechanic_accept_home(),

              ],),
            )
          ],
        ),
      ),
    );
  }
}