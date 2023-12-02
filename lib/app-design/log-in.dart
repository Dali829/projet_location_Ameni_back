import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/app-design/sign-up.dart';
import 'package:myapp/app-design/welcome.dart';
import 'package:myapp/utils.dart';
import '../main.dart';
import '../service/links.dart';
import 'navBar.dart';
import 'navBarAdmin.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future login() async {
    try {
      String Url = linkLogin;
      await http
          .post(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({
                "username": emailController.text,
                "password": passwordController.text
              }))
          .then((response) {
        var myresponse = jsonDecode(response.body);

        if (response.statusCode == 200) {
          print(myresponse["Role"]);
          if (myresponse["Role"] == "isAdmin") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NavBarAdmin()));
          } else {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NavBar()));
          }

          sharedPref?.setString("Role", "user");
          sharedPref?.setString("id", myresponse["_id"]);
        } else {
          print("Error");
          print(myresponse["_id"]);
        }
      });
    } catch (e) {
      print("Error");
    }
  }

  /*login() {
    print(emailController.text);
    if (emailController.text == "ameni@gmail.com" &&
        passwordController.text == "Test1") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => NavBar()));
      sharedPref?.setString("Role", "user");
    }
    if (emailController.text == "admin@gmail.com" &&
        passwordController.text == "Test1") {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => NavBarAdmin()));
    } else
      print("bonjour");
  }*/

  var _formKeyLogin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // loginRQj (0:616)
              width: double.infinity,
              height: 896 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // headerLXh (2:1117)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          32 * fem, 73 * fem, 32 * fem, 91 * fem),
                      width: 414 * fem,
                      height: 215 * fem,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
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
                            // autogroupmgmmxoy (L98P3FJS74qooqTFrTmGmM)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 134.5 * fem, 6 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  // logingjy (0:620)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 30.5 * fem, 0 * fem),
                                  child: Text(
                                    'Log in',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 32 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff3d003e),
                                    ),
                                  ),
                                ),
                                Container(
                                  // signupzEs (0:621)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 2 * fem),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => SignUp()));
                                    },
                                    child: Text(
                                      'Sign up',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 21 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0x4c3d003e),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // selecttb9 (0:619)
                            margin: EdgeInsets.fromLTRB(
                                2 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 48 * fem,
                            height: 6 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // card1Qs (2:1116)
                    left: 0 * fem,
                    top: 148 * fem,
                    child: Container(
                      width: 414 * fem,
                      height: 748 * fem,
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
                            // autogrouphgohhHh (L98Pgp4B62JgQ2muCrhGoH)
                            padding: EdgeInsets.fromLTRB(
                                32 * fem, 55 * fem, 32 * fem, 32 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide(
                                              width: 3,
                                              color: Colors.greenAccent),
                                        ),
                                        labelText: 'User Name',
                                        hintText: 'Enter name '),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    controller: passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      labelText: 'Password',
                                      hintText: 'Enter password',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                InkWell(
                                  onTap: () {
                                    login();
                                  },
                                  child: Container(
                                    // buttonwhite1dW7 (0:627)
                                    width: double.infinity,
                                    height: 70 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(35 * fem),
                                      gradient: LinearGradient(
                                        begin: Alignment(1.307, 1.613),
                                        end: Alignment(1.307, -1),
                                        colors: <Color>[
                                          Color(0xff009efd),
                                          Color(0xff2af598)
                                        ],
                                        stops: <double>[0, 1],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 21 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    sharedPref?.setString("Role", "customer");
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => NavBar()));
                                  },
                                  child: Container(
                                    // buttonwhite1dW7 (0:627)
                                    width: double.infinity,
                                    height: 70 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(35 * fem),
                                      gradient: LinearGradient(
                                        begin: Alignment(1.307, 1.613),
                                        end: Alignment(1.307, -1),
                                        colors: <Color>[
                                          Color(0xff009efd),
                                          Color(0xff2af598)
                                        ],
                                        stops: <double>[0, 1],
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Login as customer',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 21 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Colors.black,
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
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
