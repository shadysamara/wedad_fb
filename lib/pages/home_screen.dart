import 'package:flutter/material.dart';
import 'package:wedad_fb/firebaseAuth_helper.dart';
import 'package:wedad_fb/pages/login_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async{
               await FireAuthHelper.fireAuthHelper.logOut();
                   Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              icon: Icon(Icons.logout))
        ],
        title: Text('Home Screen'),
      ),
      body: Center(child: Text('BODY')),
    );
  }
}
