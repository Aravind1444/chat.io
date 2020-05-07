import 'package:chatio/services/auth.dart';
import 'package:chatio/views/signup.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    final cred =  const Color(0xFFff5757);
    final cyellow =  const Color(0xFFf7cb72);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: cred,
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(Icons.exit_to_app)),
          ),

        ],
        title: Text("chat.io", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
