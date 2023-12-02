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
        // scanLh5 (0:427)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // qrsS7 (0:428)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 2063*fem,
                  height: 1376*fem,
                  child: Image.asset(
                    'assets/app-design/images/qr.png',
                  ),
                ),
              ),
            ),
            Positioned(
              // maskBhh (0:431)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 896*fem,
                  child: Image.asset(
                    'assets/app-design/images/mask.png',
                    width: 414*fem,
                    height: 896*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // cardJXR (2:1127)
              left: 0*fem,
              top: 674*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(91.5*fem, 29*fem, 92.5*fem, 29*fem),
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
                child: Text(
                  'Scan QR code on bike',
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
            Positioned(
              // tabbarGMm (0:435)
              left: 0*fem,
              top: 753*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 143*fem,
                  child: Image.asset(
                    'assets/app-design/images/tab-bar-FMZ.png',
                    width: 414*fem,
                    height: 143*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // scanareaNvb (0:438)
              left: 57*fem,
              top: 184*fem,
              child: Align(
                child: SizedBox(
                  width: 300*fem,
                  height: 300*fem,
                  child: Image.asset(
                    'assets/app-design/images/scan-area.png',
                    width: 300*fem,
                    height: 300*fem,
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