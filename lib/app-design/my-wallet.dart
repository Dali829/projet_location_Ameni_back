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
        // mywalletM4B (0:330)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerf4s (I0:331;0:1414)
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
                      // iconchevronleft5eP (I0:331;0:1417)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-hMq.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Text(
                      // mystatisticsaLF (I0:331;0:1416)
                      'My Wallet',
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
              // rectangleJX9 (0:332)
              left: 0*fem,
              top: 251*fem,
              child: Align(
                child: SizedBox(
                  width: 414*fem,
                  height: 645*fem,
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
              // inputwhiteshadow1AZM (0:334)
              left: 32*fem,
              top: 525*fem,
              child: Container(
                width: 350*fem,
                height: 47*fem,
                child: Container(
                  // autogroup92jzH8B (L985Gg5HyJkTbeVvR992jZ)
                  width: 346*fem,
                  height: 26*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // contentDGj (I0:334;0:1316)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 243*fem, 0*fem),
                        child: Text(
                          'Payment',
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
                        // pathKKm (0:335)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                        width: 6*fem,
                        height: 12*fem,
                        child: Image.asset(
                          'assets/app-design/images/path-bmy.png',
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
              // balance2jy (2:1115)
              left: 32*fem,
              top: 425*fem,
              child: Container(
                width: 350*fem,
                height: 77*fem,
                child: Container(
                  // autogroupjtfyxNj (L985WRBPo2G6VmUFjvJtFy)
                  width: 326*fem,
                  height: 57*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupv38sHvo (L985aqDhqLsGwea3fkv38s)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // contentDJf (0:338)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                              child: Text(
                                'Balance',
                                style: SafeGoogleFont (
                                  'Montserrat',
                                  fontSize: 21*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175*ffem/fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // W2s (0:340)
                              '\$ 10.50',
                              style: SafeGoogleFont (
                                'Montserrat',
                                fontSize: 21*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175*ffem/fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // buttonghost1Dxs (0:337)
                        margin: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 5*fem),
                        width: 114*fem,
                        height: double.infinity,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0x7fc7c7cc)),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Center(
                          child: Text(
                            'Top Up',
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
              ),
            ),
            Positioned(
              // weeklypassTsD (2:1114)
              left: 32*fem,
              top: 167*fem,
              child: Container(
                width: 350*fem,
                height: 224*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(24*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      offset: Offset(0*fem, 16*fem),
                      blurRadius: 16*fem,
                    ),
                  ],
                ),
                child: Center(
                  // autogroupmcqdLRD (L96a46ZpXxiUC3naGUMcqD)
                  child: SizedBox(
                    width: 350*fem,
                    height: 224*fem,
                    child: Image.asset(
                      'assets/app-design/images/auto-group-mcqd.png',
                      width: 350*fem,
                      height: 224*fem,
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