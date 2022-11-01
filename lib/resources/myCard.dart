// ignore: file_names


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyCard extends StatefulWidget {
  const MyCard({
    Key? key, required this.myImage, this.farmerName, this.farmerAge, this.farmerOccpt,
  }) : super(key: key);
  final ImageProvider? myImage;
  final String? farmerName;
  final String? farmerAge;
  final String? farmerOccpt;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
            borderRadius: BorderRadius.circular(6.0),

            child:
             Image(
              image: widget.myImage as ImageProvider,

            height: 20.h,
            width: 30.w,
            fit: BoxFit.cover,
            ),
            ),
            SizedBox(width: 2.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Name:\n${widget.farmerName}',style: TextStyle(fontSize: 14.0,),),
                SizedBox(height: 1.h,),
                 Text('Age:\n${widget.farmerAge}',style: TextStyle(fontSize: 14.0,),),
                SizedBox(height: 1.h,),
                 Text('Occupation:\n${widget.farmerOccpt}',style: TextStyle(fontSize: 14.0,),)
              ],
            ),
            ],
          ),

          SizedBox(height: 2.h,),


          Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10.0),
             
           ),
           child: 
               ClipRRect(borderRadius: BorderRadius.circular(6.0), 
               child:  Image(image: 
               const AssetImage('assets/images/Sample.png'),
               height: 15.0.h,
               width: 25.w,
               fit: BoxFit.cover,),
               ),
            ),



          SizedBox(height: 2.h,),



                  Container(
                    height: 14.h,
                    width: 45.w,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 3.0,
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 5.0,
                        )
                      ]
                  
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 1.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('\$22.00',style: TextStyle(fontSize: 16.0),),
                              Row(
                                children: const [
                                  Icon(Icons.add_circle_outline_sharp,color: Colors.lightGreen,),
                              Text(' 2 '),
                              Icon(Icons.do_not_disturb_on_outlined,color: Colors.lightGreen,),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 2.h),
                          child: const Image(image: AssetImage('assets/images/CardImage.png'),),
                        )
                      ],
                    ),
                  ),
                
        ],
      ),
    );
  }
}