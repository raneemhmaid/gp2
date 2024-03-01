import 'package:flutter/material.dart';
import 'package:test_project/firebase_options.dart';
import 'pages/Login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); 
  //cuurentplatform means (run on ios,web,android)
  runApp(const MyApp());
}

class Auth{
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? get currentUser => auth.currentUser;  
  //ti know if anyone have signed in  or not
  Stream <User?> get AuthenticateChanges  => auth.authStateChanges(); 
  Future<void> signInWithEmailAndPassword(
    {
      required String email,
      required String password,
    }
  )async{
    await auth.signInWithEmailAndPassword(
      email: email,
      password: password);
  }

  Future<void>creatUserWithEmailAndPassword(
    {
      required String email,
      required String password,
    }
  )async{
    auth.createUserWithEmailAndPassword(
      email: email,
    password: password);
  }
  Future<void> signOut() async{
    await auth.signOut();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}

