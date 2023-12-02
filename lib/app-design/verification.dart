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
        // verificationrgP (0:586)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headermoM (I0:587;0:1414)
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
                      // iconchevronleftako (I0:587;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-mSo.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatisticsVMy (I0:587;0:1416)
                      'Verification',
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
              // cardoNf (2:1120)
              left: 0*fem,
              top: 167*fem,
              child: Container(
                width: 414*fem,
                height: 729*fem,
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
                      // autogroup8oyh6Mm (L98HJVhDRq3eUW4Lmj8oyh)
                      padding: EdgeInsets.fromLTRB(32*fem, 50*fem, 32*fem, 32*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouptk2wzi3 (L98H8zy35WupqSJ9XhTK2w)
                            margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 206*fem, 10.5*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // hMZ (0:594)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
                                  child: Text(
                                    '5',
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
                                Text(
                                  // 17M (0:595)
                                  '3',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Montserrat',
                                    fontSize: 32*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175*ffem/fem,
                                    color: Color(0xff3d003e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // inputskaj (0:596)
                            margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 24*fem, 33*fem),
                            width: double.infinity,
                            height: 1.5*fem,
                          ),
                          Container(
                            // donecviverraeleifeUWj (0:590)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                            constraints: BoxConstraints (
                              maxWidth: 253*fem,
                            ),
                            child: Text(
                              'Donec viverra eleifend lacus, vitae ullamcorper metus sed.',
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
                          Container(
                            // YmV (0:591)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                            child: Text(
                              '+123 123 45 67',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ),
                          Container(
                            // didntreceivesmsfLK (0:592)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 65*fem),
                            child: Text(
                              'Didn’t receive SMS?',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                              ),
                            ),
                          ),
                          Container(
                            // buttonwhite1wod (0:593)
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
                                'Continue',
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
                    Container(
                      // iphonexkeyboardslightlowercase (0:601)
                      padding: EdgeInsets.fromLTRB(6.62*fem, 6.62*fem, 6.62*fem, 12.51*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xe5d2d5db),
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur (
                            sigmaX: 27.1828174591*fem,
                            sigmaY: 27.1828174591*fem,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupcmhzq1q (L98J1oqiBSCEmGvAfcCmhZ)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 50.74*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // j7D (I0:601;0:1630)
                                      padding: EdgeInsets.fromLTRB(58.08*fem, 1.1*fem, 58.08*fem, 1.1*fem),
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 25*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          letterSpacing: 0.2912249863*fem,
                                          color: Color(0xff030303),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // 8f9 (I0:601;0:1626)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcEy5 (I0:601;0:1628)
                                            left: 52.5840072632*fem,
                                            top: 31.9897460938*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 24*fem,
                                                height: 13*fem,
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'SF Pro Text',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w700,
                                                      height: 1.193359375*ffem/fem,
                                                      letterSpacing: 2*fem,
                                                      color: Color(0xff030303),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: 'AB',
                                                        style: SafeGoogleFont (
                                                          'SF Pro Text',
                                                          fontSize: 10*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.2575*ffem/fem,
                                                          letterSpacing: 2*fem,
                                                          color: Color(0xff030303),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'C',
                                                        style: SafeGoogleFont (
                                                          'SF Pro Text',
                                                          fontSize: 10*ffem,
                                                          fontWeight: FontWeight.w700,
                                                          height: 1.2575*ffem/fem,
                                                          letterSpacing: 2*fem,
                                                          color: Color(0xff030303),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // hkB (I0:601;0:1629)
                                            left: 58.0840072632*fem,
                                            top: 1.1031494141*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // BfM (I0:601;0:1622)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcHiP (I0:601;0:1624)
                                            left: 52.5839996338*fem,
                                            top: 31.9897460938*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 24*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'DEF',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // nQF (I0:601;0:1625)
                                            left: 58.0839996338*fem,
                                            top: 1.1031494141*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '3',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
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
                              Container(
                                // autogroupadusfyq (L98JF8nqardThLANNfadUs)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 51.85*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // BxB (I0:601;0:1618)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcVxs (I0:601;0:1620)
                                            left: 53.0840072632*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 23*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'GHI',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // yt3 (I0:601;0:1621)
                                            left: 58.0840072632*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '4',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // 4Ph (I0:601;0:1614)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcNfH (I0:601;0:1616)
                                            left: 53.0840072632*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 23*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'JKL',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // gAB (I0:601;0:1617)
                                            left: 58.0840072632*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '5',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // A5M (I0:601;0:1610)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcH9y (I0:601;0:1612)
                                            left: 50.5839996338*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 28*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'MNO',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // ZdH (I0:601;0:1613)
                                            left: 58.0839996338*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '6',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
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
                              Container(
                                // autogroupq67zeej (L98JUNumhpT12yTkABQ67Z)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 51.85*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // ZWo (I0:601;0:1606)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abcU7y (I0:601;0:1608)
                                            left: 48.0840072632*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 33*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'PQRS',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // MhZ (I0:601;0:1609)
                                            left: 58.0840072632*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // eAs (I0:601;0:1602)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abckjh (I0:601;0:1604)
                                            left: 52.5840072632*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 24*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'TUV',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // rnj (I0:601;0:1605)
                                            left: 58.0840072632*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '8',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.62*fem,
                                    ),
                                    Container(
                                      // jrX (I0:601;0:1598)
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // abceyV (I0:601;0:1600)
                                            left: 48.0839996338*fem,
                                            top: 33.0927734375*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 33*fem,
                                                height: 13*fem,
                                                child: Text(
                                                  'WXYZ',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 2*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // YZ5 (I0:601;0:1601)
                                            left: 58.0839996338*fem,
                                            top: 1.6546630859*fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 13*fem,
                                                height: 32*fem,
                                                child: Text(
                                                  '9',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'SF Pro Display',
                                                    fontSize: 25*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: 0.2912249863*fem,
                                                    color: Color(0xff030303),
                                                  ),
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
                              Container(
                                // autogroupbxvtSuM (L98Jg3F1S4aa6moRQMbxvT)
                                margin: EdgeInsets.fromLTRB(135.79*fem, 0*fem, 49.13*fem, 30.89*fem),
                                width: double.infinity,
                                height: 50.74*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // yPV (I0:601;0:1595)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 61.69*fem, 0*fem),
                                      width: 129.17*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(5*fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x59000000),
                                            offset: Offset(0*fem, 1*fem),
                                            blurRadius: 0*fem,
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: Text(
                                          '0',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 25*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2575*ffem/fem,
                                            letterSpacing: 0.2912249863*fem,
                                            color: Color(0xff030303),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // deletecST (I0:601;0:1589)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.21*fem),
                                      width: 24.97*fem,
                                      height: 19.86*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/delete-4p7.png',
                                        width: 24.97*fem,
                                        height: 19.86*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupkv9hvT9 (L98JoTCKguLKuWvxZnKV9h)
                                margin: EdgeInsets.fromLTRB(331.2*fem, 0*fem, 0*fem, 10.07*fem),
                                width: 16.56*fem,
                                height: 27.57*fem,
                                child: Image.asset(
                                  'assets/app-design/images/auto-group-kv9h.png',
                                  width: 16.56*fem,
                                  height: 27.57*fem,
                                ),
                              ),
                              Container(
                                // rectangle24poR (I0:601;0:1566;0:1642)
                                margin: EdgeInsets.fromLTRB(114.38*fem, 0*fem, 152.38*fem, 0*fem),
                                width: double.infinity,
                                height: 5*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(100*fem),
                                  color: Color(0xff000000),
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
            ),
          ],
        ),
      ),
          );
  }
}