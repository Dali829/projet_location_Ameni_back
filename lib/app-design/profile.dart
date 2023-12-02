import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import '../main.dart';
import '../models/profileModel.dart';
import '../service/links.dart';

class Scene6 extends StatefulWidget {
  @override
  State<Scene6> createState() => _Scene6State();
}

class _Scene6State extends State<Scene6> {
  @override
  void initState() {
    super.initState();
    profilData = getClientById();
  }

  Future patchUser(champs, value) async {
    if (champs != null) {
      try {
        String Url = "$updateuser${sharedPref?.getString("id")}";
        await http
            .put(Uri.parse(Url),
                headers: {
                  "Accept": "application/json",
                  "content-type": "application/json"
                },
                body: jsonEncode({champs: value}))
            .then((response) {
          if ((response.statusCode == 200) || response.statusCode == 201) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                "User updated !!",
                style: TextStyle(fontSize: 25),
              ),
              backgroundColor: Color(0xff7CDDC4),
              elevation: 400,
            ));
            setState(() {
              profilData = getClientById();
            });
          } else {
            print("error");
          }
        });
      } catch (e) {
        print(e.toString());
      }
    } else
      (ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "ERROR !!",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xff7CDDC4),
        elevation: 400,
      )));
  }

  Future<profilModel>? profilData;
  Future<profilModel> getClientById() async {
    String Url = "$getUserById${sharedPref?.getString("id")}";
    http.Response futureprofil = await http.get(Uri.parse(Url));
    print(futureprofil.statusCode);
    print(futureprofil.body);
    if ((futureprofil.statusCode == 200) || (futureprofil.statusCode == 201)) {
      return profilModel.fromJson(json.decode(futureprofil.body));
    } else {
      throw Exception('can not load post data');
    }
  }

  var _formKey = GlobalKey<FormState>();
  TextEditingController Name_controller = new TextEditingController();
  TextEditingController email_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();

  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return (sharedPref?.getString("Role").toString() == "user")
        ? FutureBuilder<profilModel>(
            future: profilData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Container(
                      // profileoRq (0:379)
                      width: double.infinity,
                      height: 896 * fem,

                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        gradient: LinearGradient(
                          begin: Alignment(1.307, 1.613),
                          end: Alignment(1.307, -1),
                          colors: <Color>[Color(0xff2af598), Colors.white],
                          stops: <double>[0, 1],
                        ),
                      ),

                      child: Container(
                        // backscreenLwZ (0:380)
                        width: double.infinity,
                        height: 952 * fem,

                        child: Stack(
                          children: [
                            Positioned(
                              // groupSDu (0:382)

                              top: 277 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 200 * fem,
                                  height: 200 * fem,
                                  child: Image.asset(
                                    'assets/app-design/images/group.png',
                                    width: 200 * fem,
                                    height: 200 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // profileDdH (2:1129)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(130.5 * fem,
                                    64 * fem, 190.5 * fem, 51 * fem),
                                height: 320 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // profilergF (0:411)

                                      width: 100 * fem,
                                      height: 100 * fem,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/app-design/images/ameni.jpeg"),
                                        radius: 50,
                                      ),
                                    ),
                                    Text(
                                      // lucassimesmoD (0:412)
                                      "${snapshot.data!.username}",
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 21 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff3d003e),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // cardg9V (2:1128)
                              left: 0 * fem,
                              top: 233 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    32 * fem, 54 * fem, 30.5 * fem, 55 * fem),
                                width: 360 * fem,
                                height: 663 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(48 * fem),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // inputwhiteshadow1WgF (0:419)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 1.5 * fem, 23 * fem),
                                      width: 296 * fem,
                                      height: 80 * fem,
                                      child: Container(
                                        // autogroupusebEcF (L987XCA9eNoALakg2mUSeB)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 24 * fem, 21 * fem),
                                        width: 272 * fem,
                                        height: 26 * fem,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 200,
                                                  child: TextField(
                                                    controller: Name_controller,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            '${snapshot.data!.username}'),
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 21 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.mode_edit),
                                                  onPressed: () {
                                                    patchUser("username",
                                                        Name_controller.text);
                                                  },
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              height: 10,
                                              color: Colors.green,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // inputwhiteshadow1WgF (0:419)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 1.5 * fem, 23 * fem),
                                      width: 296 * fem,
                                      height: 80 * fem,
                                      child: Container(
                                        // autogroupusebEcF (L987XCA9eNoALakg2mUSeB)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 24 * fem, 21 * fem),
                                        width: 272 * fem,
                                        height: 26 * fem,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 200,
                                                  child: TextField(
                                                    controller:
                                                        email_controller,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "${snapshot.data!.email}"),
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 21 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.mode_edit),
                                                  onPressed: () {
                                                    patchUser("email",
                                                        email_controller.text);
                                                  },
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              height: 10,
                                              color: Colors.green,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // inputwhiteshadow1WgF (0:419)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 1.5 * fem, 23 * fem),
                                      width: 296 * fem,
                                      height: 80 * fem,
                                      child: Container(
                                        // autogroupusebEcF (L987XCA9eNoALakg2mUSeB)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 24 * fem, 21 * fem),
                                        width: 272 * fem,
                                        height: 26 * fem,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '22 444 666',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff3d003e),
                                                  ),
                                                ),
                                                Icon(Icons.mode_edit),
                                              ],
                                            ),
                                            Divider(
                                              height: 10,
                                              color: Colors.green,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // inputwhiteshadow1WgF (0:419)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 1.5 * fem, 23 * fem),
                                      width: 296 * fem,
                                      height: 80 * fem,
                                      child: Container(
                                        // autogroupusebEcF (L987XCA9eNoALakg2mUSeB)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 24 * fem, 21 * fem),
                                        width: 272 * fem,
                                        height: 26 * fem,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 200,
                                                  child: TextField(
                                                    controller:
                                                        password_controller,
                                                    decoration:
                                                        new InputDecoration(
                                                            hintText:
                                                                'password'),
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 21 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.mode_edit),
                                                  onPressed: () {
                                                    patchUser(
                                                        "password",
                                                        password_controller
                                                            .text);
                                                  },
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              height: 10,
                                              color: Colors.green,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      // autogroup5wkhKiF (L986SonS6fzrwMjoaE5WKH)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 23 * fem),
                                      width: double.infinity,
                                      height: 48 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // inputwhiteshadow138T (0:415)
                                            left: 0 * fem,
                                            top: 1 * fem,
                                            child: Container(
                                              width: 296 * fem,
                                              height: 47 * fem,
                                              child: Container(
                                                // autogroupuptsm4T (L986dDeka2uC6xu5yEuPts)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    24 * fem,
                                                    21 * fem),
                                                width: 272 * fem,
                                                height: 26 * fem,
                                                child: Text(
                                                  'My Wallet',
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
                                          Positioned(
                                            // ETq (0:426)
                                            left: 224.5 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 73 * fem,
                                                height: 26 * fem,
                                                child: Text(
                                                  '\$ ${snapshot.data!.wallet}',
                                                  textAlign: TextAlign.right,
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 21 * ffem,
                                                    fontWeight: FontWeight.w600,
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
                                    Container(
                                      // autogroupzumrWdd (L986mt4z5ktBouD1ypzuMR)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 163.5 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            // iconlogoutEJj (0:421)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 20 * fem, 0 * fem),
                                            width: 28 * fem,
                                            height: 28 * fem,
                                            child: Image.asset(
                                              'assets/app-design/images/icon-log-out.png',
                                              width: 28 * fem,
                                              height: 28 * fem,
                                            ),
                                          ),
                                          Text(
                                            // logoutKLB (0:420)
                                            'Log Out',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 21 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175 * ffem / fem,
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
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("Verifer votre connexion",
                    style: TextStyle(fontSize: 30));
              }
              return CircularProgressIndicator();
            })
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "you need to connect first",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(height: 30),
                Image.asset(
                  "assets/app-design/images/error-icon-4.png",
                  width: 100,
                )
              ],
            ),
          );
  }
}
