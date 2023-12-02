import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // paymenthJX (0:306)
        width: double.infinity,
        height: 896 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerp8F (I0:307;0:1422)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    32 * fem, 59 * fem, 156.5 * fem, 59 * fem),
                width: 414 * fem,
                height: 255 * fem,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.307, 1.613),
                    end: Alignment(1.307, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconchevronleft311 (I0:307;0:1425)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 108.37 * fem, 109.72 * fem),
                      width: 18.13 * fem,
                      height: 17.28 * fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-3oD.png',
                        width: 18.13 * fem,
                        height: 17.28 * fem,
                      ),
                    ),
                    Container(
                      // supportrequestLVu (I0:307;0:1424)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 111 * fem),
                      child: Text(
                        'Payment',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 21 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xff3d003e),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangledV1 (0:308)
              left: 0 * fem,
              top: 172 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 724 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48 * fem),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // card6tP (2:1113)
              left: 33 * fem,
              top: 116 * fem,
              child: Container(
                width: 349 * fem,
                height: 220 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/app-design/images/pattern-cfR.png',
                    ),
                  ),
                ),
                child: Center(
                  // autogroupopgpQeB (L96aNWCpFNgLKHhBHiopgP)
                  child: SizedBox(
                    width: 349 * fem,
                    height: 220 * fem,
                    child: Image.asset(
                      'assets/app-design/images/auto-group-opgp.png',
                      width: 349 * fem,
                      height: 220 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // applepayJjZ (0:321)
              left: 32 * fem,
              top: 385.3374023438 * fem,
              child: Container(
                width: 350 * fem,
                height: 52.66 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // inputwhiteshadow1copy2dG3 (0:322)
                      left: 0 * fem,
                      top: 5.6625976562 * fem,
                      child: Container(
                        width: 350 * fem,
                        height: 47 * fem,
                        child: Container(
                          // autogroupwqmzMSw (L984c2X2JPHiJ5tY4fwqmZ)
                          width: 349 * fem,
                          height: 26 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // contentHrP (I0:322;0:1316)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 237 * fem, 0 * fem),
                                child: Text(
                                  'Apple Pay',
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
                                // pathbs5 (0:326)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                width: 6 * fem,
                                height: 12 * fem,
                                child: Image.asset(
                                  'assets/app-design/images/path-Nyd.png',
                                  width: 6 * fem,
                                  height: 12 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // applev8f (0:323)
                      left: 288.6237640381 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 29.47 * fem,
                          height: 35.78 * fem,
                          child: Image.asset(
                            'assets/app-design/images/apple-Zbu.png',
                            width: 29.47 * fem,
                            height: 35.78 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // inputwhiteshadow1copy2pUw (0:328)
              left: 32 * fem,
              top: 461 * fem,
              child: Container(
                width: 350 * fem,
                height: 47 * fem,
                child: Container(
                  // autogroupg6sb9n7 (L984qrTKQZR2ncohJzg6Sb)
                  width: 349 * fem,
                  height: 26 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // contenttzb (I0:328;0:1316)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 157 * fem, 0 * fem),
                        child: Text(
                          'Payment Options',
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
                        // pathcQo (0:329)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 2 * fem),
                        width: 6 * fem,
                        height: 12 * fem,
                        child: Image.asset(
                          'assets/app-design/images/path-BWo.png',
                          width: 6 * fem,
                          height: 12 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
