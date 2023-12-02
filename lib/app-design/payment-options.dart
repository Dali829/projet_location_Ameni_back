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
        // paymentoptionscP9 (0:254)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerLa3 (I0:255;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 156.5*fem, 59*fem),
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
                      // iconchevronleftm9Z (I0:255;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-UEb.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequest48f (I0:255;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Payment',
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
              // backscreenvwZ (2:1130)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                width: 414*fem,
                height: 780*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangleFD9 (0:257)
                      left: 0*fem,
                      top: 56*fem,
                      child: Align(
                        child: SizedBox(
                          width: 414*fem,
                          height: 724*fem,
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
                      // card9JX (2:1112)
                      left: 33*fem,
                      top: 0*fem,
                      child: Container(
                        width: 349*fem,
                        height: 220*fem,
                        decoration: BoxDecoration (
                          image: DecorationImage (
                            fit: BoxFit.cover,
                            image: AssetImage (
                              'assets/app-design/images/pattern.png',
                            ),
                          ),
                        ),
                        child: Center(
                          // autogroupgitfrij (L96aD6JqBXACGdsoyEgitF)
                          child: SizedBox(
                            width: 349*fem,
                            height: 220*fem,
                            child: Image.asset(
                              'assets/app-design/images/auto-group-gitf.png',
                              width: 349*fem,
                              height: 220*fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // applepayAjR (0:270)
                      left: 32*fem,
                      top: 269.3374023438*fem,
                      child: Container(
                        width: 350*fem,
                        height: 52.66*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // inputwhiteshadow1copy2tvK (0:271)
                              left: 0*fem,
                              top: 5.6625976562*fem,
                              child: Container(
                                width: 350*fem,
                                height: 47*fem,
                                child: Container(
                                  // autogroupugu7Cw1 (L981JCrymaSasHuezaUgU7)
                                  width: 349*fem,
                                  height: 26*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // contentkBq (I0:271;0:1316)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 237*fem, 0*fem),
                                        child: Text(
                                          'Apple Pay',
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
                                        // pathTM9 (0:275)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                        width: 6*fem,
                                        height: 12*fem,
                                        child: Image.asset(
                                          'assets/app-design/images/path-xoh.png',
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
                              // appleMhR (0:272)
                              left: 288.6237792969*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 29.47*fem,
                                  height: 35.78*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/apple-xLf.png',
                                    width: 29.47*fem,
                                    height: 35.78*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // inputwhiteshadow1copy2r8P (0:277)
                      left: 32*fem,
                      top: 345*fem,
                      child: Container(
                        width: 350*fem,
                        height: 47*fem,
                        child: Container(
                          // autogrouppwuqaKH (L981WnLMcsLfTdeRPjpwuq)
                          width: 349*fem,
                          height: 26*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // contentuMZ (I0:277;0:1316)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 157*fem, 0*fem),
                                child: Text(
                                  'Payment Options',
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
                                // pathCrT (0:278)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                width: 6*fem,
                                height: 12*fem,
                                child: Image.asset(
                                  'assets/app-design/images/path-SF9.png',
                                  width: 6*fem,
                                  height: 12*fem,
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
              // rectangleVqZ (0:279)
              left: 0*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 896*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xaf000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // cardznK (0:280)
              left: 0*fem,
              top: 569*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 23*fem, 32*fem, 48*fem),
                width: 414*fem,
                height: 327*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only (
                    topLeft: Radius.circular(24*fem),
                    topRight: Radius.circular(24*fem),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // title3Eo (0:301)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
                      width: double.infinity,
                      height: 25*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // content9od (0:302)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 149*fem, 0*fem),
                            child: Text(
                              'Payment Options',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2175*ffem/fem,
                                color: Color(0xffc7c7cc),
                              ),
                            ),
                          ),
                          Container(
                            // xf1H (0:303)
                            width: 15*fem,
                            height: 15*fem,
                            child: Image.asset(
                              'assets/app-design/images/x.png',
                              width: 15*fem,
                              height: 15*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // pathnLo (0:300)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                      width: 350*fem,
                      height: 1*fem,
                      child: Image.asset(
                        'assets/app-design/images/path-9rP.png',
                        width: 350*fem,
                        height: 1*fem,
                      ),
                    ),
                    Container(
                      // mastercardVm1 (0:291)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 17.34*fem),
                      width: double.infinity,
                      height: 57*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // checkDBD (I0:299;0:1332)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 13*fem),
                            width: 26*fem,
                            height: 26*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(3*fem),
                              border: Border.all(color: Color(0x7fc7c7cc)),
                            ),
                          ),
                          Container(
                            // autogroupxv6si7y (L983qP8kCRXpGoDfF2Xv6s)
                            width: 300*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // inputwhiteshadow1copy2T5Z (0:292)
                                  left: 0*fem,
                                  top: 10*fem,
                                  child: Container(
                                    width: 300*fem,
                                    height: 47*fem,
                                    child: Container(
                                      // autogroupcfewxY7 (L983wJ8ZM1DHQ7LKnfCFew)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                                      width: 276*fem,
                                      height: 26*fem,
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
                                  ),
                                ),
                                Positioned(
                                  // masterlogopaK (0:293)
                                  left: 243*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 56.13*fem,
                                    height: 43.66*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // bitmaprG7 (0:294)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.49*fem),
                                          width: 56.13*fem,
                                          height: 34.93*fem,
                                          child: Image.asset(
                                            'assets/app-design/images/bitmap.png',
                                          ),
                                        ),
                                        Container(
                                          // objectn9m (0:298)
                                          margin: EdgeInsets.fromLTRB(2.49*fem, 0*fem, 0*fem, 0*fem),
                                          decoration: BoxDecoration (
                                            image: DecorationImage (
                                              image: AssetImage (
                                                'assets/app-design/images/bitmap-bg-e4X.png',
                                              ),
                                            ),
                                          ),
                                          child: Center(
                                            // autogroupvvcwhnX (L96arVQBbZPhg1JoUYVvcw)
                                            child: SizedBox(
                                              width: 52.39*fem,
                                              height: 6.24*fem,
                                              child: Image.asset(
                                                'assets/app-design/images/auto-group-vvcw.png',
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
                        ],
                      ),
                    ),
                    Container(
                      // applepayEGf (0:285)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 23*fem),
                      width: double.infinity,
                      height: 52.66*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // componentscheckboxonZZq (0:290)
                            margin: EdgeInsets.fromLTRB(0*fem, 4.66*fem, 23*fem, 0*fem),
                            width: 26*fem,
                            height: 26*fem,
                            child: Image.asset(
                              'assets/app-design/images/components-checkboxon.png',
                              width: 26*fem,
                              height: 26*fem,
                            ),
                          ),
                          Container(
                            // autogrouppnn3URu (L983QK2BnJMLgXgxNFPnN3)
                            width: 300*fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // inputwhiteshadow1copy2DuH (0:286)
                                  left: 0*fem,
                                  top: 5.6625976562*fem,
                                  child: Container(
                                    width: 300*fem,
                                    height: 47*fem,
                                    child: Container(
                                      // autogroup7jbhLyu (L983XiyW3976VGpVXg7JbH)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                                      width: 276*fem,
                                      height: 26*fem,
                                      child: Text(
                                        'Apple Pay',
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
                                  // appleD27 (0:287)
                                  left: 269.6237792969*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 29.47*fem,
                                      height: 35.78*fem,
                                      child: Image.asset(
                                        'assets/app-design/images/apple.png',
                                        width: 29.47*fem,
                                        height: 35.78*fem,
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
                      // inputwhiteshadow1copy2fuh (0:283)
                      width: double.infinity,
                      height: 47*fem,
                      child: Container(
                        // autogroupbv4wd5q (L983BpP1DU4wgbu1tdbv4w)
                        width: 349*fem,
                        height: 26*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // contentmSw (I0:283;0:1316)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 105*fem, 0*fem),
                              child: Text(
                                'Pay with Another Card',
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
                              // pathUcF (0:284)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                              width: 6*fem,
                              height: 12*fem,
                              child: Image.asset(
                                'assets/app-design/images/path-y6P.png',
                                width: 6*fem,
                                height: 12*fem,
                              ),
                            ),
                          ],
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