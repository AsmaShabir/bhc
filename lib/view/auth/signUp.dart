
import 'package:bhc/view/auth/profile_creation.dart';
import 'package:bhc/view/bhc2/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import '../../resources/components/appColors.dart';
import '../../view_model/auth_view_model.dart';
import '../../view_model/services/auth_services.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  AuthService authService =AuthService();

  @override
  Widget build(BuildContext context) {

    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(

        children: [
          SizedBox(height: h*0.09,),
          Image.asset('assets/images/logo.png',height: 200,),
      SizedBox(height:h*0.03 ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email_rounded,size: 35,),
              SizedBox(width: w*0.06,),

              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileCreationView()));
              },
                  child:
                  Text('Sign up with email',textAlign: TextAlign.start,style: GoogleFonts.poppins(color: appColors.greyy,fontSize: 14),)

              ),
            ],
          ),
          SizedBox(height: h*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/images/google (2).png',height: 30,),
              SizedBox(width: w*0.06,),

              TextButton(onPressed: (){
                authService.handleGoogleButtonClick(context);
              },
                  child:
                  Text('Sign up without Google',textAlign: TextAlign.start,style: GoogleFonts.poppins(color: appColors.greyy,fontSize: 14),)

              ),
            ],
          ),
          SizedBox(height: h*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/images/facebook.png',height: 30,),
              SizedBox(width: w*0.06,),

              TextButton(onPressed: (){},
                  child:
                  Text('Sign up with facebook',textAlign: TextAlign.start,style: GoogleFonts.poppins(color: appColors.greyy,fontSize: 14),)

              ),
            ],
          ),
          SizedBox(height: h*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
             Icon(Icons.newspaper,size: 25,),
              SizedBox(width: w*0.06,),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeView()));
              },
                  child:
                  Text('Continue without Sign up',textAlign: TextAlign.start,style: GoogleFonts.poppins(color: appColors.greyy,fontSize: 14),)

              ),

            ],
          ),
          SizedBox(height: w*0.09,),

         Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: ()async{


                },
                child: Container(
                  height: 60,
                  width: w*0.9,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(16)),
                  child: Center(child: Text("Login ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
              ),
            ),


          SizedBox(height: h*0.15,),

              Text('Privacy policy',style: GoogleFonts.poppins(decoration: TextDecoration.underline,decorationColor: appColors.orangee,color: appColors.orangee,fontSize: 10),),

          SizedBox(height: h*0.01,),

              Text('Terms of service',style: GoogleFonts.poppins(decoration: TextDecoration.underline,decorationColor: appColors.orangee,color: appColors.orangee,fontSize: 10),)


        ],
      ),
    );
  }
}
