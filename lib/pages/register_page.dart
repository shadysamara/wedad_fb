import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wedad_fb/firebaseAuth_helper.dart';
import 'package:wedad_fb/pages/login_page.dart';
import 'package:wedad_fb/widgets/custom_button.dart';
import 'package:wedad_fb/widgets/custom_textfield.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  register() {
   FireAuthHelper.fireAuthHelper
        .register(emailController.text, passwordController.text, context);
 
  }

    goToLogin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        children: [
          CustomTextField(emailController, 'Enter the Email',
              const EdgeInsets.symmetric(horizontal: 10, vertical: 8)),
          CustomTextField(passwordController, 'Enter the Password',
              const EdgeInsets.symmetric(horizontal: 10, vertical: 8)),
          CustomButton('Register', register),
          
           CustomButton('Already have Account', goToLogin,Colors.orangeAccent)
  
        ],
      ),
    );
  }
}
