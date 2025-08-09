import 'package:flutter/material.dart';
class OwnTextFormField extends StatelessWidget {
  const OwnTextFormField(this.hintText,{super.key});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(decoration: InputDecoration(hintText: hintText)),
    );
  }
}
