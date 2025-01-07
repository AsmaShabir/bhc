

import 'package:bhc/view/bhc1/project_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: h*0.03,),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios,color: appColors.orangee,size: 20,),
                  SizedBox(width: w*0.2,),
                  Text('Project photos',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),

                ],
              ),

              SizedBox(height: h*0.03,),

              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          showBottomSheet(context: context, builder: (context)=>ProjectImageView(),backgroundColor: Colors.black.withOpacity(0.5));

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius:BorderRadius.circular(15),
                                  child: Image.asset('assets/images/flooring.jpg',height: 200,)),
                              Positioned(
                                top:18,
                                left:18,
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text('Project name',style: GoogleFonts.roboto(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),),
                                    Text('10-08-2023',style: GoogleFonts.roboto(color: appColors.whiteGrey,fontSize: 12,fontWeight: FontWeight.w400),),

                                  ],
                                ),
                              ),
                              Positioned(
                                top:15,
                                right:10,
                                child: Icon(Icons.crop_free,color: Colors.white,size: 30,),),

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: h*0.01,),

            ],
          ),
        ),
      ),
    );
  }
}
