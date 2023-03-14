import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:restaurant_pos_flutter_web/Styles/style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List foods = [
    "burrger",
    "burrger",
    "burrger",
    "burrger",
    "burrger",
    "burrger"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height,
            width: size.width * 2 / 3,
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
                horizontal: size.width * 0.02,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: boldText.copyWith(fontSize: 20.0),
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                    ),
                    SizedBox(
                      height: size.height * 0.15,
                      width: size.width * 0.25,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: boldText.copyWith(
                            color: blackish.withOpacity(0.6),
                            fontSize: 12.0,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: blackish.withOpacity(0.6),
                          ),
                          fillColor: deepGrayish,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: size.height * 0.15,
                    //   width: size.width * 0.1,
                    //   child: IconButton(
                    //     icon: const Icon(
                    //       Icons.filter_list_rounded,
                    //       color: Colors.black,
                    //     ),
                    //     color: orangish,
                    //     onPressed: () {},
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  // runAlignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  runSpacing: size.width * 0.02,
                  spacing: size.width * 0.01,
                  children: [for (var food in foods) foodCard(context, food)],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              // width: size.width * 0.5 / 3,
              color: bluish,
            ),
          ),
        ],
      ),
    );
  }

  Widget foodCard(BuildContext context, String foodName) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.4,
      width: size.width * 0.2,
      child: Card(
        color: Colors.green,
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.25,
              width: size.width,
              color: Colors.red,
            ),
            Container(
              height: size.height * 0.1,
              width: size.width,
              color: Colors.green,
              child: Text(foodName),
            ),
          ],
        ),
      ),
    );
  }
}
