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
        // reportnB1 (0:444)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // mapvY7 (0:445)
          width: 652*fem,
          height: 1471*fem,
          decoration: BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/app-design/images/map-bg.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // routeqQB (0:447)
                left: 208*fem,
                top: 174*fem,
                child: Align(
                  child: SizedBox(
                    width: 76.79*fem,
                    height: 307.92*fem,
                    child: Image.asset(
                      'assets/app-design/images/route.png',
                      width: 76.79*fem,
                      height: 307.92*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // pinwTD (0:450)
                left: 184*fem,
                top: 436*fem,
                child: Align(
                  child: SizedBox(
                    width: 46*fem,
                    height: 56*fem,
                    child: Image.asset(
                      'assets/app-design/images/pin.png',
                      width: 46*fem,
                      height: 56*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // profiledL3 (0:455)
                left: 32*fem,
                top: 64*fem,
                child: Align(
                  child: SizedBox(
                    width: 64*fem,
                    height: 64*fem,
                    child: Image.asset(
                      'assets/app-design/images/profile-uLT.png',
                      width: 64*fem,
                      height: 64*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle8Go (0:456)
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
                // tabbarEaj (0:457)
                left: 0*fem,
                top: 753*fem,
                child: Align(
                  child: SizedBox(
                    width: 414*fem,
                    height: 143*fem,
                    child: Image.asset(
                      'assets/app-design/images/tab-bar-YWj.png',
                      width: 414*fem,
                      height: 143*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // bvyM (I0:460;0:1391)
                left: 32*fem,
                top: 593*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(35*fem, 17*fem, 35*fem, 17*fem),
                  width: 350*fem,
                  height: 60*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(30*fem),
                    gradient: LinearGradient (
                      begin: Alignment(1.307, 1.613),
                      end: Alignment(1.307, -1),
                      colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Text(
                    'Broken bike',
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
              Positioned(
                // bUtP (I0:461;0:1391)
                left: 32*fem,
                top: 669*fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(35*fem, 17*fem, 35*fem, 17*fem),
                  width: 350*fem,
                  height: 60*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(30*fem),
                    gradient: LinearGradient (
                      begin: Alignment(1.307, 1.613),
                      end: Alignment(1.307, -1),
                      colors: <Color>[Color(0xff009efd), Color(0xff2af598)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Text(
                    'Unauthorized lock',
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
      ),
          );
  }
}