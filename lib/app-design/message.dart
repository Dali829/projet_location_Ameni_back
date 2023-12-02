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
        // messagefqq (0:27)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerwHZ (I0:28;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 158.5*fem, 59*fem),
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
                      // iconchevronleftKJ7 (I0:28;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 109.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-fBM.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequestCco (I0:28;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Message',
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
              // chat5Ao (0:29)
              left: 0*fem,
              top: 116*fem,
              child: Container(
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
                      // autogroupdugpmZR (L97qauDFc9isDByeZjdUGP)
                      padding: EdgeInsets.fromLTRB(21*fem, 24*fem, 21*fem, 35.5*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // bubble165u (0:31)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                            width: 284*fem,
                            height: 105*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group1Tm (0:32)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 284*fem,
                                    height: 105*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // triangle8HV (0:34)
                                          width: 13*fem,
                                          height: 18*fem,
                                          child: Image.asset(
                                            'assets/app-design/images/triangle-Hvw.png',
                                            width: 13*fem,
                                            height: 18*fem,
                                          ),
                                        ),
                                        Container(
                                          // rectangle4gw (0:33)
                                          width: 271*fem,
                                          height: 105*fem,
                                          child: Image.asset(
                                            'assets/app-design/images/rectangle-5G3.png',
                                            width: 271*fem,
                                            height: 105*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // fuscevehiculadoloro8j (0:35)
                                  left: 29*fem,
                                  top: 16*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 218*fem,
                                      height: 55*fem,
                                      child: Text(
                                        'Fusce vehicula dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
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
                                  // sPV (0:36)
                                  left: 29*fem,
                                  top: 79*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 32*fem,
                                      height: 16*fem,
                                      child: Text(
                                        '19:24',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Montserrat',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175*ffem/fem,
                                          color: Color(0x4c3d003e),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24*fem,
                          ),
                          Container(
                            // bubble2ZGK (0:37)
                            margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            height: 87*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // autogroupatb1GwR (L97qstiwVmE8FQpCtjatb1)
                                  padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 24*fem, 10*fem),
                                  width: 271*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/app-design/images/rectangle.png',
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // dolorarcusitamey59 (0:40)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 231*fem,
                                        ),
                                        child: Text(
                                          'Dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
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
                                        // sAX (0:41)
                                        width: double.infinity,
                                        child: Text(
                                          '19:32',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0x4c3d003e),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // triangleQRM (0:39)
                                  width: 13*fem,
                                  height: 18*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/triangle.png',
                                    width: 13*fem,
                                    height: 18*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24*fem,
                          ),
                          Container(
                            // bubble38MM (0:42)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                            width: double.infinity,
                            height: 87*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // triangle4Vu (0:44)
                                  width: 13*fem,
                                  height: 18*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/triangle-bJF.png',
                                    width: 13*fem,
                                    height: 18*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupsnwbnwh (L97r5451XFfbkjUvbeSNWB)
                                  padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 10*fem),
                                  width: 271*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/app-design/images/rectangle-sGB.png',
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // vehiculadolorarcuVLK (0:45)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                        constraints: BoxConstraints (
                                          maxWidth: 207*fem,
                                        ),
                                        child: Text(
                                          'Vehicula dolor arcu, sit ame blandit dolor mollis nec.',
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
                                        // z2B (0:46)
                                        width: double.infinity,
                                        child: Text(
                                          '19:24',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Montserrat',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175*ffem/fem,
                                            color: Color(0x4c3d003e),
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
                    Container(
                      // autogroupvkymiD5 (L97nr9SSjX7kLJGnzevkyM)
                      width: double.infinity,
                      height: 393.5*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // textboxTRZ (0:47)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(23*fem, 15.5*fem, 21.6*fem, 17.5*fem),
                              width: 414*fem,
                              height: 73*fem,
                              decoration: BoxDecoration (
                                color: Color(0xffd6d9de),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // addKyZ (0:55)
                                    margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 22*fem, 0*fem),
                                    width: 17*fem,
                                    height: 17*fem,
                                    child: Image.asset(
                                      'assets/app-design/images/add.png',
                                      width: 17*fem,
                                      height: 17*fem,
                                    ),
                                  ),
                                  Container(
                                    // textbox3uZ (0:52)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22.6*fem, 0*fem),
                                    padding: EdgeInsets.fromLTRB(17*fem, 11*fem, 17*fem, 10*fem),
                                    width: 291*fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration (
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(20*fem),
                                    ),
                                    child: Text(
                                      'Lorem ipsum',
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
                                    // sendJ4o (0:49)
                                    width: 16.8*fem,
                                    height: 16.8*fem,
                                    child: Image.asset(
                                      'assets/app-design/images/send.png',
                                      width: 16.8*fem,
                                      height: 16.8*fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // iphonexkeyboardslightlowercase (0:60)
                            left: 0*fem,
                            top: 72.5*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.31*fem, 11.03*fem, 3.31*fem, 12.51*fem),
                              width: 414*fem,
                              height: 321*fem,
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
                                        // keyboardslightuppercaseQGF (I0:60;0:1463)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.15*fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // autogroup4tmh7wM (L97oL3ocoFDS6bwbFw4TmH)
                                              padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11.03*fem),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // toprowF1y (I0:60;0:1533)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: double.infinity,
                                                    height: 46.33*fem,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // qLp7 (I0:60;0:1561)
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
                                                          // wMUK (I0:60;0:1558)
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
                                                          // ebtT (I0:60;0:1555)
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
                                                          // rebq (I0:60;0:1552)
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
                                                          // t7EX (I0:60;0:1549)
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
                                                          // ym4B (I0:60;0:1546)
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
                                                          // uQsq (I0:60;0:1543)
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
                                                          // ismR (I0:60;0:1540)
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
                                                          // oXb5 (I0:60;0:1537)
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
                                                          // pCBR (I0:60;0:1534)
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
                                                    // secondrowTt3 (I0:60;0:1505)
                                                    margin: EdgeInsets.fromLTRB(19.87*fem, 0*fem, 19.87*fem, 0*fem),
                                                    padding: EdgeInsets.fromLTRB(0.55*fem, 0*fem, 0.55*fem, 0*fem),
                                                    width: double.infinity,
                                                    height: 46.33*fem,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // aXd1 (I0:60;0:1530)
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
                                                          // sP9R (I0:60;0:1527)
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
                                                          // d2y5 (I0:60;0:1524)
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
                                                          // ftVV (I0:60;0:1521)
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
                                                          // gknb (I0:60;0:1518)
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
                                                          // hpnT (I0:60;0:1515)
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
                                                          // jUc7 (I0:60;0:1512)
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
                                                          // kuxK (I0:60;0:1509)
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
                                                          // lNb1 (I0:60;0:1506)
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
                                                    // thirdrowd19 (I0:60;0:1472)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                                    width: double.infinity,
                                                    height: 46.33*fem,
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          // shift6fR (I0:60;0:1502)
                                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.46*fem, 0*fem),
                                                          width: 46.37*fem,
                                                          height: 46.33*fem,
                                                          child: Image.asset(
                                                            'assets/app-design/images/shift-2wy.png',
                                                            width: 46.37*fem,
                                                            height: 46.33*fem,
                                                          ),
                                                        ),
                                                        Container(
                                                          // zCyM (I0:60;0:1499)
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
                                                          // xE9M (I0:60;0:1496)
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
                                                          // ch2w (I0:60;0:1493)
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
                                                          // vLrb (I0:60;0:1490)
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
                                                          // b1Sw (I0:60;0:1487)
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
                                                          // nH9Z (I0:60;0:1484)
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
                                                          // m78b (I0:60;0:1481)
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
                                                          // deleteSaB (I0:60;0:1473)
                                                          width: 46.37*fem,
                                                          height: 46.33*fem,
                                                          child: Image.asset(
                                                            'assets/app-design/images/delete.png',
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
                                              // bottomrowKts (I0:60;0:1464)
                                              width: double.infinity,
                                              height: 46.33*fem,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // F1q (I0:60;0:1469)
                                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.52*fem, 0*fem),
                                                    width: 96.05*fem,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration (
                                                      image: DecorationImage (
                                                        fit: BoxFit.cover,
                                                        image: AssetImage (
                                                          'assets/app-design/images/key.png',
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
                                                    // space2Ru (I0:60;0:1466)
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
                                                    // enterkey5BD (I0:60;0:1465)
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
                                        // autogroupld6fKrF (L97o6DsKh567c52S1cLD6F)
                                        margin: EdgeInsets.fromLTRB(23.74*fem, 0*fem, 33.11*fem, 9.52*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // emojiqZh (I0:60;0:1458)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 273.7*fem, 0*fem),
                                              width: 29.26*fem,
                                              height: 29.23*fem,
                                              child: Image.asset(
                                                'assets/app-design/images/emoji.png',
                                                width: 29.26*fem,
                                                height: 29.23*fem,
                                              ),
                                            ),
                                            Container(
                                              // dictationMH9 (I0:60;0:1454)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8.28*fem),
                                              width: 47.58*fem,
                                              height: 44.69*fem,
                                              child: Image.asset(
                                                'assets/app-design/images/dictation.png',
                                                width: 47.58*fem,
                                                height: 44.69*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // rectangle244ST (I0:60;0:1446;0:1642)
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