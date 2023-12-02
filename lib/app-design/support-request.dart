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
        // supportrequestcaB (0:61)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // headerv55 (I0:62;0:1422)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(32*fem, 59*fem, 114.5*fem, 59*fem),
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
                      // iconchevronleftXKm (I0:62;0:1425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.37*fem, 109.72*fem),
                      width: 18.13*fem,
                      height: 17.28*fem,
                      child: Image.asset(
                        'assets/app-design/images/icon-chevron-left-VSP.png',
                        width: 18.13*fem,
                        height: 17.28*fem,
                      ),
                    ),
                    Container(
                      // supportrequestCgo (I0:62;0:1424)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 111*fem),
                      child: Text(
                        'Support Request',
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
              // messagesg6B (0:63)
              left: 0*fem,
              top: 116*fem,
              child: Container(
                width: 414*fem,
                height: 780*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangleB2w (0:64)
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
                      // message54cX (0:65)
                      left: 33*fem,
                      top: 0*fem,
                      child: Container(
                        width: 349*fem,
                        height: 114*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copyAvT (I0:65;0:1401)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 114*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-qDZ.png',
                                    width: 349*fem,
                                    height: 114*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // fuscevehiculadolorfcK (I0:65;0:1404)
                              left: 20*fem,
                              top: 56*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 288*fem,
                                  height: 37*fem,
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
                              // w43 (I0:65;0:1405)
                              left: 297*fem,
                              top: 20*fem,
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
                            Positioned(
                              // mailEJ3 (I0:65;0:1406)
                              left: 20*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/mail-wGj.png',
                                    width: 20*fem,
                                    height: 16*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // message4Lrs (0:66)
                      left: 33*fem,
                      top: 138*fem,
                      child: Container(
                        width: 353*fem,
                        height: 114*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copyGkX (I0:66;0:1401)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 114*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-xCf.png',
                                    width: 349*fem,
                                    height: 114*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // fuscevehiculadolorZzX (I0:66;0:1404)
                              left: 20*fem,
                              top: 56*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 308*fem,
                                  height: 37*fem,
                                  child: Text(
                                    'Vehicula dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
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
                              // FcT (I0:66;0:1405)
                              left: 274*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 79*fem,
                                  height: 16*fem,
                                  child: Text(
                                    '20 Agu 2019',
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
                            Positioned(
                              // mail9C3 (I0:66;0:1406)
                              left: 20*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/mail-wd9.png',
                                    width: 20*fem,
                                    height: 16*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // message3rMM (0:67)
                      left: 33*fem,
                      top: 276*fem,
                      child: Container(
                        width: 351*fem,
                        height: 114*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copyPMH (I0:67;0:1401)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 114*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-s9y.png',
                                    width: 349*fem,
                                    height: 114*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // fuscevehiculadolorVfD (I0:67;0:1404)
                              left: 20*fem,
                              top: 56*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 288*fem,
                                  height: 37*fem,
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
                              // Bnw (I0:67;0:1405)
                              left: 276*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 75*fem,
                                  height: 16*fem,
                                  child: Text(
                                    '12 Agu 2019',
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
                            Positioned(
                              // mail69D (I0:67;0:1406)
                              left: 20*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/mail-wV9.png',
                                    width: 20*fem,
                                    height: 16*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // message2cNT (0:68)
                      left: 33*fem,
                      top: 414*fem,
                      child: Container(
                        width: 349*fem,
                        height: 114*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copyLZM (I0:68;0:1401)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 114*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy-cdD.png',
                                    width: 349*fem,
                                    height: 114*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // fuscevehiculadolorrnb (I0:68;0:1404)
                              left: 20*fem,
                              top: 56*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 308*fem,
                                  height: 37*fem,
                                  child: Text(
                                    'Vehicula dolor arcu, sit ame blandit dolor mollis nec. Done viverra…',
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
                              // 9Wo (I0:68;0:1405)
                              left: 278*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 70*fem,
                                  height: 16*fem,
                                  child: Text(
                                    '27 Jul 2019',
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
                            Positioned(
                              // mailqPd (I0:68;0:1406)
                              left: 20*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/mail.png',
                                    width: 20*fem,
                                    height: 16*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // message1jE7 (0:69)
                      left: 33*fem,
                      top: 552*fem,
                      child: Container(
                        width: 349*fem,
                        height: 114*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // group141copyers (I0:69;0:1401)
                              left: 0*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 349*fem,
                                  height: 114*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group-141-copy.png',
                                    width: 349*fem,
                                    height: 114*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // fuscevehiculadolorxsZ (I0:69;0:1404)
                              left: 20*fem,
                              top: 56*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 288*fem,
                                  height: 37*fem,
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
                              // ekP (I0:69;0:1405)
                              left: 278*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 71*fem,
                                  height: 16*fem,
                                  child: Text(
                                    '20 Jul 2019',
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
                            Positioned(
                              // mailLt7 (I0:69;0:1406)
                              left: 20*fem,
                              top: 20*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/app-design/images/mail-dZh.png',
                                    width: 20*fem,
                                    height: 16*fem,
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
            ),
          ],
        ),
      ),
          );
  }
}