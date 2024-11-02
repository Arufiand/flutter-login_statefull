import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.all(20.0),
      child : Form(
        key: formKey,
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
      validator: (value) => validateField('email', value!),
      onSaved: (value){
        password = value!;
      },
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password Label',
        hintText: 'Password Hint',
      ),
      validator: (value) => validateField('password', value!),
      onSaved: (value){
        password = value!;
      },
    );
  }

  Widget submitButton(){
    return ElevatedButton(
      child : const Text('Submit'),
      onPressed : () {
        // formKey.currentState?.reset(); // To reset the form
        if(formKey.currentState!.validate()){
          // To validate the form
          formKey.currentState?.save();
          print('email = $email password = $password');
        }
      }
    );
  }
}