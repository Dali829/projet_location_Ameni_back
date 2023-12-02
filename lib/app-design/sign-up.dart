import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../service/links.dart';
import 'log-in.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FToast? fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast?.init(context);
  }

  showCustomToast(String libelle) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.blueGrey,
      ),
      child: Text(
        libelle,
        style: TextStyle(color: Colors.white),
      ),
    );

    fToast?.showToast(
      child: toast,
      toastDuration: const Duration(seconds: 3),
    );
  }

  var _formKeyLogin = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Future register() async {
    try {
      String Url = "$linkregister";
      await http
          .post(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({
                "email": emailController.text,
                "password": passwordController.text,
                "username": nameController.text
              }))
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          showCustomToast('welcome');
        } else {
          showCustomToast('error');
        }
      });
    } catch (e) {
      showCustomToast('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024108887;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // signupUb1 (0:602)
              width: double.infinity,
              height: 896 * fem,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // headerotB (2:1119)
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupgeak31q (L98KWbgRsbFZ1Tu8caGeaK)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 127 * fem, 6 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: Container(
                                    // loginAMM (0:606)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 29 * fem, 2 * fem),
                                    child: Text(
                                      'Log in',
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
                                Text(
                                  // signupTbM (0:607)
                                  'Sign up',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 32 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff3d003e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // rectanglentX (0:605)
                            margin: EdgeInsets.fromLTRB(
                                97 * fem, 0 * fem, 205 * fem, 0 * fem),
                            width: double.infinity,
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
                    // carduy9 (2:1118)
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
                            // autogroupvbnpQQ7 (L98LEk8sTnYyENDDjtvbnP)
                            padding: EdgeInsets.fromLTRB(
                                32 * fem, 46 * fem, 32 * fem, 32 * fem),
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
                                        labelText: 'User E-mail',
                                        hintText: 'Enter e-mail '),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    controller: nameController,
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
                                    register();
                                  },
                                  child: Container(
                                    // buttonwhite1HJo (0:614)
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
                                        'Sign up',
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
