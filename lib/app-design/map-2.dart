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
        // map2RU3 (0:483)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // mapZaF (0:484)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 64*fem, 10*fem, 337*fem),
                width: 414*fem,
                height: 952*fem,
                decoration: BoxDecoration (
                  image: DecorationImage (
                    fit: BoxFit.cover,
                    image: AssetImage (
                      'assets/app-design/images/rectangle-bg-TMR.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupbgf1S8F (L989QogB6GRX9tk2vpbgF1)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 180*fem, 48*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // profileAa3 (0:508)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 98*fem, 18*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/profile-oSX.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // oval6Th (0:493)
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-3Tu.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupnpfd383 (L989YtH3cn6jhwSBUbnPfD)
                      margin: EdgeInsets.fromLTRB(80*fem, 0*fem, 10*fem, 85*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalNRD (0:490)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 25*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-rwH.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // autogroupagudW1d (L989iYfcY1TvXq62ZiaguD)
                            width: 223*fem,
                            height: 225*fem,
                            child: Image.asset(
                              'assets/app-design/images/auto-group-agud.png',
                              width: 223*fem,
                              height: 225*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // ovalDgj (0:495)
                      margin: EdgeInsets.fromLTRB(188*fem, 0*fem, 0*fem, 25*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/app-design/images/oval-dvP.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                    Container(
                      // autogroup2ajbkRm (L989vYKdQ64DyHD1W52AJb)
                      margin: EdgeInsets.fromLTRB(64*fem, 0*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalg4X (0:497)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 248*fem, 26*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-Qzj.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // ovalzb1 (0:492)
                            margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-ZaF.png',
                              width: 30*fem,
                              height: 30*fem,
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
              // cardiX1 (2:1125)
              left: 0*fem,
              top: 596*fem,
              child: Container(
                width: 473*fem,
                height: 221*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // cardEkF (0:499)
                      left: 0*fem,
                      top: 38*fem,
                      child: Align(
                        child: SizedBox(
                          width: 414*fem,
                          height: 183*fem,
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.only (
                                topLeft: Radius.circular(48*fem),
                              ),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // haibikesdurofullseu5h (0:500)
                      left: 211*fem,
                      top: 52*fem,
                      child: Align(
                        child: SizedBox(
                          width: 183*fem,
                          height: 19*fem,
                          child: Text(
                            'Haibike Sduro FullSeven',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // bitmapaSj (0:501)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 263*fem,
                          height: 151*fem,
                          child: Image.asset(
                            'assets/app-design/images/bitmap-NXR.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // distanceJtX (0:502)
                      left: 265*fem,
                      top: 82*fem,
                      child: Align(
                        child: SizedBox(
                          width: 58*fem,
                          height: 16*fem,
                          child: Text(
                            'Distance',
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
                      ),
                    ),
                    Positioned(
                      // mp6B (0:503)
                      left: 331*fem,
                      top: 75*fem,
                      child: Align(
                        child: SizedBox(
                          width: 63*fem,
                          height: 26*fem,
                          child: Text(
                            '150 m',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // buttonghost1WUo (0:504)
                      left: 290*fem,
                      top: 111*fem,
                      child: Container(
                        width: 104.2*fem,
                        height: 32*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0x7fc7c7cc)),
                          color: Color(0x7fffffff),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w600,
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
            Positioned(
              // tabbarmfd (0:505)
              left: 0*fem,
              top: 753*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 143*fem,
                  child: Image.asset(
                    'assets/app-design/images/tab-bar.png',
                    width: 414*fem,
                    height: 143*fem,
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