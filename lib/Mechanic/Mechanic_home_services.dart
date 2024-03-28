import 'package:flutter/material.dart';
import 'mechanic_addservices.dart';

class Mechanic_services extends StatefulWidget {
  const Mechanic_services({Key? key}) : super(key: key);

  @override
  State<Mechanic_services> createState() => _Mechanic_servicesState();
}

class _Mechanic_servicesState extends State<Mechanic_services> {
  List<String> services = ['Tyre Puncher', 'AC Service', 'Engine Work'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Services',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildServiceItem(services[index], index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddServiceScreen();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildServiceItem(String service, int index) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          service,
          style: TextStyle(fontSize: 18.0),
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            _removeService(index);
          },
        ),
      ),
    );
  }

  void _navigateToAddServiceScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Mechanic_addservices(
          onServiceAdded: (service) {
            _addService(service);
          },
        ),
      ),
    );
  }

  void _addService(String service) {
    setState(() {
      services.add(service);
    });
  }

  void _removeService(int index) {
    setState(() {
      services.removeAt(index);
    });
  }
}
