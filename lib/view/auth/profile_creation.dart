
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../resources/components/appColors.dart';
import '../../resources/components/customTextField.dart';
import '../../utils/utils.dart';
import '../../view_model/auth_view_model.dart';
import 'login_view.dart';

class ProfileCreationView extends StatefulWidget {
  const ProfileCreationView({super.key});

  @override
  State<ProfileCreationView> createState() => _ProfileCreationViewState();
}

class _ProfileCreationViewState extends State<ProfileCreationView> {
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController contactController =TextEditingController();
  TextEditingController addressController =TextEditingController();
  TextEditingController passController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);

    final h= MediaQuery.sizeOf(context).height;
    final w= MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: h*0.04,),
                Center(
                  child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/profile.jpg'),
                          radius: 85,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: appColors.orangee,
                            radius: 25,
                            child: Icon(Icons.camera_alt,color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                ),

                SizedBox(
                  height: h*0.03,
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
                Text('password',style: GoogleFonts.poppins(color: Colors.black54,fontSize: 12)),

                SizedBox(height: h*0.03,),
                customTextFields.defaultTextField(
                    validator: (val){
                      if(val==null||val.isEmpty){
                        return "Kindly enter password";
                      }
                      return null;
                    },
                    obs: true,
                    hintText: "**********", controller: passController),
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
                SizedBox(height: h*0.04,),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()async{
                      final email=emailController.text.trim().toString();
                      final name=nameController.text.trim().toString();
                      final password=passController.text.trim().toString();
                      final user= await authViewModel.signup(email, password,name,context);

                      Utils.flushBarErrorMessage('account created Successfully', context);

                    },
                    child: Container(
                      height: 60,
                      width: w*0.9,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: appColors.orangee,borderRadius: BorderRadius.circular(12)),
                      child: Center(child: Text("Continue ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14),)),),
                  ),
                ),

                SizedBox(
                  height: h*0.02,
                ),
                Row(children: [
                  Expanded(child: Divider()),
                  Text("Already have an account?",style: TextStyle(color:appColors.orangee,fontSize: 15,fontWeight: FontWeight.w400 )),
                  SizedBox(width: 4,),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginView()));
                      },
                      child: Text("Login",style: TextStyle(color:appColors.orangee,fontSize: 15,fontWeight: FontWeight.w600 ))),
                  Expanded(child: Divider()),
                ],),
                SizedBox(
                  height: h*0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
