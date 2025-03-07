import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thai_hotline_app/views/sub_a_intriduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_b_intriduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_c_intriduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_intriduction_call_ui.dart';
import 'package:thai_hotline_app/views/home_ui.dart'; // import หน้า HomeUI

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<Widget> pages = [
    SubAIntriductionCallUI(), // หน้า 1
    SubBIntriductionCallUI(), // หน้า 2
    SubCIntriductionCallUI(), // หน้า 3
    SubDIntriductionCallUI(), // หน้า 4
  ];

  // ฟังก์ชัน "ไปหน้าถัดไป"
  void nextPage() {
    if (currentPage < pages.length - 1) {
      _pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeUI())); // ไปหน้า HomeUI
    }
  }

  // ฟังก์ชัน "ข้าม" ไปหน้าสุดท้าย
  void skipToLastPage() {
    _pageController.animateToPage(
      pages.length - 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: pages, // แสดงหน้าแต่ละหน้า
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // แสดงปุ่ม "ข้าม" ถ้ายังไม่ถึงหน้าที่ 4
                if (currentPage < pages.length - 1)
                  TextButton(
                    onPressed: skipToLastPage,
                    child: Text("ข้าม",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  )
                else
                  SizedBox(
                      width: 48), // ให้มีขนาดเท่ากับปุ่มข้ามเพื่อให้จุดตรงกลาง

                // จุดแสดงสถานะอยู่ตรงกลาง
                SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: const Color.fromARGB(255, 76, 0, 255),
                    dotColor: Colors.grey,
                  ),
                ),

                // เปลี่ยนไอคอนเป็น "โทรเลย" ถ้าเป็นหน้าสุดท้าย
                currentPage == pages.length - 1
                    ? ElevatedButton(
                        onPressed: nextPage, // กดแล้วไปหน้า HomeUI
                        child: Text(
                          "โทรเลย",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    : IconButton(
                        onPressed: nextPage, // ไปหน้าถัดไป
                        icon: Icon(Icons.arrow_forward, size: 28),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
