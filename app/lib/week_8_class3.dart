import 'package:flutter/material.dart';

class Week8Class3 extends StatelessWidget {
  const Week8Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 8 Class 3'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

        children: // [
            // Container(color: Colors.green, height: 200, width: 200),
            // Container(color: Colors.green, height: 200, width: 200),
            // Container(color: Colors.green, height: 200, width: 200),
            // ],
            List.generate(10, (index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(25),
                ),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android),
                    SizedBox(height: 20),
                    Text('Cash Out'),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
