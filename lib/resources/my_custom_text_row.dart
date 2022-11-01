import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyCustomTextRow extends StatelessWidget {
  const MyCustomTextRow({
    Key? key, required this.myText,
  }) : super(key: key);
  final String? myText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: const AssetImage('assets/images/GreenBox.png'),width: 5.w,height: 5.h,),
        SizedBox(width: 2.w,),
      Text('$myText',style: const TextStyle(fontSize: 25.0),),
      ],
    );
  }
}