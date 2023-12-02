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
        // searchdjd (0:535)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headermaw (I0:536;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 169.5*fem, 59*fem),
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
                      // iconchevronleftCAT (I0:536;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 120.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-3uh.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequest6md (I0:536;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Search',
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
              // suggestionoR9 (0:537)
              left: 0*fem,
              top: 174*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                width: 414*fem,
                height: 724*fem,
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
                      // autogrouploaxGpX (L98BVFDVRp2d6scoqcLoAX)
                      padding: EdgeInsets.fromLTRB(32*fem, 110*fem, 32*fem, 35*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // inputwhiteshadow1copy2CCP (0:539)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroup2j7hKH1 (L98Bejwfn8ASjwP15e2J7H)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'Aberden',
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
                            // inputwhiteshadow1copy2ze3 (0:540)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroupwpexj5q (L98BpZzdGGkzkevW1qwPeX)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'Abigar Des',
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
                            // inputwhiteshadow1copy2cQX (0:541)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroupqtlp99Z (L98BzUsn2syEMnQpsbQtLP)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'Abualo Ct',
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
                            // inputwhiteshadow1copy2Rsm (0:542)
                            width: double.infinity,
                            height: 47*fem,
                            child: Container(
                              // autogroupajm1AqM (L98CF4HphBdhC2qRRpAjM1)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                              width: 326*fem,
                              height: 26*fem,
                              child: Text(
                                'Aburel Kalmia',
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
                      // iphonexkeyboardslightlowercase (0:553)
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
                                // autogrouprapzVm9 (L98D9CTcLSm2cUafLRraPZ)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 50.74*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // DBM (I0:553;0:1630)
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
                                      // 1N7 (I0:553;0:1626)
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
                                            // abci1d (I0:553;0:1628)
                                            left: 52.5840148926*fem,
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
                                            // Y95 (I0:553;0:1629)
                                            left: 58.0840148926*fem,
                                            top: 1.1030273438*fem,
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
                                      // pcP (I0:553;0:1622)
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
                                            // abcY2b (I0:553;0:1624)
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
                                            // cYF (I0:553;0:1625)
                                            left: 58.0839996338*fem,
                                            top: 1.1030273438*fem,
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
                                // autogroupvd6wunF (L98DPcDGRqC8Fu7c3ZVd6w)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 51.85*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // puD (I0:553;0:1618)
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
                                            // abc89D (I0:553;0:1620)
                                            left: 53.0840148926*fem,
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
                                            // Cum (I0:553;0:1621)
                                            left: 58.0840148926*fem,
                                            top: 1.6545410156*fem,
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
                                      // HgK (I0:553;0:1614)
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
                                            // abcbwu (I0:553;0:1616)
                                            left: 53.0840148926*fem,
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
                                            // tAK (I0:553;0:1617)
                                            left: 58.0840148926*fem,
                                            top: 1.6545410156*fem,
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
                                      // aJ3 (I0:553;0:1610)
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
                                            // abcHiF (I0:553;0:1612)
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
                                            // Nzb (I0:553;0:1613)
                                            left: 58.0839996338*fem,
                                            top: 1.6545410156*fem,
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
                                // autogroupkgb1sRZ (L98DcmW1GLPz18U9uXkgb1)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7.72*fem),
                                width: double.infinity,
                                height: 51.85*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // nHd (I0:553;0:1606)
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
                                            // abcHEP (I0:553;0:1608)
                                            left: 48.0840148926*fem,
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
                                            // B4s (I0:553;0:1609)
                                            left: 58.0840148926*fem,
                                            top: 1.6545410156*fem,
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
                                      // FqR (I0:553;0:1602)
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
                                            // abca71 (I0:553;0:1604)
                                            left: 52.5840148926*fem,
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
                                            // raK (I0:553;0:1605)
                                            left: 58.0840148926*fem,
                                            top: 1.6545410156*fem,
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
                                      // LkP (I0:553;0:1598)
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
                                            // abcTKD (I0:553;0:1600)
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
                                            // kZD (I0:553;0:1601)
                                            left: 58.0839996338*fem,
                                            top: 1.6545410156*fem,
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
                                // autogroup3lqfSwq (L98DrgGVey8z65L95Q3LQf)
                                margin: EdgeInsets.fromLTRB(135.79*fem, 0*fem, 49.13*fem, 30.89*fem),
                                width: double.infinity,
                                height: 50.74*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // NKh (I0:553;0:1595)
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
                                      // deletepSb (I0:553;0:1589)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.21*fem),
                                      width: 24.97*fem,
                                      height: 19.86*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/delete-Pw5.png',
                                        width: 24.97*fem,
                                        height: 19.86*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupe4lfvkX (L98DyvZRLtfNhza2Pje4Lf)
                                margin: EdgeInsets.fromLTRB(331.2*fem, 0*fem, 0*fem, 10.07*fem),
                                width: 16.56*fem,
                                height: 27.57*fem,
                                child: Image.asset(
                                  'assets/app-design/images/auto-group-e4lf.png',
                                  width: 16.56*fem,
                                  height: 27.57*fem,
                                ),
                              ),
                              Container(
                                // rectangle24qMh (I0:553;0:1566;0:1642)
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
            Positioned(
              // searchbox9NP (2:1124)
              left: 16*fem,
              top: 113*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 24*fem, 0*fem, 23*fem),
                width: 382*fem,
                height: 148*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(16*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x28000000),
                      offset: Offset(0*fem, 12*fem),
                      blurRadius: 15*fem,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupl2qdz87 (L98EfzEzqcaj6aFTSTL2qD)
                      margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 202*fem, 23*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // pinKAP (0:550)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 0.24*fem),
                            width: 10*fem,
                            height: 26.76*fem,
                            child: Image.asset(
                              'assets/app-design/images/pin-sV1.png',
                              width: 10*fem,
                              height: 26.76*fem,
                            ),
                          ),
                          Text(
                            // marbelladrdRy (0:549)
                            'Marbella Dr',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // path8Nj (0:548)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                      width: 382*fem,
                      height: 1*fem,
                      child: Image.asset(
                        'assets/app-design/images/path-AzT.png',
                        width: 382*fem,
                        height: 1*fem,
                      ),
                    ),
                    Container(
                      // autogroupxn3h2j1 (L98Em9m4S4j3tArggBxn3h)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 295*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // navigation8X9 (0:546)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 22*fem, 0*fem),
                            width: 19*fem,
                            height: 19*fem,
                            child: Image.asset(
                              'assets/app-design/images/navigation.png',
                              width: 19*fem,
                              height: 19*fem,
                            ),
                          ),
                          Text(
                            // abpPy (0:545)
                            'Ab',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
          );
  }
}