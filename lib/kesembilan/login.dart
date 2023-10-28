import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Login Admin",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Form(
                  key: _formkey,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Column(
                      children: [
                        _usernameText(),
                        const SizedBox(
                          height: 20,
                        ),
                        _passwordText(),
                        const SizedBox(
                          height: 20,
                        ),
                        _loginbutton()
                      ],
                    ),
                  )),
            )
          ],
        ),
      ))),
    );
  }

  Widget _usernameText() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "username"),
      controller: _username,
    );
  }

  Widget _passwordText() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "password"),
      controller: _password,
    );
  }

  Widget _loginbutton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: () {}, child: const Text("Login")),
    );
  }
}
