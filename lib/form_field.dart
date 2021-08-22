import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid)
      return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email Address',
        ),
      );

    return CupertinoTextField(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.teal,
        ),
      ),
    );
  }
}
