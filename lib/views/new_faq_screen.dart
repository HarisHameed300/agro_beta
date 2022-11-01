

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NewFaqScreen extends StatefulWidget {
  const NewFaqScreen({super.key});

  @override
  State<NewFaqScreen> createState() => _NewFaqScreenState();
}

class _NewFaqScreenState extends State<NewFaqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
      ),

      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/faqScreenImage.png'),fit: BoxFit.cover),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h,),
            Text('Q1: What this app is all about?', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 1.h,),
            Text('Ans: This app is about to empower the women aged 25-40 in the tomato business to help reduce food insecurity in issele-uku community by 2025.', style: TextStyle(fontSize: 16.0,color: Colors.white),),

          ],
        ),
      ),
    );
  }
}