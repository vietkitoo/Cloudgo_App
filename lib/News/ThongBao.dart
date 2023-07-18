import 'package:flutter/material.dart';
import 'package:cloudgo_app/PageThongBao/TabTinTuc.dart';
import 'package:cloudgo_app/PageThongBao/TabCapNhat.dart';
import 'package:cloudgo_app/Setting/Setting.dart';

class ThongBao extends StatefulWidget {
  const ThongBao({super.key});

  @override
  State<ThongBao> createState() => _ThongBaoState();
}

class _ThongBaoState extends State<ThongBao>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'Thông Báo',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MultiSwitch()),
              );
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  // height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.black,
                          controller: tabController,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          tabs: const [
                            Tab(
                              text: 'Cập nhật',
                            ),
                            Tab(
                              text: 'Tin Tức',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        CapNhat(),
                        TinTuc(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
