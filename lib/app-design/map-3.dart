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
        // map3G2s (0:462)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // mapChD (0:463)
          padding: EdgeInsets.fromLTRB(119*fem, 191*fem, 119*fem, 448*fem),
          width: 652*fem,
          height: 1471*fem,
          decoration: BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/app-design/images/map-bg-M6w.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // profilet4F (0:473)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 286*fem, 46*fem),
                width: 64*fem,
                height: 64*fem,
                child: Image.asset(
                  'assets/app-design/images/profile.png',
                  width: 64*fem,
                  height: 64*fem,
                ),
              ),
              Container(
                // autogroup86mmBZ9 (L98866Nzjdoohf93gh86MM)
                margin: EdgeInsets.fromLTRB(54.79*fem, 0*fem, 0*fem, 182*fem),
                width: 100.79*fem,
                height: 318*fem,
                child: Image.asset(
                  'assets/app-design/images/auto-group-86mm.png',
                  width: 100.79*fem,
                  height: 318*fem,
                ),
              ),
              Container(
                // autogroupfdcbV43 (L988BqiRKJFue9N4PEfdcB)
                width: double.infinity,
                height: 222*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // cardRiP (2:1126)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(32*fem, 16*fem, 32*fem, 16*fem),
                        width: 414*fem,
                        height: 143*fem,
                        decoration: BoxDecoration (
                          gradient: LinearGradient (
                            begin: Alignment(1.307, 1.613),
                            end: Alignment(1.307, -1),
                            colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                            stops: <double>[0, 1],
                          ),
                          borderRadius: BorderRadius.only (
                            topLeft: Radius.circular(48*fem),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              offset: Offset(0*fem, 2*fem),
                              blurRadius: 16*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // autogrouphxsfCsZ (L988MqRmNN5pqgoDAXhXSf)
                              margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 62*fem, 0*fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // per30mins8mD (0:476)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                    child: Text(
                                      'Per 30 mins',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff3d003e),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Dnf (0:479)
                                    '\$ 0.50',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupifttZLj (L988UFQkDhTPXUaqFRiFtT)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 0*fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // distancefuZ (0:477)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                    child: Text(
                                      'Distance',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff3d003e),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // mmxb (0:480)
                                    '0.86 m',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // autogroupnbsxJxX (L988aAQZNH8renhVo4NbSX)
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // estimatedtimeFMy (0:478)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                    child: Text(
                                      'Estimated Time',
                                      textAlign: TextAlign.right,
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0xff3d003e),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // minsMvo (0:481)
                                    '8 mins',
                                    textAlign: TextAlign.right,
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // bartab1hUs (0:482)
                      left: 0*fem,
                      top: 79*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(58*fem, 58*fem, 58.39*fem, 57*fem),
                        width: 414*fem,
                        height: 143*fem,
                        decoration: BoxDecoration (
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only (
                            topLeft: Radius.circular(48*fem),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x28000000),
                              offset: Offset(0*fem, 12*fem),
                              blurRadius: 15*fem,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // iconcompassMJX (I0:482;0:1383)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109*fem, 0*fem),
                              width: 28*fem,
                              height: 28*fem,
                              child: Image.asset(
                                'assets/app-design/images/icon-compass.png',
                                width: 28*fem,
                                height: 28*fem,
                              ),
                            ),
                            Container(
                              // iconunlockGAb (I0:482;0:1384)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109.81*fem, 0.23*fem),
                              width: 24.19*fem,
                              height: 26.89*fem,
                              child: Image.asset(
                                'assets/app-design/images/icon-unlock.png',
                                width: 24.19*fem,
                                height: 26.89*fem,
                              ),
                            ),
                            Container(
                              // iconsettingsNUX (I0:482;0:1385)
                              margin: EdgeInsets.fromLTRB(0*fem, 0.61*fem, 0*fem, 0*fem),
                              width: 26.61*fem,
                              height: 26.61*fem,
                              child: Image.asset(
                                'assets/app-design/images/icon-settings.png',
                                width: 26.61*fem,
                                height: 26.61*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}