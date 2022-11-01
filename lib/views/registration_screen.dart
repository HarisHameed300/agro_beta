import 'package:agro_beta_app/resources/my_text_field.dart';
import 'package:agro_beta_app/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
    title: const Text('Create account on Agro Beta'),
    flexibleSpace: Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.lightGreen, Colors.green.withOpacity(0.5)]),
      ),
    ),
  ),

      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
            const SizedBox(height: 10.0,),
            const MyTextField(
              labelText: 'Full Name',
            ),
            const SizedBox(height: 10.0,),
        
            const MyTextField(
              labelText: 'Email',
            ),
            const SizedBox(height: 10.0,),
        
            const MyTextField(
              labelText: 'Password',
            ),
            const SizedBox(height: 10.0,),
        
            const MyTextField(
              labelText: 'Cnfrm Password',
            ),
            const SizedBox(height: 10.0,),
        
            Row(
              children: [
                const Text('Upload Document'),
                IconButton(onPressed: (){}, icon:const Icon(Icons.attach_file,color: Colors.green,))
              ],
            ),
        
            

            InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));

      },
      child: Container(
        height: 5.h,
        width: 20.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.green.shade600,
    
        ),
        child:  const Center(child: Text('Sign Up',style:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,color: Colors.white),)),
      ),
    ),
        
             
        
            
          ]
          ),
        ),
      ),
    );
  }
}










