
import 'package:bhc/view/bhc1/profile.dart';
import 'package:bhc/view/bhc1/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';
import '../../resources/components/bottom_nav.dart';
import 'project_images.dart';

class DashboardView1 extends StatefulWidget {
  const DashboardView1({super.key});

  @override
  State<DashboardView1> createState() => _DashboardView1State();
}

class _DashboardView1State extends State<DashboardView1> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Dashboard',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),
                  SizedBox(width: w*0.27,),

                  Icon(Icons.notifications_active,color: appColors.orangee,size: 30,),


                ],
              ),
              SizedBox(height: h*0.03,),

              Text('Project status',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:14,fontWeight: FontWeight.w500),),

              SizedBox(height: h*0.03,),
              LinearProgressIndicator(
                value: 0.5, // Value from 0.0 to 1.0 representing the progress (50% in this case)
                valueColor: AlwaysStoppedAnimation<Color>(appColors.orangee),
                backgroundColor: Colors.white,
                minHeight: 6,
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: h*0.03,),

              Text('Recent projects',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:14,fontWeight: FontWeight.w500),),
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
                                right:20,
                                child: Icon(Icons.crop_free,color: Colors.white,size: 30,),),

                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
