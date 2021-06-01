import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
        padding: const EdgeInsets.fromLTRB(30, 80, 30, 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                  image: NetworkImage(
                      "https://transcode-v2.app.engoo.com/image/fetch/f_auto,c_lfill,w_800,h_600,dpr_3/https://assets.app.engoo.com/images/JyRhUr6TrWFiVEB7J3frDhxxYBLXmLYTetihtaT1EKN.jpeg"
                      )
                      ),
              SizedBox(height: 40.0),
              SizedBox(
                  width: 250.0,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.login),
                    label: Text("Login     ", style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  )
                  ),
              SizedBox(height: 5.0),
              SizedBox(
                  width: 250.0,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label: Text("Register", style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
