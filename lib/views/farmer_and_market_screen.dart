

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FarmerSkillsScreen extends StatefulWidget {
  const FarmerSkillsScreen({super.key});

  @override
  State<FarmerSkillsScreen> createState() => _FarmerSkillsScreenState();
}

class _FarmerSkillsScreenState extends State<FarmerSkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: const Text('Training and Digital skills'),
    flexibleSpace: Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Colors.lightGreen, Colors.red.shade300]),
      ),
    ),
  ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          const Text('Farmer Skills',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 2.h,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: const Image(image: AssetImage('assets/images/SkillsImage.webp'),fit: BoxFit.cover,)),
          )
        ],
      ),
    );
  }
}