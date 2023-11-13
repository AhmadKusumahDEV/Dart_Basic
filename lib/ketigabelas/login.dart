import 'package:flutter/material.dart';
import './services/login_service.dart';
import './beranda.dart';

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
      child: ElevatedButton(
          onPressed: () async {
            String username = _username.text;
            String password = _password.text;
            await LoginService().login(username, password).then((value) {
              if (value) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Beranda(),
                ));
              } else {
                AlertDialog alertdia = AlertDialog(
                  content: const Text("username atau password salah"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: const Text("ok"))
                  ],
                );
                showDialog(context: context, builder: (context) => alertdia);
              }
            });
          },
          child: const Text("Login")),
    );
  }
}
