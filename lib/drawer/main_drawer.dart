import 'package:daily_cost/utils/constants.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, routeNameDashboard);
            },
            leading: const Icon(Icons.currency_bitcoin),
            title: const Text("Dashboard"),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, routeNameHeadPage);
            },
            leading: const Icon(Icons.currency_bitcoin_outlined),
            title: const Text("Head"),
          )
        ],
      ),
    );
  }
}
