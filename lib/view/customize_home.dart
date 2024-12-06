

import 'package:bhc/resources/components/customize_home_widget.dart';
import 'package:bhc/view/doors.dart';
import 'package:bhc/view/kitchen.dart';
import 'package:bhc/view/lighting.dart';
import 'package:bhc/view/windows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/components/appColors.dart';
import 'Bathroom.dart';
import 'choose_floor_plan.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: h*0.03,),

                Text('Customize your home',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: h*0.03,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>windows()));
                    },
                    child: HomeWidget(image: 'assets/images/home2.jpg', title: 'Windows')),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DoorsView()));

                  },
                    child: HomeWidget(image: 'assets/images/doors.jpg', title: 'Doors')),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseFloorView()));

                    },
                    child: HomeWidget(image: 'assets/images/flooring.jpg', title: 'Flooring')),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KitchenView()));

                    },
                    child: HomeWidget(image: 'assets/images/kitchen.jpg', title: 'Kitchen fitting and fixtures')),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bathroomFixtures()));

                    },
                    child: HomeWidget(image: 'assets/images/bathroom.jpg', title: 'Bathroom fixtures')),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Lighting()));

                    },
                    child: HomeWidget(image: 'assets/images/lightning.jpg', title: 'Lightning')),



                SizedBox(height: h*0.01,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
