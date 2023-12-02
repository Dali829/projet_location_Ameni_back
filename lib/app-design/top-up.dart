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
        // topupNrK (0:228)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headeri9V (I0:229;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 167.5*fem, 59*fem),
                width: 414*fem,
                height: 255*fem,
                decoration: BoxDecoration (
                  gradient: LinearGradient (
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
                      // iconchevronleftjaP (I0:229;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 119.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-CYf.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequestd9y (I0:229;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Top Up',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Montserrat',
                          fontSize: 21*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175*ffem/fem,
                          color: Color(0xff3d003e),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // cardsWUf (0:230)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 32*fem, 32*fem, 48*fem),
                width: 414*fem,
                height: 780*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(48*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupxawhmQb (L97yrQwGHwXqyxxSHCXAwh)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 121*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // card15RH (2:1108)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(58*fem, 41*fem, 10*fem, 10*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/app-design/images/fill-wN7.png',
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // wyH (0:236)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 47*fem, 7*fem),
                                  child: Text(
                                    '\$ 5',
                                    textAlign: TextAlign.center,
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
                                  // iconcheckiconRdZ (0:235)
                                  margin: EdgeInsets.fromLTRB(71*fem, 0*fem, 0*fem, 0*fem),
                                  width: 24*fem,
                                  height: 24*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/icon-checkicon.png',
                                    width: 24*fem,
                                    height: 24*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // card27mH (2:1109)
                            width: 163*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(24*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/app-design/images/fill.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '\$ 10',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupvt71yYb (L97yzuh7EkHUW5NiShVt71)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                      width: double.infinity,
                      height: 121*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // card3VWw (2:1110)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0*fem),
                            width: 163*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(24*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/app-design/images/fill-mjD.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '\$ 25',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // card4Wwq (2:1111)
                            width: 163*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(24*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/app-design/images/fill-Y63.png',
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '\$ 50',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupkd9hmsm (L97z7ezsDv7mZWweDmkD9H)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 262*fem),
                      width: double.infinity,
                      height: 57*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow1V35 (0:246)
                            left: 0*fem,
                            top: 10*fem,
                            child: Container(
                              width: 350*fem,
                              height: 47*fem,
                              child: Container(
                                // autogroup7luobbu (L97zEZy1n1BRonQDqw7LUo)
                                width: 349*fem,
                                height: 26*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // contentveB (I0:246;0:1316)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 0*fem),
                                      child: Text(
                                        'MasterCard',
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 21*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0xff3d003e),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // pathdHh (0:253)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                      width: 6*fem,
                                      height: 12*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/path-qSX.png',
                                        width: 6*fem,
                                        height: 12*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // masterlogoXts (0:247)
                            left: 262*fem,
                            top: 0*fem,
                            child: Container(
                              width: 56.13*fem,
                              height: 43.66*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // bitmap3sD (0:248)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.49*fem),
                                    width: 56.13*fem,
                                    height: 34.93*fem,
                                    child: Image.asset(
                                      'assets/app-design/images/bitmap-TKV.png',
                                    ),
                                  ),
                                  Container(
                                    // objectxjH (0:252)
                                    margin: EdgeInsets.fromLTRB(2.49*fem, 0*fem, 0*fem, 0*fem),
                                    decoration: BoxDecoration (
                                      image: DecorationImage (
                                        image: AssetImage (
                                          'assets/app-design/images/bitmap-bg.png',
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      // autogroupbz1hgQP (L96aoue9oLKYHD1BrgBZ1h)
                                      child: SizedBox(
                                        width: 52.39*fem,
                                        height: 6.24*fem,
                                        child: Image.asset(
                                          'assets/app-design/images/auto-group-bz1h.png',
                                          width: 52.39*fem,
                                          height: 6.24*fem,
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
                    Container(
                      // buttonwhite1oE7 (0:232)
                      width: double.infinity,
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
                          'Top Up',
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