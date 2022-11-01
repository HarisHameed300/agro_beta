


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GenerateCertificateScreen extends StatefulWidget {
  const GenerateCertificateScreen({super.key});

  @override
  State<GenerateCertificateScreen> createState() => _GenerateCertificateScreenState();
}

class _GenerateCertificateScreenState extends State<GenerateCertificateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate Certificate'),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
        child: Container(
          height: 100.h, 
          width: 100.w,
          decoration:  BoxDecoration(
            border: Border.all(color: Colors.black),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.lightGreen,
                Colors.blueGrey.shade100,
                Colors.green,
              ])
          ),
        
          child: Column(
            children: [
              SizedBox(height: 7.h,),
              RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'CERTIFICATE\n',style: TextStyle(fontSize: 30.0,color: Colors.green.shade900),),
                  TextSpan(text: 'Of Achievement',style: TextStyle(fontSize: 25.0,color: Colors.lightGreen.shade800),),
                ]
              ),
              ),            
              Divider(thickness: 2,indent: 2.w, endIndent: 2.w,),
              SizedBox(height: 5.h,),
              const Text('This certificate is presented to\n',style: TextStyle(fontSize: 17.0,color: Colors.black ),),
              const Text('_____________________________\n',textAlign: TextAlign.center,),
              const Text('for the best performance.\nAnd being the part of us.\nShowing the good participation and feedback.',textAlign: TextAlign.center ,style: TextStyle(fontSize: 17.0,color: Colors.black ),),
              SizedBox(height: 8.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                   Text('Signature:_______________',style: TextStyle(fontSize: 10.0,color: Colors.black ),),
                 Text('Date:_______________',style: TextStyle(fontSize: 10.0,color: Colors.black ),),
                ],),
              )
            ],
          ),
        ),
      )

    );
  }
}