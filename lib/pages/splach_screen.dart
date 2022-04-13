import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wedad_fb/pages/form_example.dart';
import 'package:wedad_fb/pages/home_screen.dart';
import 'package:wedad_fb/pages/login_page.dart';

class SplachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((v) {
      bool result = FirebaseAuth.instance.currentUser == null;
      if (result) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return FormValidation();
        }));
      }else{
         Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }));
      }
    });
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
