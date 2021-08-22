import 'package:blue_squad_responsive/desktop.dart';
import 'package:blue_squad_responsive/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth >= 700){
            return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: MediaQuery.of(context).textScaleFactor * (constraints.maxWidth * 0.001),
            ),
            child: DesktopScreen(),
            );
          }

          return MobileScreen();
        },
      ),
    );
  }
}