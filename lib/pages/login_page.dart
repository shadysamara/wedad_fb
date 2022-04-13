import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wedad_fb/firebaseAuth_helper.dart';
import 'package:wedad_fb/pages/register_page.dart';
import 'package:wedad_fb/widgets/custom_button.dart';
import 'package:wedad_fb/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  login() {
    FireAuthHelper.fireAuthHelper
        .login(emailController.text, passwordController.text,context);
  }
  goToRegister(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return RegisterScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          CustomTextField(emailController, 'Enter the Email',
              const EdgeInsets.symmetric(horizontal: 10, vertical: 8)),
          CustomTextField(passwordController, 'Enter the Password',
              const EdgeInsets.symmetric(horizontal: 10, vertical: 8)),
          
          CustomButton('Login', login),
           CustomButton('Create New Account', goToRegister,Colors.orangeAccent)
        ],
      ),
    );
  }
}
