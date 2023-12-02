import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

//import 'package:myapp/app-design/settings.dart';
//import 'package:myapp/app-design/message.dart';
//import 'package:myapp/app-design/support-request.dart';
// import 'package:myapp/app-design/support.dart';
// import 'package:myapp/app-design/invite-friends-2.dart';
// import 'package:myapp/app-design/invite-friends.dart';
//import 'package:myapp/app-design/my-statistics.dart';
//import 'package:myapp/app-design/top-up.dart';
//import 'package:myapp/app-design/payment-options.dart';
//import 'package:myapp/app-design/payment.dart';
//import 'package:myapp/app-design/my-wallet.dart';
//import 'package:myapp/app-design/profile.dart';
//import 'package:myapp/app-design/scan.dart';
//import 'package:myapp/app-design/report.dart';
//import 'package:myapp/app-design/map-3.dart';
//import 'package:myapp/app-design/map-2.dart';
//import 'package:myapp/app-design/map.dart';
//import 'package:myapp/app-design/search.dart';
//import 'package:myapp/app-design/welcome.dart';
//import 'package:myapp/app-design/verification.dart';
//import 'package:myapp/app-design/sign-up.dart';
//import 'package:myapp/app-design/log-in.dart';
//import 'package:myapp/app-design/onboarding-3.dart';
//import 'package:myapp/app-design/onboarding-2.dart';
//import 'package:myapp/app-design/onboarding.dart';
import 'package:myapp/app-design/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  sharedPref = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Scene(),
        ),
      ),
    );
  }
}
