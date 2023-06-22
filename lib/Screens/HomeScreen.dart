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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      'More...'
    ];

    List<Color> colors = const [
      Color(0xFF4FEC6F),
      Color(0xFF003A72),
      Color(0xFFF68549),
      Color(0xFF5DC6EA),
      Color(0xFF86E5CA),
      Color(0xFFF32C2C),
      Color(0xFFEFC959),
      Color(0xFF86E5CA),
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
    ];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
            const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: 320,
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
                Container(width: 5,),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
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
          const SizedBox(height: 5,),
          Column(
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: names.length,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => nameScreen[index]),);
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
                const SizedBox(height: 5),
                SizedBox(
                  child: SizedBox(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            height: 170,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/3.jpg",
                                  width: 280,
                                ),
                                Container(width: 15),
                                Image.asset(
                                  "assets/images/1.jpg",
                                  width: 280,
                                ),
                                Container(width: 15),
                                Image.asset(
                                  "assets/images/4.png",
                                  width: 280,
                                ),
                                Container(width: 15),
                              ],
                            ),
                          ),
                        ],
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
