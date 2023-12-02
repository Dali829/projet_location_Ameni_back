import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'onboarding.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double width = MediaQuery.of(context).size.width;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashCRV (0:816)
        padding: EdgeInsets.fromLTRB(32 * fem, 319.2 * fem, 32 * fem, 2 * fem),
        width: double.infinity,
        /* decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/app-design/images/WhatsApp Image 2023-10-24 at 23.55.23.jpeg"),
            fit: BoxFit.fitHeight,
          ),
        ),*/
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // shapeEsy (0:821)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 140.53 * fem),
              width: width * 0.9,

              child: Image.asset(
                'assets/app-design/images/WhatsApp Image 2023-10-25 at 00.36.26.jpeg',
                width: width * 0.9,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Scene1()));
              },
              child: Container(
                // buttontransparency1LAK (0:818)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
                width: double.infinity,
                height: 70 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff2af598),
                  borderRadius: BorderRadius.circular(35 * fem),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 21 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xff3d003e),
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
