
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/components/appColors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController contactController =TextEditingController();
  TextEditingController addressController =TextEditingController();

  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h*0.02,),
          
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios,color: appColors.orangee,size: 20,),
                    SizedBox(width: w*0.3,),
                    Text('Profile',style: GoogleFonts.roboto(color: appColors.orangee,fontSize: 22,fontWeight: FontWeight.w500),),
          
                  ],
                ),
                SizedBox(height: h*0.01,),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: ()async{
          
          
                    },
                    child: Container(
                      height: h*0.05,
                      width:w*0.25,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(15)),
                      child: Center(child: Text("Edit ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
                  ),
                ),
                SizedBox(
                  height: h*0.01,
                ),
                Text('Full name',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.02,
                ),
                Container(
                  decoration: BoxDecoration(
          
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextField(
          
                    controller: nameController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                      prefixIcon: Icon(Icons.perm_identity_sharp,color: Colors.black54,size: 35,),
                      border: InputBorder.none,
                      hintText: "Designer",
                      hintStyle: GoogleFonts.poppins(color: Colors.black54,fontSize: 15),
                    ),
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Text('Email address',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.03,
                ),
                Container(
                  decoration: BoxDecoration(
          
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextField(
          
                    controller: emailController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.black54,size: 35,),
                      border: InputBorder.none,
                      hintText: "Designer@gmail.com",
                      hintStyle: GoogleFonts.poppins(color: Colors.black54,fontSize: 15),
                    ),
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Text('phone number',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.03,
                ),
                Container(
                  decoration: BoxDecoration(
          
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: contactController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                      prefixIcon: Icon(Icons.phone,color: Colors.black54,size: 35,),
                      border: InputBorder.none,
                      hintText: "1 1 1 1 1 1 1 1 1 1 1 ",
                      hintStyle: GoogleFonts.poppins(color: Colors.black54,fontSize: 15),
                    ),
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Text('Your address',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.03,
                ),
                Container(
                  decoration: BoxDecoration(
          
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextField(
          
                    controller: addressController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                      prefixIcon: Icon(Icons.location_on_outlined,color: Colors.black54,size: 35,),
                      border: InputBorder.none,
                      hintText: "House#111",
                      hintStyle: GoogleFonts.poppins(color: Colors.black54,fontSize: 15),
                    ),
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Text('Notification',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications_none_outlined,color: appColors.lightGrey,size: 35,),
                        SizedBox(width: w*0.04,),
                        Text('Email notification',style: GoogleFonts.roboto(color: Colors.black54,fontSize: 15)),

                      ],
                    ),

                CupertinoSwitch(value: true, onChanged: (val){},activeColor: appColors.orangee,),


                  ],
                ),
                SizedBox(
                  height: h*0.02,
                ),
                Text('Notification',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),
                SizedBox(
                  height: h*0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications_none_outlined,color: appColors.lightGrey,size: 35,),
                        SizedBox(width: w*0.04,),
                        Text('App notification',style: GoogleFonts.roboto(color: Colors.black54,fontSize: 15)),

                      ],
                    ),

                    CupertinoSwitch(value: true, onChanged: (val){},activeColor: appColors.orangee,),


                  ],
                ),
                SizedBox(
                  height: h*0.06,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()async{


                    },
                    child: Container(
                      height: 60,
                      width: w*0.9,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(16)),
                      child: Center(child: Text("Log out ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
                  ),
                ),
                SizedBox(
                  height: h*0.01,
                ),
              ],
          
            ),
          ),
        ),
      ),
    );
  }
}
