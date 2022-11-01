import 'package:agro_beta_app/resources/myCard.dart';
import 'package:agro_beta_app/resources/my_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'generate_certificate.dart';


class FarmerAndMarketScreen extends StatefulWidget {
  const FarmerAndMarketScreen({super.key});

  @override
  State<FarmerAndMarketScreen> createState() => _FarmerAndMarketScreenState();
}

class _FarmerAndMarketScreenState extends State<FarmerAndMarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: const Text('Farmers and Market'),
    flexibleSpace: Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.lightGreen, Colors.green.withOpacity(0.5)]),
      ),
    ),
  ),

    body: 
  
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyCard(
                      farmerName: 'Mercy Ugbome',
                      farmerAge: '30 years',
                      farmerOccpt: 'Tomato farming',
                      myImage: AssetImage('assets/images/Mercy Ugbome.png'),
                    ),
                    SizedBox(width: 2.w,),
                    const MyCard(
                      farmerName: 'Nancy Ndu',
                      farmerAge: '40 years',
                      farmerOccpt: 'Ministry of Agriculture/Farmer',
                      myImage: AssetImage('assets/images/Nancy Ndu.png'),
                    ),
                    SizedBox(width: 2.w,),
                    const MyCard(
                      farmerName: 'Augustina Okafor',
                      farmerAge: '40 years',
                      farmerOccpt: 'State ministry of Agriculture Delta State',
                      myImage: AssetImage('assets/images/farmer3.png'),
                    ),
                  ],
                ),
              ),



              SizedBox(height: 4.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Row(
              children: [
                const Text('Upload Product'),
                IconButton(onPressed: (){}, icon:const Icon(Icons.attach_file,color: Colors.green,))
              ],
            ),
              MyCustomButton(
                height: 5.h,
                width: 25.w,
                buttonText: 'Certificate',
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const GenerateCertificateScreen()));
                },
              ),
            ],
          ),
            ],
          ),
        ),

        
      
    );
  }
}




    // ),