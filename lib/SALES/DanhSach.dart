import 'package:flutter/material.dart';

class DanhSach extends StatefulWidget {
  const DanhSach({super.key});

  @override
  State<DanhSach> createState() => _DanhSachState();
}

class _DanhSachState extends State<DanhSach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'Danh Sách',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}