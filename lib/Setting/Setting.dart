import 'package:cloudgo_app/News/ThongBao.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiSwitch extends StatefulWidget {
  const MultiSwitch({super.key});

  @override
  State<MultiSwitch> createState() => _MultiSwitchState();
}

class _MultiSwitchState extends State<MultiSwitch> {

  bool val1 = true;
  bool val2 = true;
  bool val3 = true;
  bool val4 = true;
  bool val5 = true;
  bool val6 = true;


  onChangeFunction1(bool newValue1){
    setState(() {
      val1 = newValue1;
    });
  }
  onChangeFunction2(bool newValue2){
    setState(() {
      val2 = newValue2;
    });
  }
  onChangeFunction3(bool newValue3){
    setState(() {
      val3 = newValue3;
    });
  }
  onChangeFunction4(bool newValue4){
    setState(() {
      val4 = newValue4;
    });
  }
  onChangeFunction5(bool newValue5){
    setState(() {
      val5 = newValue5;
    });
  }
  onChangeFunction6(bool newValue6){
    setState(() {
      val6 = newValue6;
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_backspace,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: const Text(
            'Cài Đặt',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSwitch('Nhận thông báo', val1, onChangeFunction1),
            Container(height: 3,),
            customSwitch('Nhận thông báo bàn giao việc', val2, onChangeFunction2),
            Container(height: 3,),
            customSwitch('Nhận thông báo cập nhật trên hồ sơ\nđang phụ trách', val3, onChangeFunction3),
            Container(height: 3,),
            customSwitch('Nhận thông báo cập nhật trên hồ sơ\nđang theo dõi', val4, onChangeFunction4),
            Container(height: 3,),
            customSwitch('Nhận thông báo task quá hạn,activity\ngần đến hạn, hợp đồng sắp hết hạn', val5, onChangeFunction5),
            Container(height: 3,),
            customSwitch('Nhận thông báo sinh nhật khách hàng', val6, onChangeFunction6),
          ],
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),),
          const Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.blueAccent,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              })
        ],
      ),
    );
  }
}
