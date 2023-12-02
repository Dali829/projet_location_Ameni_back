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
        // mapwdH (0:513)
        width: double.infinity,
        height: 896*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // mapHh9 (0:514)
          padding: EdgeInsets.fromLTRB(0*fem, 64*fem, 0*fem, 56*fem),
          width: double.infinity,
          height: 952*fem,
          decoration: BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/app-design/images/rectangle-bg-pib.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupedapZPm (L98AVXNfmogYvmYD5YEDAP)
                margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 190*fem, 65*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // profileV2X (0:534)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 98*fem, 18*fem),
                      width: 64*fem,
                      height: 64*fem,
                      child: Image.asset(
                        'assets/app-design/images/profile-xQF.png',
                        width: 64*fem,
                        height: 64*fem,
                      ),
                    ),
                    Container(
                      // ovalzEB (0:526)
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/app-design/images/oval-YmV.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // oval7pb (0:527)
                margin: EdgeInsets.fromLTRB(30*fem, 0*fem, 0*fem, 36*fem),
                width: 30*fem,
                height: 30*fem,
                child: Image.asset(
                  'assets/app-design/images/oval-vqm.png',
                  width: 30*fem,
                  height: 30*fem,
                ),
              ),
              Container(
                // autogroup4xgsqVh (L98Ad6zNbZffvLZQ644Xgs)
                margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 20*fem, 27*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouppdjuAH5 (L98An6jPF87PzvednpPdju)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 0*fem),
                      width: 200*fem,
                      height: 200*fem,
                      child: Image.asset(
                        'assets/app-design/images/auto-group-pdju.png',
                        width: 200*fem,
                        height: 200*fem,
                      ),
                    ),
                    Container(
                      // oval4NT (0:529)
                      margin: EdgeInsets.fromLTRB(0*fem, 54*fem, 0*fem, 0*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/app-design/images/oval-Bif.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // ovaln3Z (0:528)
                margin: EdgeInsets.fromLTRB(210*fem, 0*fem, 0*fem, 25*fem),
                width: 30*fem,
                height: 30*fem,
                child: Image.asset(
                  'assets/app-design/images/oval-zyd.png',
                  width: 30*fem,
                  height: 30*fem,
                ),
              ),
              Container(
                // autogroup58gfJ1u (L98AwbTZbSFDdzQq2r58gf)
                margin: EdgeInsets.fromLTRB(96*fem, 0*fem, 10*fem, 138*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // ovalpkw (0:530)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 248*fem, 26*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/app-design/images/oval-JEB.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                    Container(
                      // ovalwqZ (0:525)
                      margin: EdgeInsets.fromLTRB(0*fem, 26*fem, 0*fem, 0*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/app-design/images/oval-5GB.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // tabbarGN3 (0:531)
                width: 414*fem,
                height: 143*fem,
                child: Image.asset(
                  'assets/app-design/images/tab-bar-hMH.png',
                  width: 414*fem,
                  height: 143*fem,
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}