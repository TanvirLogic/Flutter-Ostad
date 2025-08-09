import 'package:flutter/material.dart';

import 'blue_print/own_text_form_field.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Employe',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          OwnTextFormField('Name'),
          OwnTextFormField('Age'),
          OwnTextFormField('Salary'),
          SizedBox(height: 5),
          ElevatedButton(onPressed: () {}, child: Text('Add Employe')),
        ],
      ),
    );
  }
}
