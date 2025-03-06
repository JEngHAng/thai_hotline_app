import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/home_ui.dart';

class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

class _SubAHomeUIState extends State<SubAHomeUI> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            Spacer(), // เพิ่ม Spacer เพื่อให้ข้อความอยู่กลาง
            Text(
              "สายด่วน THAILAND",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Spacer(), // เพิ่ม Spacer อีกอัน เพื่อให้ไอคอนชิดขวา
            IconButton(
              icon: Icon(
                Icons.info, // เปลี่ยนเป็นไอคอนที่ต้องการ
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeUI(),
                  ),
                );
              },
            ),
          ],
        ),
        centerTitle: false, // ปิดการใช้ centerTitle เพราะเราจัดการตำแหน่งเอง
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              "สายด่วน",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "การเดินทาง",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            SizedBox(
              width: 175,
              height: 175,
              child: Image.asset(
                'assets/images/subA.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
