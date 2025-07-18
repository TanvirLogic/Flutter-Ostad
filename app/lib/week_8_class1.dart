import 'package:flutter/material.dart';

class Module8Class1 extends StatelessWidget {
  const Module8Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 8 Class 1'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phonecontroller,
              decoration: InputDecoration(
                hintText: 'Enter Your Number',
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
                hintStyle: TextStyle(color: Colors.red),
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsetsGeometry.all(15),
            child: TextField(
              obscureText: true,
              controller: passcontroller,
              decoration: InputDecoration(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintStyle: TextStyle(color: Colors.red),
                labelStyle: TextStyle(fontSize: 20, color: Colors.purple),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                if (phonecontroller.text.isEmpty) {
                  // print('Enter Your Number');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please Enter Your Number')),
                  );
                } else if (phonecontroller.text.length < 11) {
                  // print('Enter Correct Number');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Enter Correct Number')),
                  );
                } else if (phonecontroller.text.length == 11) {
                  // print(phonecontroller.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Phone Number is ${phonecontroller.text}'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Number Must Be in 11 Digits')),
                  );
                }
              },
              child: Text('Login'),
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: ElevatedButton(
              onPressed: () {
                phonecontroller.clear();
                passcontroller.clear();
              },
              child: Text('Clear'),
            ),
          ),
          SizedBox(height: 20),

          Container(
            alignment: Alignment.center,
            width: 200,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.black),
              boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(5, 5))],
            ),
            child: Text('Container'),
          ),
          SizedBox(height: 10),
          // Card(child: Text('I am Card'), color: Colors.blue),
        ],
      ),
    );
  }
}
