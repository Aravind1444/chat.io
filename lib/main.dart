import 'package:chatio/views/signin.dart';
import 'package:chatio/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => SignUp(),
        ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cred =  const Color(0xFFff5757);
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/chatio.png'),
        ),
      ),
      backgroundColor: cred,
    );
  }
}
