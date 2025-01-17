

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/components/appColors.dart';

class ProjectImageView extends StatelessWidget {
  const ProjectImageView({super.key});

  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
          Container(
            height:h*0.6,
            width: w*0.85,
            decoration: BoxDecoration(

            ),

            child: ClipRRect(
                borderRadius: BorderRadius.circular(14),

                child: Image.asset('assets/images/facade.png',fit: BoxFit.cover,)),
          ),
          SizedBox(height: h*0.06,),

          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: ()async{

                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                width: w*0.9,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.white,width: 1)),
                child: Center(child: Text("Close ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
            ),
          ),
        ],
      ),
    );
  }
}

