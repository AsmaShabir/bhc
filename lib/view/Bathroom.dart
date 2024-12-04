

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/components/appColors.dart';

class bathroomFixtures extends StatefulWidget {
  const bathroomFixtures({super.key});

  @override
  State<bathroomFixtures> createState() => _bathroomFixturesState();
}

class _bathroomFixturesState extends State<bathroomFixtures> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h*0.03,),
              Row(
                children: [
                  Icon(Icons.arrow_back_ios,color: appColors.orangee,),
                  SizedBox(width: w*0.2,),

                  Text('Bathroom fixtures',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 20,fontWeight: FontWeight.w500),),

                ],
              ),
              SizedBox(height: h*0.03,),

              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              SizedBox(height: h*0.03,),

                              Container(
                                height:h*0.15,
                                width: w*0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(14),

                                    child: Image.asset('assets/images/facade.png',fit: BoxFit.cover,)),
                              ),
                              SizedBox(width:w*0.03 ,),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text('Name',style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 13),),
                                    SizedBox(height: h*0.01,),

                                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard.',textAlign: TextAlign.start,style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 10,height: 1.8)),

                                  ],
                                ),
                              ),
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
