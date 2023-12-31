import 'model.dart';
import 'package:flutter/material.dart';
import 'nextrouter.dart';

class ItemUser extends StatelessWidget {
  final int index;
  final UserModel data;

  const ItemUser(this.index, this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[600],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.black87,
              child: Text(
                data.codeName,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: Text(data.major),
                  ),
                ],
              ),
            )),
          ],
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NextRoute(
                    appbarname: data.name,
                  )));
        },
      ),
    );
  }
}
