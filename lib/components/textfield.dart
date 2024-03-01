import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.only(top:30, left: 50, right: 50, bottom: 10),
                child: TextField(
                  controller: controller,
                  obscureText: obsecureText,
                  decoration: InputDecoration(
                    enabledBorder:  const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 164),
                      fontSize: 15.0,
                      )
                  ),
                ),
              );
  }
}