import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid)
      return CircularProgressIndicator();

    return CupertinoActivityIndicator();
  }
}
