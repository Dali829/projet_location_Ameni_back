import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'log-in.dart';
import 'onboarding-2.dart';

class Scene1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // onboardingTTM (0:771)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 52 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // locatemD9 (0:780)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                    width: double.infinity,
                    height: 480 * fem,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/app-design/images/pattern-Ndd.png',
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // mapGvb (0:782)
                          left: 63.1836547852 * fem,
                          top: 212 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 278.1 * fem,
                              height: 305.71 * fem,
                              child: Image.asset(
                                'assets/app-design/images/map.png',
                                width: 278.1 * fem,
                                height: 305.71 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // bikeZuh (0:797)
                          left: 88.0341186523 * fem,
                          top: 314 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 223.51 * fem,
                              height: 139.58 * fem,
                              child: Image.asset(
                                'assets/app-design/images/bike.png',
                                width: 223.51 * fem,
                                height: 139.58 * fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // locateSib (0:772)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 24 * fem),
                    child: Text(
                      'Locate',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 32 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff3d003e),
                      ),
                    ),
                  ),
                  Container(
                    // excepteursintoccaejSo (0:773)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 64 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 309 * fem,
                    ),
                    child: Text(
                      'إن ركوب الدراجة ليس مجرد تمرين رياضي؛ إنها مغامرة تنتظر حدوثها.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 21 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff3d003e),
                      ),
                    ),
                  ),
                  Container(
                    // excepteursintoccaejSo (0:773)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 64 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 309 * fem,
                    ),
                    child: Text(
                      'Riding a bike is not just exercise; it\'s an adventure waiting to happen.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 21 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff3d003e),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouptwshQoq (L98TBiE6MrybjjUg4KTWsH)
                    margin: EdgeInsets.fromLTRB(
                        32 * fem, 0 * fem, 32 * fem, 0 * fem),
                    width: double.infinity,
                    height: 19 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login()));
                          },
                          child: Text(
                            // skipY9M (0:779)
                            'Skip',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                        ),
                        Container(
                          // autogroup9skwshR (L98TJNhf4aCDCm6mur9Skw)
                          padding: EdgeInsets.fromLTRB(
                              104 * fem, 0 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // pageindicators1Yj (0:774)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 108 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // oval999 (0:775)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-8oy.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovalrpF (0:776)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-Njh.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovalBLj (0:777)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-AQf.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Scene2()));
                                },
                                child: Text(
                                  // nexthK5 (0:778)
                                  'Next',
                                  textAlign: TextAlign.right,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff3d003e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
