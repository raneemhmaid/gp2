import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0), 
        height: 45.0,
        width: 190.0,
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 246, 80, 43),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(0,2),
                )
              ]
          ),
        child: const Center(
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white, fontSize: 24),
            
          ),
        ),
        
      ),
    );
  }
}