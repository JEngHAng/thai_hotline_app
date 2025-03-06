import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/sub_d_intriduction_call_ui.dart'; // นำเข้าไฟล์หน้าถัดไป

class SubCIntriductionCallUI extends StatefulWidget {
  const SubCIntriductionCallUI({super.key});

  @override
  State<SubCIntriductionCallUI> createState() => _SubCIntriductionCallUIState();
}

class _SubCIntriductionCallUIState extends State<SubCIntriductionCallUI> {
  void _skipToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SubDIntriductionCallUI()),
    );
  }

  void _goToNextScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SubDIntriductionCallUI()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/images/subC.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text("เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("กิน เที่ยว ซื้อสินค้า",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("การเดินทาง การรักษาพยาบาล",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("หรือโดนเหตุมิจฉาชีพ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("แก๊งคอลเซ็นเตอร์หลอกลวง",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("สามารถติดต่อธนาคารโดยตรง",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "ได้เลย ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: "โทรเลย!!!",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                "สายด่วน",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "ธนาคาร",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// ปุ่ม "ข้าม"
                    TextButton(
                      onPressed: () => _skipToHome(context),
                      child: Text(
                        "ข้าม",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    /// แสดงหน้าปัจจุบัน (1 เป็นสีฟ้า, 3 เป็นสีเทา)
                    Row(
                      children: List.generate(4, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == 2
                                ? const Color.fromARGB(255, 0, 0, 255)
                                : const Color.fromARGB(255, 185, 185, 185),
                          ),
                        );
                      }),
                    ),

                    /// ปุ่มลูกศรไปหน้าถัดไป
                    ElevatedButton(
                      onPressed: () => _goToNextScreen(context),
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.blue,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
