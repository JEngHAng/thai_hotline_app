import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
 
class SubAHomeUI extends StatefulWidget {
  const SubAHomeUI({super.key});
 
  @override
  State<SubAHomeUI> createState() => _SubAHomeUIState();
}
 
class _SubAHomeUIState extends State<SubAHomeUI> {
 
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