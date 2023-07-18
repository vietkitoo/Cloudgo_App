import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBodyWidget,
    );
  }

  Widget get getBodyWidget {
    return Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(30, 170, 30, 0),
            child: Image.asset("assets/images/logo.png"),
          ),
          getBoxUserNameWidget,
          getBoxEmailWidget,
          getButtonForgotPassWidget,
        ],
    );
  }

  Widget get getBoxUserNameWidget {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.account_circle,
                size: 26,
                color: Colors.black,
              ),
              hintText: "Tên đăng nhập",
            )),
      ),
    );
  }

  Widget get getBoxEmailWidget {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.account_circle,
                size: 26,
                color: Colors.black,
              ),
              hintText: "Email",
            )),
      ),
    );
  }

  Widget get getButtonForgotPassWidget{
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 25, 30, 0),
      height: 55,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.lightBlueAccent,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Lấy lại mật khẩu',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
