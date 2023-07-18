import 'package:cloudgo_app/ForgotPass/ForgotPass.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          getBodyWidget,
          getForgotPass(context),
        ],
      ),
    );
  }

  Widget get getBodyWidget {
    return  Container(
      // color: Colors.blue,
      child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(30, 170, 30, 0),
              child: Image.asset("assets/images/logo.png"),
            ),
            getBoxUserNameWidget,
            getBoxPassWordWidget,
            getButtonLogin,

          ],

      ),
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

  Widget get getBoxPassWordWidget {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
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
              Icons.lock,
              size: 26,
              color: Colors.black,
            ),
            hintText: "Mật khẩu",
          ),
          obscureText: true,
        ),
      ),
    );
  }

  Widget get getButtonLogin {
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
          'Đăng nhập',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget getForgotPass (BuildContext context) {

    return Container(
      margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ForgotPass()));
        },
        child: const Text(
          "Quên mật khẩu",
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
