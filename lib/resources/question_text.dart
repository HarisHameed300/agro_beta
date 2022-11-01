import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({
    Key? key, required this.questionNo, required this.question,
  }) : super(key: key);
final String? questionNo; 
final String? question; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.5.h),
      child: RichText(text: 
       TextSpan(
        children: [
          TextSpan(
         text: 'Q${questionNo}: ',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),
          ),
          TextSpan(
         text: question,style: const TextStyle(fontSize: 16.0,color: Colors.black),
          ),
          const TextSpan(
         text: '\nAns: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.black),
          ),
        ],
      ),
      ),
    );
  }
}