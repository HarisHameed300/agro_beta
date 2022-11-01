

import 'package:agro_beta_app/resources/question_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InterviewScreen extends StatefulWidget {
  const InterviewScreen({super.key});

  @override
  State<InterviewScreen> createState() => _InterviewScreenState();
}

class _InterviewScreenState extends State<InterviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interview'),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             SizedBox(height: 20.0,),
             Text('Interview session with women age 25-40', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
             SizedBox(height: 20.0,),

            QuestionText(
              questionNo:'1',
              question: 'What do you see as the problem of food insecurity in Nigeria?',
            ),
            QuestionText(questionNo: '2', question: 'Who benefits and who loses out from the current economic model surrounding food insecurity in the country?'),
            QuestionText(questionNo: '3', question: 'What has the government done to tackle this issue? Was it successful? If not, why?')
            

          ],
        ),
      ),
    );
  }
}

