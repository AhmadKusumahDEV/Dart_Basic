import 'package:flutter/material.dart';
import '../beranda.dart';
import '../poli_page.dart';
import '../login.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text("admin"),
              accountEmail: Text("admin@gmail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Beranda"),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Beranda())),
          ),
          ListTile(
            leading: const Icon(Icons.accessible),
            title: const Text("Poli"),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PoliPage())),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("pegawai"),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Beranda())),
          ),
          ListTile(
            leading: const Icon(Icons.account_box_sharp),
            title: const Text("pasien"),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Beranda())),
          ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text("keluar"),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const Login()),
                (Route<dynamic> route) => false),
          ),
        ],
      ),
    );
  }
}
