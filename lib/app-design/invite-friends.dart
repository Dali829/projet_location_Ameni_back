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
        // invitefriendsy6P (0:94)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerUoq (I0:95;0:1414)
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
                      // iconchevronleftcoZ (I0:95;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-veB.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatistics6ij (I0:95;0:1416)
                      'Invite Friends',
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
              // rectanglepej (0:96)
              left: 0*fem,
              top: 217*fem,
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
              // buttonwhite1iEK (0:181)
              left: 32*fem,
              top: 692*fem,
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
                    'E-mail',
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
            Positioned(
              // buttonwhite1uZh (0:182)
              left: 32*fem,
              top: 778*fem,
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
                    'Contacts',
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
            Positioned(
              // group142WJb (2:1020)
              left: 32*fem,
              top: 167*fem,
              child: Container(
                width: 350*fem,
                height: 492*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(24*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x28000000),
                      offset: Offset(0*fem, 12*fem),
                      blurRadius: 15*fem,
                    ),
                  ],
                ),
                child: Center(
                  // autogrouprgummEX (L96aHbBLWJP4JvvRpcrGum)
                  child: SizedBox(
                    width: 350*fem,
                    height: 492*fem,
                    child: Image.asset(
                      'assets/app-design/images/auto-group-rgum.png',
                      width: 350*fem,
                      height: 492*fem,
                    ),
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