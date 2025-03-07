import 'package:flutter/material.dart';

class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});

  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}

class _SubAHomeUIState extends State<SubAHomeUI> {
  // รายการข้อมูลที่ต้องการแสดง
  final List<Map<String, String>> hotlineList = [
    {"title": "ข้อมูลจราจร", "number": "1197"},
    {"title": "ตำรวจทางหลวง", "number": "1193"},
    {"title": "ตำรวจท่องเที่ยว", "number": "1155"},
    {"title": "เส้นทางบนทางด่วน", "number": "1543"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            SizedBox(
              width: 175,
              height: 175,
              child: Image.asset(
                'assets/images/subA.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // ระยะห่างระหว่างรูปกับรายการ
            Expanded(
              child: ListView.builder(
                itemCount: hotlineList.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.image), // ไอคอนแทนรูปภาพ
                      title: Text(hotlineList[index]["title"]!),
                      subtitle: Text(hotlineList[index]["number"]!),
                      trailing: Icon(Icons.phone), // ไอคอนโทรศัพท์
                      onTap: () {
                        // เพิ่มโค้ดโทรออกได้ถ้าต้องการ
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
