import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/profile.dart';
import 'package:fluttershopping/screen/welcome.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  String message;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(
                  title: Text("Login"),
                ),
                body: Container(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email", style: TextStyle(fontSize: 20)),
                          TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Please Fill Email Address"),
                              EmailValidator(
                                  errorText:
                                      "Please Enter valid Email Address"),
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (String email) {
                              profile.email = email;
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text("Password", style: TextStyle(fontSize: 20)),
                          TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Please Fill Password"),
                            ]),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onSaved: (String password) {
                              profile.password = password;
                            },
                          ),
                          SizedBox(height: 40.0),
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () async {
                                  if (formKey.currentState.validate()) {
                                    formKey.currentState.save();
                                    try {
                                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                                        email: profile.email,
                                         password: profile.password).then((value){
                                           formKey.currentState.reset();
                                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                             return WelcomeScreen();

                                           }));

                                         });
                                      
                                    } on FirebaseAuthException catch (e) {
                                      
                                      Fluttertoast.showToast(
                                          msg: e.message,
                                          gravity: ToastGravity.CENTER);
                                    }
                                  }
                                },
                              )),
                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: Text("Back to Home",
                                    style: TextStyle(fontSize: 20)),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomeScreen();
                                  }));
                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                )));
          }

          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}