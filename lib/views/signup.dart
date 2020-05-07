import 'package:chatio/services/auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;
  AuthMethods authMethods = new AuthMethods();

  final formKey = GlobalKey<FormState>();

  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();

  signMeUP(){
    if(formKey.currentState.validate()){
      setState(() {
        isLoading = true;
      });
      
      authMethods.signInWithEmailAndPassword(emailTextEditingController.text, passwordTextEditingController.text).then((val){
        print("$val");
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    final cred =  const Color(0xFFff5757);
    final cyellow =  const Color(0xFFf7cb72);

    return Scaffold(
        body: isLoading ? Center(
          child: Container(
            child: CircularProgressIndicator(),
          ),
        ) : SingleChildScrollView(
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
                          image: AssetImage('images/signup1.png'),
                          height: 225,
                        ),
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Container(
                          color: Colors.white,
                          child: Center(child: Text("chat.io", style: TextStyle(fontSize: 60, color: cred, fontWeight: FontWeight.bold),)),
                          height: 75,
                          width: 100,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                        child: Container(
                          child: Column(
                            children: <Widget>[

                              Form(
                                key: formKey,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      validator: (val){
                                        return val.isEmpty || val.length < 4 ? "Please provide a unique usernam!" : null;
                                      },
                                      controller: userNameTextEditingController,
                                      decoration: InputDecoration(
                                        hintText: "username", hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: cyellow,
                                          ),
                                        ),

                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),


                                    TextFormField(
                                      validator: (val){
                                        return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ? null : "Enter a valid email";
                                        },

                                      controller: emailTextEditingController,
                                      decoration: InputDecoration(
                                        hintText: "e-mail", hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: cyellow,
                                          ),
                                        ),

                                      ),
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),

                                    TextFormField(
                                      obscureText: true,
                                      validator: (val){
                                        return val.length > 6 ? null : "Please provide a password with 6+ character";
                                      },
                                      controller: passwordTextEditingController,
                                      decoration: InputDecoration(
                                        hintText: "password", hintStyle: TextStyle(fontSize: 20, color: Colors.black26),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: cyellow,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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

                              GestureDetector(
                                onTap: (){
                                  signMeUP();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: cyellow,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: Center(child: Text("Sign Up", style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                                ),
                              ),

                              SizedBox(height: 10,),

                              Container(
                                decoration: BoxDecoration(
                                  color: cyellow,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Center(child: Text("Sign up with Google", style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
                              ),

                              SizedBox(height: 10,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Already have an account? ", style: TextStyle(fontSize: 15,color: Colors.black54),),
                                  Text("Sign In", style: TextStyle(fontSize: 15,color: Colors.black54,decoration: TextDecoration.underline, fontWeight: FontWeight.bold),),
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
