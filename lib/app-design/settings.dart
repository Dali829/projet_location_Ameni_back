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
        // settingsx1D (0:2)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerzs1 (I0:3;0:1414)
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
                      // iconchevronleftyyq (I0:3;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-PnX.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatisticsSMd (I0:3;0:1416)
                      'Settings',
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
              // inputs919 (0:4)
              left: 0*fem,
              top: 167*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 35*fem, 32*fem, 283*fem),
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
                      // phonenumberMN7 (0:22)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentGjy (0:24)
                            'Phone Number',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                          Container(
                            // autogroupbmrr2cf (L97nXuTqb2PFPtFqpVbMRR)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // X3d (0:25)
                                  margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 194*fem, 0*fem),
                                  child: Text(
                                    '406 765 43 92',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // path2WB (0:23)
                                  width: 6*fem,
                                  height: 12*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/path.png',
                                    width: 6*fem,
                                    height: 12*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // favouriteaddressYUX (0:17)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopy3w5 (0:19)
                            'Favourite Address',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                          Container(
                            // autogroup7rjzBXV (L97nMzagpRB1nkmWxk7rjZ)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // marbellaVHH (0:20)
                                  margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 249*fem, 0*fem),
                                  child: Text(
                                    'Marbella',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // pathcopybLK (0:18)
                                  width: 6*fem,
                                  height: 12*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/path-copy.png',
                                    width: 6*fem,
                                    height: 12*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // languageJVd (0:12)
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // contentcopy2dno (0:14)
                            'Language',
                            style: SafeGoogleFont (
                              'Montserrat',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2175*ffem/fem,
                              color: Color(0xff3d003e),
                            ),
                          ),
                          Container(
                            // autogrouphy9ykMd (L97nBaiNM4Ggd9cEZjHy9y)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 19*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // englishHMZ (0:15)
                                  margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 262*fem, 0*fem),
                                  child: Text(
                                    'English',
                                    style: SafeGoogleFont (
                                      'Montserrat',
                                      fontSize: 21*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175*ffem/fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // pathcopy2zFy (0:13)
                                  width: 6*fem,
                                  height: 12*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/path-copy-2.png',
                                    width: 6*fem,
                                    height: 12*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // notificationshw5 (0:9)
                      width: double.infinity,
                      height: 50*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow1FSo (0:10)
                            left: 0*fem,
                            top: 3*fem,
                            child: Container(
                              width: 350*fem,
                              height: 47*fem,
                              child: Container(
                                // autogroup454bNGX (L97n219ziHXBPfuDQA454b)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                                width: 326*fem,
                                height: 26*fem,
                                child: Text(
                                  'Notifications',
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
                            // controlstableviewrowxaccessory (0:11)
                            left: 299*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 51*fem,
                                height: 31*fem,
                                child: Image.asset(
                                  'assets/app-design/images/controls-table-view-row-x-accessory-right-dark-switch-off.png',
                                  width: 51*fem,
                                  height: 31*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20*fem,
                    ),
                    Container(
                      // traffichi7 (0:6)
                      width: double.infinity,
                      height: 50*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // inputwhiteshadow13my (0:7)
                            left: 0*fem,
                            top: 3*fem,
                            child: Container(
                              width: 350*fem,
                              height: 47*fem,
                              child: Container(
                                // autogroupje3yxe3 (L97mmRjx3yriZRUcqwJE3y)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 21*fem),
                                width: 326*fem,
                                height: 26*fem,
                                child: Text(
                                  'Traffic',
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
                            // controlstableviewrowxaccessory (0:8)
                            left: 299*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 51*fem,
                                height: 31*fem,
                                child: Image.asset(
                                  'assets/app-design/images/controls-table-view-row-x-accessory-right-dark-switch-on-copy.png',
                                  width: 51*fem,
                                  height: 31*fem,
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