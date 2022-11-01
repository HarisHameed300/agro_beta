import 'package:agro_beta_app/views/farmer_and_product_screen.dart';
import 'package:agro_beta_app/views/farmer_and_market_screen.dart';
import 'package:agro_beta_app/views/home_screen.dart';
import 'package:agro_beta_app/views/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 300));
  runApp(const MyApp());
}
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.green,
      ),
      home: const  RegistrationScreen(),
    );

    }));
    
    // 
  }
}





