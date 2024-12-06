
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';
import '../../resources/components/bottom_nav.dart';
import '../project_images.dart';



class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
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
      bottomNavigationBar: CustomBottomNavigationBar(
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
