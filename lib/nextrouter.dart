import 'package:flutter/material.dart';

class NextRoute extends StatelessWidget {
  final String appbarname;
  const NextRoute({super.key, this.appbarname = "route"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appbarname),
        ),
        body: Center(
          child: Text(appbarname),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => Navigator.of(context).pop()));
  }
}
