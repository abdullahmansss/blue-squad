import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid)
      return Container(
        width: double.infinity,
        height: 40.0,
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.teal,
        ),
      );

    return Container(
      width: double.infinity,
      child: CupertinoButton(
        onPressed: () {},
        child: Text(
          'SIGN IN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.teal,
      ),
    );
  }
}
