import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('FIRSTPAGE by Leo'),
            leading: Icon(Icons.home)),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              email: "${emailController.text}",
                              password: "${passwordController.text}",
                            )));
              },
              child: Text("SUBMIT")),
          const SizedBox(height: 30),
          Text(" click submit to open next page")
        ])));
  }
}

class SecondPage extends StatelessWidget {
  String? email;
  String? password;

  SecondPage({this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('SECOND PAGE by Leo'), leading: Icon(Icons.man)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("WELCOME"),
          const SizedBox(height: 30),
          Text("EMAIL: $email \nPASSWORD: $password"),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage()));
              },
              child: Text("GO BACK TO PAGE 1"))
        ],
      )),
    );
  }
}
