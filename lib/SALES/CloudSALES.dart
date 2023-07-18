import 'package:flutter/material.dart';
import '../Activity/smallActivity.dart';
import '../Activity/bigActivity.dart';

class CloudSales extends StatefulWidget {
  const CloudSales({super.key});

  @override
  State<CloudSales> createState() => _CloudSalesState();
}

class _CloudSalesState extends State<CloudSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBodyWidget,
    );
  }

  Widget get getBodyWidget {
    return SingleChildScrollView(
      child: Column(
        children: [
          getHeaderWidget,
          getActiWidget,
          Container(
            height: 10,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }

  Widget get getHeaderWidget {
    final wScreen = MediaQuery.of(context).size.width;
    final appBarPadding = MediaQuery.of(context).viewPadding.top;
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 160,
              width: wScreen,
              padding: EdgeInsets.only(top: appBarPadding),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Search",
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.account_circle_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
          Positioned(
              top: 80,
              child: SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        height: 180,
                        width: wScreen - 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                child: Text(
                                  "DOANG THU THÁNG NÀY:",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget get getActiWidget {
    final wScreen = MediaQuery.of(context).size.width;
    return SizedBox(
      child: SizedBox(
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                height: 100,
                width: wScreen - 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        getSmallChildActiWidget(
                            Colors.purpleAccent,
                            Icons.account_circle_outlined,
                            'Lead mới',
                            '225',
                            '195'),
                        getBigChildActiWidget(Colors.greenAccent, Icons.list,
                            'Công việc', '225', '195'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        getBigChildActiWidget(Colors.lightBlueAccent,
                            Icons.call, 'Cuộc gọi', '225', '195'),
                        getSmallChildActiWidget(
                            Colors.redAccent,
                            Icons.supervised_user_circle_outlined,
                            'Cuộc họp',
                            '225',
                            '195'),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
