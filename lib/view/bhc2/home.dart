


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';
import '../../resources/components/bottom_nav.dart';
import 'home_details.dart';


class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
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
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: [
              SizedBox(height: h*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Home',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),
                  SizedBox(width: w*0.35,),

                  Icon(Icons.notifications_active,color: appColors.orangee,size: 30,),


                ],
              ),
              SizedBox(height: h*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Loreum ipsum',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:18,fontWeight: FontWeight.w600),),
                      SizedBox(height: h*0.01,),

                      Text('ipsum text',style: GoogleFonts.roboto(color: appColors.greyy,fontSize:18,fontWeight: FontWeight.w600),),


                    ],
                  ),
                  SizedBox(height: h*0.01,),
                  InkWell(
                    onTap: ()async{


                    },
                    child: Container(
                      height: h*0.05,
                      width:w*0.4,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(15)),
                      child: Center(child: Text("custom home ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
                  ),
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeDetailsView()));
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

                                bottom:20,
                                left:30,

                                child: Text('Home name',textAlign: TextAlign.center,style: GoogleFonts.roboto(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),),
                              ),
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
