import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('LOGIN FORM'),
            leading: Icon(Icons.login)),
        body: Form(
            child: ListView(padding: EdgeInsets.all(20), children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email Address",
            ),
          ),

          TextFormField(
            controller: passwordController,
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: "Password"),
          ),
          const SizedBox(height: 30),

          ElevatedButton(
              onPressed: () {
                print("Email: ${emailController.text}");
                print("Password: ${passwordController.text}");
              },
              child: Text("LOGIN")) //ElevatedButton
        ] //children
                ) //Listview
            ) //Form
        ); //Scaffold
  } //Widget
} //FirstPage