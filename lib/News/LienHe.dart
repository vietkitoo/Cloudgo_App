import 'package:flutter/material.dart';

class LienHe extends StatefulWidget {
  const LienHe({super.key});

  @override
  State<LienHe> createState() => _LienHeState();
}

class _LienHeState extends State<LienHe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kênh hỗ trợ',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Container(
            alignment: Alignment.bottomLeft,
            child: const Text(
              '\t Bạn cần sự hỗ trợ từ chúng tôi?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

    );
  }
}
