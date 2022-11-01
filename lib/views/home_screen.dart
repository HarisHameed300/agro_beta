
import 'package:agro_beta_app/resources/my_custom_button.dart';
import 'package:agro_beta_app/views/farmer_and_product_screen.dart';
import 'package:agro_beta_app/views/critical-thinking_screen.dart';
import 'package:agro_beta_app/views/farmer_and_market_screen.dart';
import 'package:agro_beta_app/views/generate_certificate.dart';
import 'package:agro_beta_app/views/interview-screen.dart';
import 'package:agro_beta_app/views/new_faq_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: const Text('Welcome'),
    ),

    body: Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.lightGreen,
            Colors.white,
          ]
        )
      ),
      child: Column(
        children: [
          SizedBox(height: 2.h,),
          const Center(child: Text('Welcome to Agro Beta',style: TextStyle(fontSize: 30.0),)),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 6.h,
            width: 40.w,
            buttonText: 'Critical Thinking',
            onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CriticalThinkingScreen()));
            }),
          ),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 5.h,
            width: 24.w,
            buttonText: 'Interview',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const InterviewScreen()));
            },
          ),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 5.h,
            width: 20.w,
            buttonText: 'FAQ',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewFaqScreen()));
            },
          ),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 5.h,
            width: 35.w,
            buttonText: 'Farmer Skills',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const FarmerSkillsScreen()));
            },
          ),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 5.h,
            width: 48.w,
            buttonText: 'Farmers and market',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const FarmerAndMarketScreen()));
            },
          ),
          SizedBox(height: 2.h,),
          MyCustomButton(
            height: 5.h,
            width: 26.w,
            buttonText: 'Certificate',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const GenerateCertificateScreen()));
            },
          ),
          


        ],
      ),
    ),
    );
  }
}