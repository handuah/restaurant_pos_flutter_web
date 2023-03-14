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
  int drawIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.6,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            Icon(
              Icons.point_of_sale_outlined,
              color: orangish,
            ),
          ],
        ),
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.1,
            ),
            Icon(
              Icons.calendar_view_month_sharp,
              color: blackish,
            ),
          ],
        ),
        // actions: [
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Icon(
        //         Icons.circle_notifications_rounded,
        //         color: orangish,
        //       ),
        //       CircleAvatar(
        //         maxRadius: 14.0,
        //       ),
        //       Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Hannah Duah',
        //             style: blackText.copyWith(fontSize: 8.0),
        //           ),
        //           Text(
        //             'Frontend Developer',
        //             style: blackText.copyWith(
        //                 fontSize: 8.0, color: blackish.withOpacity(0.8)),
        //           ),
        //         ],
        //       ),
        //     ],
        //   )
        // ],
      ),
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.white,
            elevation: 0.6,
            width: size.width * 0.15,
            child: ListView(
              children: [
                // const DrawerHeader(
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //   ),
                //   child: Text('Drawer Header'),
                // ),
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: Text(
                    'Dashboard',
                    style: boldText.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      drawIndex = 0;
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: boldText.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      drawIndex = 1;
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.assignment_sharp),
                  title: Text(
                    'Inventory',
                    style: boldText.copyWith(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      drawIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(getText(drawIndex)),
            ),
          ),
        ],
      ),
    );
  }

  String getText(int index) {
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Home';
      case 2:
        return 'Inventory';
      default:
        return 'No such page';
    }
  }
}
