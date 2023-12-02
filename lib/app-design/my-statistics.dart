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
        // mystatisticsLoy (0:183)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerGSj (I0:184;0:1414)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 64*fem, 32*fem, 158*fem),
                width: 414*fem,
                height: 293*fem,
                decoration: BoxDecoration (
                  gradient: LinearGradient (
                    begin: Alignment(1.307, 1.613),
                    end: Alignment(1.307, -1),
                    colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // iconchevronlefth2F (I0:184;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-C4P.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatisticsCUo (I0:184;0:1416)
                      'My Statistics',
                      style: SafeGoogleFont (
                        'Montserrat',
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175*ffem/fem,
                        color: Color(0xff3d003e),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // cardsX1H (0:185)
              left: 0*fem,
              top: 167*fem,
              child: Container(
                width: 414*fem,
                height: 729*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangleqXm (0:186)
                      left: 0*fem,
                      top: 50*fem,
                      child: Align(
                        child: SizedBox(
                          width: 414*fem,
                          height: 679*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(48*fem),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // card1Yh5 (2:1104)
                      left: 33*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(24*fem, 27*fem, 177*fem, 24*fem),
                        width: 349*fem,
                        height: 116*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/app-design/images/card.png',
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // clockqRH (0:192)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 1*fem),
                              width: 28*fem,
                              height: 28*fem,
                              child: Image.asset(
                                'assets/app-design/images/clock.png',
                                width: 28*fem,
                                height: 28*fem,
                              ),
                            ),
                            Container(
                              // autogroupa11hLsq (L97yA6m6wqmSp9SXTrA11H)
                              width: 96*fem,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // durationggo (0:189)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                    child: Text(
                                      'Duration',
                                      style: SafeGoogleFont (
                                        'Montserrat',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175*ffem/fem,
                                        color: Color(0x4c3d003e),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupfwvxzhV (L97yF6cmyNgQQvA6rVfwvX)
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // YU7 (0:191)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                          child: Text(
                                            '28',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 32*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175*ffem/fem,
                                              color: Color(0xff3d003e),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // minsG9D (0:190)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                          child: Text(
                                            'mins',
                                            style: SafeGoogleFont (
                                              'Montserrat',
                                              fontSize: 18*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175*ffem/fem,
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
                    Positioned(
                      // card2ypK (2:1105)
                      left: 33*fem,
                      top: 140*fem,
                      child: Container(
                        width: 349*fem,
                        height: 116*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copy2VXm (0:196)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 116*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-2.png',
                                    width: 349*fem,
                                    height: 116*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // caloriesPt3 (0:199)
                              left: 76*fem,
                              top: 24*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 72*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Calories',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0x4c3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // caltpo (0:200)
                              left: 127*fem,
                              top: 67*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 27*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'cal',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // 18j (0:201)
                              left: 76*fem,
                              top: 53*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 41*fem,
                                  height: 39*fem,
                                  child: Text(
                                    '34',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // hnF (0:202)
                              left: 24*fem,
                              top: 42*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.2*fem,
                                  height: 33.6*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/-cSK.png',
                                    width: 25.2*fem,
                                    height: 33.6*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // card3cPR (2:1106)
                      left: 33*fem,
                      top: 280*fem,
                      child: Container(
                        width: 349*fem,
                        height: 116*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group1418sZ (0:207)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 116*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141.png',
                                    width: 349*fem,
                                    height: 116*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // mEvb (0:210)
                              left: 161*fem,
                              top: 67*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 19*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'm',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // distanceWdD (0:211)
                              left: 76*fem,
                              top: 24*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 80*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Distance',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0x4c3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // NvK (0:212)
                              left: 76*fem,
                              top: 53*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 75*fem,
                                  height: 39*fem,
                                  child: Text(
                                    '3752',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // distanceicon543 (0:213)
                              left: 25*fem,
                              top: 46*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25.77*fem,
                                  height: 25.12*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/distanceicon.png',
                                    width: 25.77*fem,
                                    height: 25.12*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // card4NYw (2:1107)
                      left: 33*fem,
                      top: 420*fem,
                      child: Container(
                        width: 349*fem,
                        height: 116*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copy3VdZ (0:219)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 116*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-3.png',
                                    width: 349*fem,
                                    height: 116*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // carbonbRh (0:222)
                              left: 76*fem,
                              top: 24*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 67*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Carbon',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0x4c3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ozHpK (0:223)
                              left: 107*fem,
                              top: 67*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 22*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'oz',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // Z19 (0:224)
                              left: 76*fem,
                              top: 53*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 21*fem,
                                  height: 39*fem,
                                  child: Text(
                                    '6',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 32*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // Sqd (0:225)
                              left: 26.0522460938*fem,
                              top: 41*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 23.65*fem,
                                  height: 32.96*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/.png',
                                    width: 23.65*fem,
                                    height: 32.96*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // buttonwhite18yM (0:227)
                      left: 32*fem,
                      top: 611*fem,
                      child: Container(
                        width: 350*fem,
                        height: 70*fem,
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular(35*fem),
                          gradient: LinearGradient (
                            begin: Alignment(1.307, 1.613),
                            end: Alignment(1.307, -1),
                            colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                            stops: <double>[0, 1],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Share',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}