import 'package:flutter/material.dart';

class Mechanic_addservices extends StatelessWidget {
  final Function(String) onServiceAdded;

  const Mechanic_addservices({required this.onServiceAdded});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Dialog(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Add Service',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(width: 48), // Placeholder for aligning title and arrow button
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Service Name',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String newService = _controller.text.trim();
                if (newService.isNotEmpty) {
                  onServiceAdded(newService);
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
