import 'package:flutter/material.dart';

class MyCustomButton extends StatefulWidget {
  const MyCustomButton({
    Key? key, this.width, this.height, this.buttonText, this.onPressed, 
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? buttonText;
  final VoidCallback? onPressed;

  @override
  State<MyCustomButton> createState() => _MyCustomButtonState();
}

class _MyCustomButtonState extends State<MyCustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.green.shade600,
    
        ),
        child:  Center(child: Text('${widget.buttonText}',style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white),)),
      ),
    );
  }
}