

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/components/appColors.dart';

class ChooseFacadeView extends StatefulWidget {
  const ChooseFacadeView({super.key});

  @override
  State<ChooseFacadeView> createState() => _ChooseFacadeViewState();
}

class _ChooseFacadeViewState extends State<ChooseFacadeView> {
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      body:SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h*0.03,),
                Text('Choose Your Facade',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 20,fontWeight: FontWeight.w500),),
                SizedBox(height: h*0.02,),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                      itemBuilder: (context,index){
                        return ListTile(
                          leading:
                          SizedBox(
                            width:90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                                child: Image.asset('assets/images/facade.png',height:h*0.2,width: w*0.3,)),

                            ),
                          title:Text('Facade name',style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 13),),
                          subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard.',textAlign: TextAlign.start,style: GoogleFonts.roboto(color: appColors.greyy,fontSize: 10,height: 1.8)),

                        );
                      }
                  ),
                ),
                SizedBox(height: h*0.01,),

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
      ),
    );
  }
}
