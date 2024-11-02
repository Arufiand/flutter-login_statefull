import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{

  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.all(20.0),
      child : Form(
        child: Column(
          children: [
          emailField(),
          passwordField(),
          Container(margin: const EdgeInsets.only(top: 25.0),),
          submitButton()
        ],
        ),
      )
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email Label',
        hintText: 'Email Hint',

      ),
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password Label',
        hintText: 'Password Hint',
      ),
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      child : const Text('Submit'),
      onPressed : () {}
    );
  }
}