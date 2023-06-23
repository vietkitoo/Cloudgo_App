import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:cloudgo_app/Screens/CloudSALES.dart';
import 'package:flutter/material.dart';
import 'package:cloudgo_app/Screens/CloudWORK.dart';
import 'package:cloudgo_app/Screens/CloudCAM.dart';
import 'package:cloudgo_app/Screens/CloudCARE.dart';
import 'package:cloudgo_app/Screens/CLoudTELE.dart';
import 'package:cloudgo_app/Screens/CloudCHAT.dart';
import 'package:cloudgo_app/Screens/CloudPOS.dart';
import 'package:cloudgo_app/Screens/More....dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    List names = [
      'CloudSALES',
      'CloudWORK',
      'CloudCAM',
      'CloudCARE',
      'CloudTELE',
      'CloudCHAT',
      'CloudPOS',
      'More...',
      'CloudSALES',
      'CloudWORK',
      'CloudCAM',
      'CloudCARE',
      'CloudTELE',
      'CloudCHAT',
      'CloudPOS',
    ];
    int value = names.length - 7;
    int value2 = names.length;
    int check = 7;

    List<Color> colors = const [
      Color(0xFF4FEC6F),
      Color(0xFF003A72),
      Color(0xFFF68549),
      Color(0xFF5DC6EA),
      Color(0xFF86E5CA),
      Color(0xFFF32C2C),
      Color(0xFFEFC959),
      Color(0xFF86E5CA),
      Color(0xFF4FEC6F),
      Color(0xFF003A72),
      Color(0xFFF68549),
      Color(0xFF5DC6EA),
      Color(0xFF86E5CA),
      Color(0xFFF32C2C),
      Color(0xFFEFC959),
    ];

    List<Icon> icons = const [
      Icon(Icons.query_stats, color: Colors.white, size: 30),
      Icon(Icons.work, color: Colors.white, size: 30),
      Icon(Icons.camera_indoor_outlined, color: Colors.white, size: 30),
      Icon(Icons.groups, color: Colors.white, size: 30),
      Icon(Icons.support_agent, color: Colors.white, size: 30),
      Icon(Icons.chat, color: Colors.white, size: 30),
      Icon(Icons.monetization_on, color: Colors.white, size: 30),
      Icon(Icons.dashboard_customize, color: Colors.white, size: 30),
      Icon(Icons.query_stats, color: Colors.white, size: 30),
      Icon(Icons.work, color: Colors.white, size: 30),
      Icon(Icons.camera_indoor_outlined, color: Colors.white, size: 30),
      Icon(Icons.groups, color: Colors.white, size: 30),
      Icon(Icons.support_agent, color: Colors.white, size: 30),
      Icon(Icons.chat, color: Colors.white, size: 30),
      Icon(Icons.monetization_on, color: Colors.white, size: 30),
    ];

    List nameScreen = [
      const CloudSales(),
      const CloudWORK(),
      const CloudCAM(),
      const CloudCARE(),
      const CloudTELE(),
      const CloudChat(),
      const CloudPos(),
      const More(),
      const CloudSales(),
      const CloudWORK(),
      const CloudCAM(),
      const CloudCARE(),
      const CloudTELE(),
      const CloudChat(),
      const CloudPos(),
    ];
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    padding: const EdgeInsets.only(
                        top: 15, left: 15, right: 15, bottom: 10),
                    decoration: const BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(110),
                        bottomRight: Radius.circular(110),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 120),
                          width: 330,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search...",
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 120),
                          width: 35,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0x647A7676),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 15,
                  right: 15,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: AnotherCarousel(
                            images: const [
                              AssetImage("assets/images/4.png"),
                              AssetImage("assets/images/5.png"),
                              AssetImage("assets/images/3.jpg"),
                            ],
                            dotSize: 4,
                            indicatorBgPadding: 5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                (check != value) ? GridView.builder(
                  itemCount: value,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (index == 7) {
                              setState(() {
                                value = value2;
                              });
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => nameScreen[index]),
                              );
                            }
                            ;
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: colors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: icons[index],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          names[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  },
                )
                : GridView.builder(
                  itemCount: value2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (index == 7) {
                              setState(() {
                                value2 = value;
                              });
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => nameScreen[index]),
                              );
                            }
                            ;
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: colors[index],
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: icons[index],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          names[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NEWS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      "See more..",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.all(12),
                    child: ClipRRect(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: const EdgeInsets.symmetric(vertical: 0),
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/3.jpg",
                              width: 320,
                            ),
                            Container(width: 15),
                            Image.asset(
                              "assets/images/1.jpg",
                              width: 320,
                            ),
                            Container(width: 15),
                            Image.asset(
                              "assets/images/4.png",
                              width: 320,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
