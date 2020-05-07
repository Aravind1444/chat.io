import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final cred =  const Color(0xFFff5757);
    final cyellow =  const Color(0xFFf7cb72);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Container(
                      child: Image(
                        image: AssetImage('images/signin2.png'),
                        height: 250,
                      ),
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Container(
                        color: Colors.white,
                        child: Center(child: Text("chat.io", style: TextStyle(fontSize: 60, color: cred, fontWeight: FontWeight.bold),)),
                        height: 75,
                        width: 100,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                hintText: "e-mail", hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                ),

                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            TextField(
                              decoration: InputDecoration(
                                  hintText: "password", hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Container(
                              alignment: Alignment.centerRight,
                              child: Text("Forgot Password?", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),
                            ),

                            SizedBox(height: 20,),

                            Container(
                              decoration: BoxDecoration(
                                color: cred,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: Center(child: Text("Sign In", style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                            ),

                            SizedBox(height: 10,),

                            Container(
                              decoration: BoxDecoration(
                                color: cred,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: Center(child: Text("Sign in with Google", style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                            ),

                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Don't have an account? ", style: TextStyle(fontSize: 15,color: Colors.black54),),
                                Text("Register Now", style: TextStyle(fontSize: 15,color: Colors.black54,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),),
                              ],
                            )



                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }

}
