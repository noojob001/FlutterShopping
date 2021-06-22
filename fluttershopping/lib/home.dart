import 'package:flutter/material.dart';
import 'package:fluttershopping/screen/login.dart';
import 'package:fluttershopping/screen/register.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                  'images/1.jpg',
                  semanticLabel: 'This is Noodles',
                  width: 400.0,
                  height: 300.0,
                  fit: BoxFit.contain,
                      ),
              SizedBox(height: 0.0),
              SizedBox(
                  width: 250.0,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.login),
                    label: Text("Login     ", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return LoginScreen();
                      })
                      );         
                    },
                  )
                  ),
              SizedBox(height: 5.0),
              SizedBox(
                  width: 250.0,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Register", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return RegisterScreen();
                      })
                      );         
                    },
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
