import 'package:app/list_view.dart';
import 'package:flutter/material.dart';

class Week8Class2 extends StatelessWidget {
  Week8Class2({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Module 8 Class 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              height: 200,
              width: 100,
              'data:image/png;base64,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',
            ),
            Image.asset(width: 220, 'asset/YT.jpg'),

            SizedBox(height: 20),
            Text(
              'Login with Phone and Pass',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Pleaase Enter Your Phone Number';
                      } else if (value.length == 11) {
                        return null;
                      } else {
                        return 'Please Enter accurate number';
                      }
                    },
                  ),
                  SizedBox(height: 20),

                  TextFormField(
                    controller: passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Pass';
                      } else if (value.length < 6) {
                        return 'Value must be in 6 chars';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ListV(name: phoneController.text),
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
