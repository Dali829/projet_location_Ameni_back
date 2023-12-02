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
        // supportZN7 (0:70)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // header6N3 (I0:71;0:1414)
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
                      // iconchevronleftJyu (I0:71;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-m5H.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatisticsby1 (I0:71;0:1416)
                      'Support',
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
              // inputsXLs (2:1132)
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
                      // autogroupy4nkoZH (L97tXKKJD2TZ9t2BNzY4NK)
                      padding: EdgeInsets.fromLTRB(32*fem, 55*fem, 32*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // inputwhiteshadow1usD (0:77)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroupsixfScF (L97tjycsLmyKLdhmhhSixf)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'Name',
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
                          Container(
                            // inputwhiteshadow17yH (0:78)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroupq1gsrfy (L97tvUKP6bVL6eot2Fq1gs)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'E-mail',
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
                          Container(
                            // yourmessage8dV (0:76)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 224*fem, 85.5*fem),
                            child: Text(
                              'Your Message',
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
                            // pathSeB (0:75)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.5*fem),
                            width: 350*fem,
                            height: 1*fem,
                            child: Image.asset(
                              'assets/app-design/images/path-Wf1.png',
                              width: 350*fem,
                              height: 1*fem,
                            ),
                          ),
                          Container(
                            // buttonwhite1Zio (0:74)
                            width: double.infinity,
                            height: 60*fem,
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
                                'Send',
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
                      // iphonexkeyboardslightlowercase (0:79)
                      padding: EdgeInsets.fromLTRB(3.31*fem, 11.03*fem, 3.31*fem, 12.51*fem),
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
                                // keyboardslightuppercaseqpj (I0:79;0:1463)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.15*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupfom9ZVq (L97uactV4mFyqjkJqTfom9)
                                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.03*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // toprowgqM (I0:79;0:1533)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            height: 46.33*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // qzr3 (I0:79;0:1561)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'q',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // w223 (I0:79;0:1558)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'w',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // eSrT (I0:79;0:1555)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'e',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // rh1h (I0:79;0:1552)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'r',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // txCX (I0:79;0:1549)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      't',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // y2CP (I0:79;0:1546)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'y',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // uhJX (I0:79;0:1543)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'u',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // iwif (I0:79;0:1540)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'i',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // ooF5 (I0:79;0:1537)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'o',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // prDM (I0:79;0:1534)
                                                  width: 34.78*fem,
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
                                                      'p',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 13.24*fem,
                                          ),
                                          Container(
                                            // secondrow6Nb (I0:79;0:1505)
                                            margin: EdgeInsets.fromLTRB(19.87*fem, 0*fem, 19.87*fem, 0*fem),
                                            padding: EdgeInsets.fromLTRB(0.55*fem, 0*fem, 0.55*fem, 0*fem),
                                            width: double.infinity,
                                            height: 46.33*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // aMpK (I0:79;0:1530)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'a',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // s1dy (I0:79;0:1527)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      's',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // dGK1 (I0:79;0:1524)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'd',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // fiwh (I0:79;0:1521)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.18*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'f',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // gzPR (I0:79;0:1518)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'g',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // hdhH (I0:79;0:1515)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'h',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // jtNK (I0:79;0:1512)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'j',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // k9Z9 (I0:79;0:1509)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'k',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // lQjy (I0:79;0:1506)
                                                  width: 34.78*fem,
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
                                                      'l',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 13.24*fem,
                                          ),
                                          Container(
                                            // thirdrowr6B (I0:79;0:1472)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            height: 46.33*fem,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // shiftxQ7 (I0:79;0:1502)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.46*fem, 0*fem),
                                                  width: 46.37*fem,
                                                  height: 46.33*fem,
                                                  child: Image.asset(
                                                    'assets/app-design/images/shift.png',
                                                    width: 46.37*fem,
                                                    height: 46.33*fem,
                                                  ),
                                                ),
                                                Container(
                                                  // zTrf (I0:79;0:1499)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'z',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // xX5q (I0:79;0:1496)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'x',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // cn1m (I0:79;0:1493)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.18*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'c',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // v2wh (I0:79;0:1490)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'v',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // bHcj (I0:79;0:1487)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'b',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // nXmy (I0:79;0:1484)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.62*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'n',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // moDh (I0:79;0:1481)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.46*fem, 0*fem),
                                                  width: 34.78*fem,
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
                                                      'm',
                                                      textAlign: TextAlign.center,
                                                      style: SafeGoogleFont (
                                                        'SF Pro Display',
                                                        fontSize: 23*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // delete4QX (I0:79;0:1473)
                                                  width: 46.37*fem,
                                                  height: 46.33*fem,
                                                  child: Image.asset(
                                                    'assets/app-design/images/delete-TM1.png',
                                                    width: 46.37*fem,
                                                    height: 46.33*fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // bottomrowBzw (I0:79;0:1464)
                                      width: double.infinity,
                                      height: 46.33*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // LN3 (I0:79;0:1469)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.52*fem, 0*fem),
                                            width: 96.05*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/app-design/images/key-GUw.png',
                                                ),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '123',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'SF Pro Text',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  letterSpacing: -0.3199999928*fem,
                                                  color: Color(0xff030303),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // spaceyvo (I0:79;0:1466)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.07*fem, 0*fem),
                                            width: 203.14*fem,
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
                                              child: RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                  style: SafeGoogleFont (
                                                    'SF Pro Text',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.193359375*ffem/fem,
                                                    letterSpacing: -0.3199999928*fem,
                                                    color: Color(0xff030303),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: 'spac',
                                                      style: SafeGoogleFont (
                                                        'SF Pro Text',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        letterSpacing: -0.3199999928*fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: 'e',
                                                      style: SafeGoogleFont (
                                                        'SF Pro Text',
                                                        fontSize: 16*ffem,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.2575*ffem/fem,
                                                        letterSpacing: -0.3199999928*fem,
                                                        color: Color(0xff030303),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // enterkeywPm (I0:79;0:1465)
                                            width: 96.6*fem,
                                            height: double.infinity,
                                            decoration: BoxDecoration (
                                              color: Color(0x7fabb3bd),
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
                                                'return',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'SF Pro Text',
                                                  fontSize: 16*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2575*ffem/fem,
                                                  letterSpacing: -0.3199999928*fem,
                                                  color: Color(0xff030303),
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
                                // autogrouprm8tPFm (L97uMNmYwoSSW6Sw3wrM8T)
                                margin: EdgeInsets.fromLTRB(23.74*fem, 0*fem, 33.11*fem, 9.52*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // emojitCX (I0:79;0:1458)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 273.7*fem, 0*fem),
                                      width: 29.26*fem,
                                      height: 29.23*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/emoji-j8T.png',
                                        width: 29.26*fem,
                                        height: 29.23*fem,
                                      ),
                                    ),
                                    Container(
                                      // dictationmn7 (I0:79;0:1454)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.28*fem),
                                      width: 47.58*fem,
                                      height: 44.69*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/dictation-WaK.png',
                                        width: 47.58*fem,
                                        height: 44.69*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // rectangle244mD (I0:79;0:1446;0:1642)
                                margin: EdgeInsets.fromLTRB(117.69*fem, 0*fem, 155.69*fem, 0*fem),
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