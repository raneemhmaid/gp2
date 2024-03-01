import 'package:flutter/material.dart';
import 'package:test_project/components/button.dart';
import 'package:test_project/components/square_file.dart';
import 'package:test_project/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing  controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //LogIn user method
  void logUserin(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
             const SizedBox(height: 40,),

             //login text 
              const Text(
                "Log In",
                style: TextStyle(
                color: Color.fromARGB(255, 0, 102, 164),
                fontSize: 36,
                fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 100,),

             //username textfield 
              MyTextField(
                obsecureText: false,
                controller: usernameController,
                hintText: 'Username',
              ),

              const SizedBox(height: 2,),
            
             //password textfield 
              MyTextField(
               obsecureText: true,
               controller: passwordController,
               hintText: 'Password', 
              ),

             //forgot password
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 50.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: const [
                    Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 0, 102, 164)),
                    
                    ),
                 ],
               ),
             ),

             const SizedBox(height: 25,),

             //sign in button
             MyButton(
              onTap:logUserin,
             ),
             const SizedBox(height: 25,),

             //or continue with 
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5 ,
                      color: Colors.grey[400],
                      height: 38,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or continue with",
                      style:TextStyle(color: Colors.grey[700]) ,
                      ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5 ,
                      color: Colors.grey[400],
                      height: 38,
                    ),
                  ),
                ],),
             ),


             //gmail + apple + facebook sign buttons
             const SizedBox(height: 25,),

             Padding(
               padding: const EdgeInsets.only(left:100.0 ,right:70.0,top: 10 ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[ 

                //Gmail 
                SquareTile(imagePath: 'lib/images/Gmail_Logo_512px.png'),
                SizedBox(width: 30,),

                //apple
                SquareTile(imagePath: 'lib/images/apple-logo-png-black.png'),
                SizedBox(width: 30,),

                //facebook
                SquareTile(imagePath: 'lib/images/Facebook_Logo_2023.png'),
                SizedBox(width: 30,),

                ],
               ),
             ),
             const SizedBox(height: 70,),

             //not a member? register now!

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Color.fromARGB(255, 0, 102, 164),
                  fontSize: 12.0,
                  //fontWeight: FontWeight.bold,
                  )
                  ),
                 SizedBox(width: 4,),
                Text(
                  'Register now',
                  style: TextStyle(color: Color.fromARGB(255, 246, 80, 43),
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  ),
                )
              ],
             )


              
            ],
          )
        )
      ),
    );
    
  }
}