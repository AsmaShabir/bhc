





import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/bhc1/select_lot.dart';


class AuthRepository{


  final _auth = FirebaseAuth.instance;
  final _firestore=FirebaseFirestore.instance;
  // Future<dynamic>loginApi(dynamic data) async{
  //   try{
  //     dynamic response =await apiService.getPostApiResponse(AppUrl.loginEndPoint, data);
  //     return response;
  //   }
  //   catch(e){
  //     throw e;
  //   }
  // }
  // Future<dynamic>SignUpApi(dynamic data) async{
  //   try{
  //     dynamic response =await apiService.getPostApiResponse(AppUrl.registerApiEndPoint, data);
  //     return response;
  //   }
  //   catch(e){
  //     throw e;
  //   }
  // }

  Future signUp(String email,String password,String name,context)async{
    try{
      final credentials=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectLotView()));


    }
    catch(e){
      throw e;
    }

  }

  Future<UserCredential?>login(String email,String password)async{
    try{
      final credentials= await _auth.signInWithEmailAndPassword(email: email, password: password);

      return credentials;
    }
    catch(e){
      throw e;
    }
  }

  Future<void>signOut()async{
    await _auth.signOut();

  }




}