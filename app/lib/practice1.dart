import 'package:flutter/material.dart';

class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  var obsecTxt = true;
  obsecTxtchange() {
    setState(() {
      obsecTxt = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Login Practce'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.all(30),

            child: TextField(
              keyboardType: TextInputType.phone,
              controller: phonecontroller,
              decoration: InputDecoration(
                hintText: 'Enter Your Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.check),
              ),
            ),
          ),
          // SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              obscureText: obsecTxt,
              controller: passcontroller,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    obsecTxtchange();
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (phonecontroller.text.length == 11) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Submitted ${phonecontroller.text}')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Enter Number of 11 Digit')),
                );
              }
              //print('Submitted ${phonecontroller.text}');

              if (passcontroller.text.length >= 8) {
                if (passcontroller.text.contains('@') &&
                    passcontroller.text.contains(passcontroller.text)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Submitted ${passcontroller.text}')),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Enter Pass with at least 8 chars and use @'),
                  ),
                );
              }
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
