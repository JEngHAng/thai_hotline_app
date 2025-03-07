import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart'; // นำเข้าไฟล์หน้าถัดไป

class SubDIntriductionCallUI extends StatefulWidget {
  const SubDIntriductionCallUI({super.key});

  @override
  State<SubDIntriductionCallUI> createState() => _SubDIntriductionCallUIState();
}

class _SubDIntriductionCallUIState extends State<SubDIntriductionCallUI> {

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
                  'assets/images/subD.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text("น้ำไม่ไหล",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("ไฟฟ้าดับ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("โทรไม่ติด",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("อินเตอร์เน็ตมีปัญหา",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("เข้า Social Media ไม่ได้",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "รอไม่ได้ ",
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Text(
                "สายด่วน",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "สาธารณูปโภค",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
