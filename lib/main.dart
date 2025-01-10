
import 'package:bhc/view/admin/portal.dart';
import 'package:bhc/view/auth/profile_creation.dart';
import 'package:bhc/view/auth/signUp_options.dart';
import 'package:bhc/view/bhc1/notifications.dart';
import 'package:bhc/view_model/auth_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(  MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_) => AuthViewModel()),
      ],
      child:
   MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),

      home: SignupOptionsView()
   ),
 ));

}


