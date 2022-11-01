// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key, required this.labelText,
  }) : super(key: key);
 final labelText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 10.0,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: '$labelText',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), ),
        ),
      ),
    );
  }
}