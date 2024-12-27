
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../repo/authRepo.dart';
import '../utils/utils.dart';
import '../view/bhc2/home.dart';
import '../view/select_lot.dart';

class AuthViewModel with ChangeNotifier{
  final repo= AuthRepository();
  final _auth = FirebaseAuth.instance;
  final _firestore=FirebaseFirestore.instance;
  User? _user;
 int currentTab=0;

  User? get user =>_user;
  AuthViewModel(){
    _auth.authStateChanges().listen((User? user){
      _user=user;
      notifyListeners();
    });

  }
  Future<void>signup(email,password,name,context)async{
    UserCredential? user = (await repo.signUp(email, password, name,context));
    if(user!=null){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectLotView()));

    }
    else{
      Utils.snackBar('fill the input fields', context);


    }

  }

  Future <void> login(emaill,password,context) async{
    UserCredential? user=  await repo.login(emaill, password);
    if(user==null){
      Utils.snackBar('fill the input fields', context);
    }
    else{

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homeView()));

    }
  }
  changeActiveTab(int index){
    currentTab = index;
    notifyListeners();
  }





}
