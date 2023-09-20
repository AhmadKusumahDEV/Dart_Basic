import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  const Helloworld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("menjadi lebih baik"),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
