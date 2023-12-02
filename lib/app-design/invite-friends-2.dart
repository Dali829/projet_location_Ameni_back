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
        // invitefriends2cmD (0:80)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerKQj (I0:81;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 132.5*fem, 59*fem),
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
                      // iconchevronleftjjM (I0:81;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequestqXV (I0:81;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Invite Friends',
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
              // listirB (2:1131)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(24*fem, 24*fem, 24*fem, 2*fem),
                width: 414*fem,
                height: 780*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(48*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // akns (0:84)
                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 15*fem),
                      child: Text(
                        'A',
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
                      // invitelistTxB (0:86)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalPaw (I0:86;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-wGB.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyJC7 (I0:86;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49*fem, 0*fem),
                            child: Text(
                              'Adam Bednářová',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost116X (I0:86;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Send',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistDCb (0:89)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovaljAw (I0:89;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-WDM.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyrWT (I0:89;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                            child: Text(
                              'Adrian Oliveira',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1AGF (I0:89;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x7fc7c7cc)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Done',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistqNP (0:90)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalZZH (I0:90;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-t47.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyVSw (I0:90;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                            child: Text(
                              'Al Koselev',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1cXZ (I0:90;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Send',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistEJ3 (0:91)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalZ5R (I0:91;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-QJs.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopy5ZZ (I0:91;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                            child: Text(
                              'Alia Blue',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1amD (I0:91;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Send',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistaej (0:92)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovaltvK (I0:92;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-9Ef.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyCRD (I0:92;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 89*fem, 0*fem),
                            child: Text(
                              'Aki Jianhong',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1hMy (I0:92;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x7fc7c7cc)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Done',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistKeF (0:93)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalpL7 (I0:93;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyjT5 (I0:93;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 83*fem, 0*fem),
                            child: Text(
                              'Argon Nkechi',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1qW7 (I0:93;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Send',
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
                        ],
                      ),
                    ),
                    Container(
                      // b3s5 (0:85)
                      margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 0*fem, 15*fem),
                      child: Text(
                        'B',
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
                      // invitelistxj9 (0:87)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // oval6KZ (I0:87;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-N3R.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyojm (I0:87;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 131*fem, 0*fem),
                            child: Text(
                              'Bao Shu',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost17kT (I0:87;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x7fc7c7cc)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Done',
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
                        ],
                      ),
                    ),
                    Container(
                      // invitelistBEX (0:88)
                      width: double.infinity,
                      height: 64*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ovalvhu (I0:88;0:1410)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                            width: 64*fem,
                            height: 64*fem,
                            child: Image.asset(
                              'assets/app-design/images/oval-ewh.png',
                              width: 64*fem,
                              height: 64*fem,
                            ),
                          ),
                          Container(
                            // contentcopyedu (I0:88;0:1411)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 76*fem, 0*fem),
                            child: Text(
                              'Brianna Bailey',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // buttonghost1AcF (I0:88;0:1412)
                            margin: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 16*fem),
                            width: 79*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              gradient: LinearGradient (
                                begin: Alignment(1.307, 1.613),
                                end: Alignment(1.307, -1),
                                colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                                stops: <double>[0, 1],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Send',
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
                        ],
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