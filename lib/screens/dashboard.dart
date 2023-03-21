import 'package:flutter/material.dart';
import 'package:restaurant_pos_flutter_web/Styles/style.dart';
import 'package:restaurant_pos_flutter_web/screens/dashContent.dart';
import 'package:restaurant_pos_flutter_web/screens/inventory.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int drawIndex = 0;
  bool isDashSelected = true;
  bool isHomeSelected = false;
  bool isInvSelected = false;
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
                Ink(
                  color: isDashSelected ? orangish : Colors.white,
                  child: ListTile(
                    leading: const Icon(
                      Icons.dashboard,
                    ),
                    iconColor: isDashSelected ? Colors.white : blackish,
                    title: Text(
                      'Dashboard',
                      style: boldText.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: isDashSelected ? Colors.white : blackish,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        drawIndex = 0;
                        isDashSelected = !isDashSelected;
                      });
                    },
                  ),
                ),
                Ink(
                  color: isHomeSelected ? orangish : Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.home),
                    iconColor: isHomeSelected ? Colors.white : blackish,
                    title: Text(
                      'Home',
                      style: boldText.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: isHomeSelected ? Colors.white : blackish,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        drawIndex = 1;
                        isHomeSelected = !isHomeSelected;
                      });
                    },
                  ),
                ),
                Ink(
                  color: isInvSelected ? orangish : Colors.white,
                  child: ListTile(
                    leading: const Icon(Icons.assignment_sharp),
                    iconColor: isInvSelected ? Colors.white : blackish,
                    title: Text(
                      'Inventory',
                      style: boldText.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: isInvSelected ? Colors.white : blackish,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        drawIndex = 2;
                        isInvSelected = !isInvSelected;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: getText(drawIndex),
            ),
          ),
        ],
      ),
    );
  }

  Widget getText(int index) {
    switch (index) {
      case 0:
        return const DashContent();
      case 1:
        return const Home();
      case 2:
        return const Inventory();
      default:
        return const Center();
    }
  }
}
