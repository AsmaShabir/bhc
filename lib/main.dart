import 'package:bhc/view/Bathroom.dart';
import 'package:bhc/view/auth/signUp.dart';
import 'package:bhc/view/choose_facade.dart';
import 'package:bhc/view/choose_floor_plan.dart';
import 'package:bhc/view/doors.dart';
import 'package:bhc/view/kitchen.dart';
import 'package:bhc/view/lighting.dart';
import 'package:bhc/view/notifications.dart';
import 'package:bhc/view/profile_creation.dart';
import 'package:bhc/view/select_lot.dart';
import 'package:bhc/view/success.dart';
import 'package:bhc/view/windows.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp( MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: false,
    ),

    home: notificationsView()
 ));

}


