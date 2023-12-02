import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'log-in.dart';
import 'onboarding-3.dart';

class Scene2 extends StatelessWidget {
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
            color: Colors.white,
            child: Container(
              // onboarding2r6K (0:674)
              padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 52 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // unlockv6B (0:683)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 430 * fem,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/app-design/images/pattern-BKd.png',
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // groupcDu (0:685)
                          left: 97.0340995789 * fem,
                          top: 250 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 223.51 * fem,
                              height: 139.58 * fem,
                              child: Image.asset(
                                'assets/app-design/images/group-92X.png',
                                width: 223.51 * fem,
                                height: 129.58 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // phoneGZM (0:704)
                          left: 55 * fem,
                          top: 245.0645446777 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 178.71 * fem,
                              height: 239.98 * fem,
                              child: Image.asset(
                                'assets/app-design/images/phone.png',
                                width: 178.71 * fem,
                                height: 239.98 * fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // unlockxwy (0:675)
                    margin:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Unlock',
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
                    // suntinculpaquiofGSs (0:676)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 64 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 247 * fem,
                    ),
                    child: Text(
                      'الحياة مثل ركوب الدراجة. لتحافظ علي توزانك يجب ان تواصل التحرك',
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
                    // suntinculpaquiofGSs (0:676)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 64 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 247 * fem,
                    ),
                    child: Text(
                      'Life is like riding a bicycle. To keep your balance, you must keep moving.',
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
                    // autogroupm7rqkN3 (L98SYUo8WjyTXBwLQ6m7Rq)
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
                            // skipUYw (0:682)
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
                          // autogroup32oh1Hy (L98Sfyae43LtvM1hV532oh)
                          padding: EdgeInsets.fromLTRB(
                              104 * fem, 0 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // pageindicators8Nb (0:677)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 7 * fem, 108 * fem, 0 * fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ovalFTD (0:678)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-SEB.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovalAq5 (0:679)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-CQX.png',
                                        width: 12 * fem,
                                        height: 12 * fem,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16 * fem,
                                    ),
                                    Container(
                                      // ovalJAb (0:680)
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Image.asset(
                                        'assets/app-design/images/oval-S9d.png',
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
                                      builder: (context) => Scene3()));
                                },
                                child: Text(
                                  // nextdTm (0:681)
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
