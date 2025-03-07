import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
 
class SubBHomeUI extends StatefulWidget {
  const SubBHomeUI({super.key});
 
  @override
  State<SubBHomeUI> createState() => _SubBHomeUIState();
}
 
class _SubBHomeUIState extends State<SubBHomeUI> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "อุบัติเหตุ-เหตุฉุกเฉิน",
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
                'assets/images/subB.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}