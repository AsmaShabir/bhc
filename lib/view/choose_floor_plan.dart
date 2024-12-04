import 'package:bhc/resources/components/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseFloorView extends StatefulWidget {
  const ChooseFloorView({super.key});

  @override
  State<ChooseFloorView> createState() => _ChooseFloorViewState();
}

class _ChooseFloorViewState extends State<ChooseFloorView> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h*0.04,),
              Text('Choose Your Floor Plan',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(height: h*0.02,),
              Center(child: Image.asset('assets/images/map.jpg',height:h*0.45,)),
              SizedBox(height: h*0.02,),

              Text('Description',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:14,fontWeight: FontWeight.w500),),
              SizedBox(height: h*0.02,),

              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard.',style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 12,height: 1.5)),
              SizedBox(height: h*0.02,),

              Text('Key Features',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:14,fontWeight: FontWeight.w500),),
              SizedBox(height: h*0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                      Text('key features',style: GoogleFonts.roboto(color: appColors.lightGrey,fontSize: 10)),
                  Text('key features',style: GoogleFonts.roboto(color: appColors.lightGrey,fontSize: 10)),
                  Text('key features',style: GoogleFonts.roboto(color: appColors.lightGrey,fontSize: 10)),
                  Text('key features',style: GoogleFonts.roboto(color: appColors.lightGrey,fontSize: 10)),



                ]
              ),


              SizedBox(height: h*0.06,),

              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: ()async{


                  },
                  child: Container(
                    height: 60,
                    width: w*0.9,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text("Next ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
