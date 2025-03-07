import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/sub_c_intriduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_intriduction_call_ui.dart'; // นำเข้าไฟล์หน้าถัดไป

class SubBIntriductionCallUI extends StatefulWidget {
  const SubBIntriductionCallUI({super.key});

  @override
  State<SubBIntriductionCallUI> createState() => _SubBIntriductionCallUIState();
}

class _SubBIntriductionCallUIState extends State<SubBIntriductionCallUI> {


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
                  'assets/images/subB.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text("อุบัติเหตุ ป่วยฉุกเฉิน ไฟไหม้",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("รถหาย สัตว์ร้ายเข้าบ้าน",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("ทุกอย่างเกิดขึ้นได้ตลอดเวลา",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("จะดีกว่าไหม",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("เมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              Text("สามารถโทรแจ้งได้ทันท่วงที",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  )),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "ไม่ต้องรอ ",
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
                "อุบัติเหตุ-เหตุฉุกเฉิน",
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
