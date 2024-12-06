
import 'package:bhc/view/dashboard1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/components/appColors.dart';

class successView extends StatefulWidget {
  const successView({super.key});

  @override
  State<successView> createState() => _successViewState();
}

class _successViewState extends State<successView> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',height: h*0.4,),
            Text('Selection submitted successfully',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 15,fontWeight: FontWeight.w400),),
            SizedBox(height: h*0.02,),

            Text('A message confirming that the selections have been sent to the builder for review. Our agent will contact you soon. Thank you for your patience.',textAlign: TextAlign.center,style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 12,height: 1.8)),
            SizedBox(height: h*0.09,),

            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: ()async{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashboardView1()));

                },
                child: Container(
                  height: 60,
                  width: w*0.9,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text("Go to dash board ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
