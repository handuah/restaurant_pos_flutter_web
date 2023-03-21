import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_pos_flutter_web/Styles/style.dart';
import 'package:restaurant_pos_flutter_web/fake_jsons/categorybtns_fontawesome.dart';

import '../fake_jsons/categorybtns.dart';
import '../fake_jsons/foods.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      height: size.height * 0.08,
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
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.14,
                  // color: Colors.amber,
                  child: Center(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.04,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => categoryCard(
                          context,
                          categoryIcons[index]['categoryName'],
                          categoryIcons[index]['fontawesome_icon']),
                      separatorBuilder: (context, index) => SizedBox(
                        width: size.width * 0.02,
                      ),
                      itemCount: categoryStuff.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                // force container height based on content
                ConstrainedBox(
                  constraints: BoxConstraints(
                    // minWidth: size.width,
                    // minHeight: size.height * 0.5,
                    maxWidth: size.width,
                    maxHeight: size.height * 0.7,
                  ),
                  child: Container(
                    // width: size.width,
                    // height: size.height * 2.0,
                    // color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: size.width * 0.01,
                          mainAxisSpacing: size.width * 0.02,
                        ),
                        itemBuilder: (context, index) => foodCard(
                          context,
                          foods[index]["foodName"],
                          foods[index]["imgUrl"],
                          foods[index]["desc"],
                          foods[index]["price"],
                        ),
                        itemCount: foods.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              // color: bluish,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bills',
                    style: boldText.copyWith(fontSize: 20.0),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Container(
                    height: size.height * 1.5 / 2,
                    width: size.width,
                    // color: Colors.red,
                    child: ListView.separated(
                      padding: const EdgeInsets.all(8.0),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: size.height * 0.08,
                            width: size.width * 0.04,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5.0),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://recipetineats.com/wp-content/uploads/2018/04/Veggie-Burgers_9a.jpg"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Burger',
                                    style: blackText.copyWith(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.circleXmark,
                                    color: orangish,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.circleMinus,
                                        color: orangish,
                                      ),
                                      Text(
                                        '2',
                                        style: blackText.copyWith(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.circlePlus,
                                        color: orangish,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$10.00',
                                    style: blackText.copyWith(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      // padding: const EdgeInsets.all(8.0),
                      // itemBuilder: (context, index) {
                      //   Row(
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Container(
                      //         height: size.height * 0.1,
                      //         width: size.width * 0.05,
                      //         decoration: BoxDecoration(
                      //           color: Colors.orange,
                      //           borderRadius: BorderRadius.circular(20.0),
                      //           image: const DecorationImage(
                      //             fit: BoxFit.cover,
                      //             image: NetworkImage(
                      //                 "https://recipetineats.com/wp-content/uploads/2018/04/Veggie-Burgers_9a.jpg"),
                      //           ),
                      //         ),
                      //       ),
                      //       Text('Burger')
                      //     ],
                      //   );
                      //   return Container(
                      //     height: size.height * 0.1,
                      //     color: Colors.white,
                      //   );
                      // },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 1,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      // height: size.height * 0.2 / 2,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// CATEGORY BTNS
  Widget categoryCard(
      BuildContext context, String categoryName, IconData faIconName) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.07,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color.fromARGB(136, 217, 215, 215),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.06,
            width: size.width * 0.04,
            // color: Colors.red,
            child: Center(
              child: FaIcon(
                faIconName,
              ),
            ),
          ),
          Text(
            categoryName,
            style: blackText.copyWith(
              fontWeight: FontWeight.w100,
              color: blackish.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

// FOOD CARDS
  Widget foodCard(BuildContext context, String foodName, String foodImg,
      String foodDesc, double price) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onHover: (value) {},
      child: SizedBox(
        height: size.height * 0.12,
        width: size.width * 0.2,
        child: Card(
          // color: Colors.green,
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.24,
                width: size.width,
                // color: Colors.red,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(foodImg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.155,
                width: size.width,
                decoration: const BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: blackText.copyWith(fontSize: 18.0),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        foodDesc,
                        style: blackText.copyWith(
                          fontSize: 12.0,
                          color: blackish.withOpacity(
                            0.6,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\$$price",
                            style: blackText.copyWith(
                              fontSize: 16.0,
                              color: orangish.withOpacity(
                                0.6,
                              ),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            style: IconButton.styleFrom(elevation: 2.0),
                            icon: FaIcon(
                              FontAwesomeIcons.circlePlus,
                              color: greenish,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// SELECTED FOODS
}
