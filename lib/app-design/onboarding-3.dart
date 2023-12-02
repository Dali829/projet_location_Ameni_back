import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'log-in.dart';

class Scene3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // onboarding3MMy (0:629)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rider3q (0:638)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        81.96 * fem, 210.26 * fem, 101.34 * fem, 0 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/app-design/images/pattern-MJf.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // riderLjh (0:640)
                      child: SizedBox(
                        width: 230.7 * fem,
                        height: 223.26 * fem,
                        child: Image.asset(
                          'assets/app-design/images/rider.png',
                          width: 230.7 * fem,
                          height: 223.26 * fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // rideE4P (0:630)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 2 * fem),
                    child: Text(
                      'Ride',
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
                    // culpaquiofficiade89m (0:631)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 89 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 284 * fem,
                    ),
                    child: Text(
                      'دواستين، مغامرة واحدة. اخرج من هناك واركب قلبك',
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
                    // culpaquiofficiade89m (0:631)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 89 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 284 * fem,
                    ),
                    child: Text(
                      'Two pedals, one adventure. Get out there and ride your heart out.',
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
                    // autogroupd791pHV (L98RuLCMx5azu4LpfRd791)
                    margin: EdgeInsets.fromLTRB(
                        32 * fem, 0 * fem, 32 * fem, 44 * fem),
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
                            // skipKk3 (0:637)
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
                          // autogroup72mmfZ1 (L98S2Qpu55t2L9h48g72mm)
                          padding: EdgeInsets.fromLTRB(
                              104 * fem, 0 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // pageindicatorsC39 (0:632)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 108 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ovalvE3 (0:633)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-yyZ.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovaldeF (0:634)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-U7R.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovalNLw (0:635)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-5Ub.png',
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
                                      builder: (context) => Login()));
                                },
                                child: Text(
                                  // nextWxw (0:636)
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
