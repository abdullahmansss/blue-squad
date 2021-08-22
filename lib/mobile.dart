import 'package:blue_squad_responsive/form_field.dart';
import 'package:blue_squad_responsive/material_button.dart';
import 'package:blue_squad_responsive/progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyProgressIndicator(),
                  SizedBox(
                    height: 20.0,
                  ),
                  MyForm(),
                  SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MyButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
