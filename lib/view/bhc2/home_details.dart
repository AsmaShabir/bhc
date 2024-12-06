

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';
import '../../resources/components/bottom_nav.dart';



class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key});

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
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
              SizedBox(height: h*0.02,),

              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: Icon(Icons.arrow_back_ios,color: appColors.orangee,size: 20,)),
                  SizedBox(width: w*0.3,),
                  Text('Home name',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),

                ],
              ),
              SizedBox(height: h*0.03,),

              Center(
                child: Container(
                  height: h*0.45,
                    width: w*0.9,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                        child: Image.asset('assets/images/home2.jpg',fit: BoxFit.cover,))),
              ),

              SizedBox(height: h*0.09,),

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
            ],
          ),
        ),
      ),
    );
  }
}
