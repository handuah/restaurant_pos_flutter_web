import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restaurant_pos_flutter_web/Styles/style.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Drawer(
            backgroundColor: orangish,
            // width: size.width * 0.2,
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text(
                    'Dashboard',
                    style: boldText.copyWith(fontSize: 20.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
