

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/components/appColors.dart';

class CustomizeHomeView extends StatefulWidget {
  const CustomizeHomeView({super.key});

  @override
  State<CustomizeHomeView> createState() => _CustomizeHomeViewState();
}

class _CustomizeHomeViewState extends State<CustomizeHomeView> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: h*0.03,),

            Text('Customize your home',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),
            SizedBox(height: h*0.03,),

            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context,index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                     child: Stack(
                       alignment: Alignment.center,
                       children: [
                          ClipRRect(
                            borderRadius:BorderRadius.circular(15),
                              child: Image.asset('assets/images/flooring.jpg',height: 200,)),
                           Positioned(
                             top:0,
                             bottom:0,
                             left:0,
                             right:0,
                             child: Column(
                               mainAxisAlignment:MainAxisAlignment.center,
                               children: [
                                 Text('Flooring',textAlign: TextAlign.center,style: GoogleFonts.roboto(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),),
                               ],
                             ),
                           ),
                       ],
                     ),
                   );
                  }
              ),
            ),
            SizedBox(height: h*0.01,),

          ],
        ),
      ),
    );
  }
}
