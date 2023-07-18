import 'package:flutter/material.dart';

class ScreenMenuAcc extends StatefulWidget {
  const ScreenMenuAcc({super.key});

  @override
  State<ScreenMenuAcc> createState() => _ScreenMenuAccState();
}

class _ScreenMenuAccState extends State<ScreenMenuAcc> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        padding: const EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),
        children: [
          Container(height: 35,),
          UserTile(),
          Container(height: 25,),
          colorTiles(),
        ],
      ),
    );
  }

  Widget UserTile() {
    String url = "https://toigingiuvedep.vn/wp-content/uploads/2021/01/avatar-dep-cute.jpg";
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 50, // Đặt bán kính hình tròn là 50
        ),
        const SizedBox(height: 10), // Khoảng cách giữa hình ảnh và văn bản
        Text(
          'Nguyễn Văn Quốc Việt',
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
            fontSize: 18, // Kích thước chữ là 18
          ),
        ),
        SizedBox(height: 5), // Khoảng cách giữa tên và vai trò
        Text('Intern mobile dev',style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 15, // Kích thước chữ là 18
        ),),
      ],
    );
  }


  Widget colorTiles(){
    return Column(
      children: [
        colorTile(Icons.person_2_outlined, Colors.black, "Hồ sơ cá nhân"),
        colorTile(Icons.report, Colors.black, "Báo cáo"),
        colorTile(Icons.book, Colors.black, "Kho kiến thức"),
        colorTile(Icons.language, Colors.black, "Ngôn ngữ"),
        colorTile(Icons.feedback, Colors.black, "Đóng góp ý kiến"),
        colorTile(Icons.settings, Colors.black, "Cài đặt"),
        colorTile(Icons.info, Colors.black, "About us"),
        colorTile(Icons.logout, Colors.black, "Đăng xuất"),
      ],
    );
  }

  Widget colorTile(IconData icon,Color color, String text){
    return ListTile(
      leading: Container(
        child: Icon(icon, color: color),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color.withOpacity(0.09),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      title: Text(text, style: TextStyle(fontWeight: FontWeight.w500,)),
      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20),
    );
  }

}


