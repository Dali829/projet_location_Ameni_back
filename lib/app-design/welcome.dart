import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/intl.dart';
import 'package:myapp/utils.dart';
import '../main.dart';
import '../models/profileModel.dart';
import '../models/veloModele.dart';
import '../service/links.dart';
import 'listeScooter.dart';
import 'listeVelo.dart';
import 'onboarding.dart';

class welcome extends StatefulWidget {
  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  var _formKey = GlobalKey<FormState>();
  TextEditingController Input_controller = new TextEditingController();
  @override
  void initState() {
    super.initState();
    print(sharedPref?.getString("Role"));
    profilData = getClientById();
    _Datas = getAll();
    _Datas2 = getAll2();
  }

  late int SOmmeWallet;

  Future addReservation(prix, veloID) async {
    try {
      String Url = "$postreservation";
      await http
          .post(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({
                "date": DateTime.now().toString().substring(0, 10),
                "prix": prix,
                "user": sharedPref?.getString("id"),
                "velo": veloID
              }))
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "rented !!",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Color(0xff7CDDC4),
            elevation: 400,
          ));
          setState(() {
            _Datas = getAll();
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "error !!",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Color(0xff7CDDC4),
            elevation: 400,
          ));
        }
      });
    } catch (e) {
      print(e);
    }
  }

  Future patchElem(id, sommP) async {
    try {
      String Url = "$updateVelo${id}";
      print("$updateVelo${id}");
      await http
          .put(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({"reserved": true}))
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          patchUser(-sommP);
          addReservation(sommP, id);
          setState(() {
            _Datas = getAll();
            _Datas2 = getAll2();
          });
        } else {
          print("error");
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future patchUser(somme) async {
    try {
      String Url = "$updateuser${sharedPref?.getString("id")}";
      await http
          .put(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({"wallet": somme}))
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "wallet updated !!",
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
  }

  List<BicycleModel> mesData = [];
  List<BicycleModel> mesData2 = [];

  late Future<List<BicycleModel>> _Datas;
  late Future<List<BicycleModel>> _Datas2;

  Future<List<BicycleModel>> getAll() async {
    String Url = "$getBicycle";
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      print(response.body);
      return mesData = parsed
          .map<BicycleModel>((json) => BicycleModel.fromMap(json))
          .where((i) => i.typeV == "velo")
          .toList();
    } else {
      throw Exception('Vérifier votre connexion');
    }
  }

  Future<List<BicycleModel>> getAll2() async {
    String Url = "$getBicycle";
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      print(response.body);
      return mesData2 = parsed
          .map<BicycleModel>((json) => BicycleModel.fromMap(json))
          .where((i) => i.typeV == "trottinette")
          .toList();
    } else {
      throw Exception('Vérifier votre connexion');
    }
  }

  Future<profilModel>? profilData;
  Future<profilModel> getClientById() async {
    String Url = "$getUserById${sharedPref?.getString("id")}";
    http.Response futureprofil = await http.get(Uri.parse(Url));
    if ((futureprofil.statusCode == 200) || (futureprofil.statusCode == 201)) {
      return profilModel.fromJson(json.decode(futureprofil.body));
    } else {
      throw Exception('can not load post data');
    }
  }

  final currentTime = DateTime.now();
  Future<void> _showAlertDialog(sommeEx) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Code ticket'),
          content: SingleChildScrollView(
            child: Container(
              width: 200,
              child: TextFormField(
                controller: Input_controller,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (val) {
                  if (val?.length == 0) {
                    return "error";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Load'),
              onPressed: () {
                patchUser(sommeEx + 100);

                Timer(Duration(seconds: 3), () {
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        );
      },
    );
  }

  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
                // welcomejh9 (0:554)
                padding:
                    EdgeInsets.fromLTRB(24 * fem, 32 * fem, 0 * fem, 46 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  gradient: LinearGradient(
                    begin: Alignment(1.307, 1.613),
                    end: Alignment(1.307, -1),
                    colors: <Color>[Color(0xff2af598), Colors.white],
                    stops: <double>[0, 1],
                  ),
                ),
                child: FutureBuilder<profilModel>(
                    future: profilData,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // headerNEK (2:1121)
                              margin: EdgeInsets.fromLTRB(
                                  8 * fem, 0 * fem, 0 * fem, 33 * fem),
                              width: 352.49 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  (sharedPref?.getString("Role").toString() ==
                                          "user")
                                      ? Container(
                                          // autogrouppxmyVZq (L98Go1YLyPFzSMRqy7PXMy)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 17 * fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/app-design/images/ameni.jpeg"),
                                                radius: 50,
                                              ),
                                            ],
                                          ),
                                        )
                                      : Container(),
                                  (sharedPref?.getString("Role").toString() ==
                                          "user")
                                      ? Container(
                                          // hellolucasEfq (0:584)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 8 * fem),
                                          child: Text(
                                            'Hello ${snapshot.data!.username},',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 32 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff3d003e),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  (sharedPref?.getString("Role").toString() ==
                                          "user")
                                      ? Container(
                                          // wannatakearidetoXQ3 (0:583)
                                          width: double.infinity,
                                          child: Text(
                                            'Wanna take a ride today?',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff3d003e),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            Container(
                              // weatherreportdxs (2:1122)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 40 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 23 * fem, 0 * fem, 0 * fem),
                              width: 366 * fem,
                              decoration: BoxDecoration(
                                color: Color(0x7fffffff),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24 * fem),
                                  topRight: Radius.circular(24 * fem),
                                  bottomRight: Radius.circular(30 * fem),
                                  bottomLeft: Radius.circular(30 * fem),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x28000000),
                                    offset: Offset(0 * fem, 12 * fem),
                                    blurRadius: 15 * fem,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupm9yhTwu (L98G6SsbmueYVJ5TP8M9yh)
                                    margin: EdgeInsets.fromLTRB(24 * fem,
                                        0 * fem, 72 * fem, 18.95 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // cloudlynjH (0:571)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 24.16 * fem, 0 * fem),
                                          width: 125.84 * fem,
                                          height: 95.05 * fem,
                                          child: Image.asset(
                                            'assets/app-design/images/cloudly.png',
                                            width: 125.84 * fem,
                                            height: 95.05 * fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupugijh5Z (L98GD2WyCAFUMukjK7Ugij)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 3.05 * fem),
                                          width: 120 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // autogroupksc7Qkf (L98GHmt4NKKPBSdpw8KSC7)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // k3q (0:570)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              6 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        '18º',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 32 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff3d003e),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // cloudlydtK (0:569)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              3 * fem),
                                                      child: Text(
                                                        'Cloudly',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 18 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff3d003e),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // marbelladrx9u (0:568)
                                                'Marbella Dr',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 18 * ffem,
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
                                  Container(
                                    // autogroupvtzu61D (L98GXS9xuaDLV9fLLMvtZu)
                                    width: double.infinity,
                                    height: 53 * fem,
                                    decoration: BoxDecoration(
                                      color: Color(0xffd1ffef),
                                      borderRadius:
                                          BorderRadius.circular(26.5 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x28000000),
                                          offset: Offset(0 * fem, 12 * fem),
                                          blurRadius: 15 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${currentTime.day.toString()} ${months[currentTime.month - 1]} , ${DateFormat.EEEE().format(DateTime.now())}',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff3d003e),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            (mesData.length > 1)
                                ? Container(
                                    // cardswGj (2:1123)
                                    width: 668 * fem,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroup2zifgk7 (L98F79BkYCNtHFizEn2Zif)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 20 * fem),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          VeloList()));
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  // nearyouQg7 (0:557)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      136 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'bicycles ',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 21 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // browsemap86K (0:558)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      10.36 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'more',
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 18 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // iconchevronleftEf9 (0:561)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      2 * fem),
                                                  width: 8.64 * fem,
                                                  height: 17.28 * fem,
                                                  child: Image.asset(
                                                    'assets/app-design/images/icon-chevron-left-Kpj.png',
                                                    width: 8.64 * fem,
                                                    height: 17.28 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroup6uqdk7h (L98FF48EVnpjeUXUwU6Uqd)
                                          width: double.infinity,
                                          height: 374 * fem,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // card16BZ (I0:559;0:1430)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      24 * fem,
                                                      0 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      22 * fem,
                                                      27 * fem,
                                                      22 * fem,
                                                      18 * fem),
                                                  width: 322 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x28000000),
                                                        offset: Offset(
                                                            0 * fem, 12 * fem),
                                                        blurRadius: 15 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // bitmapLbh (I0:559;0:1438)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                19.31 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                26 * fem),
                                                        width: 230 * fem,
                                                        height: 132 * fem,
                                                        child: Image.network(
                                                          mesData[1]
                                                              .photos
                                                              .first,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          patchElem(
                                                              mesData[1].id,
                                                              mesData[1].price);
                                                        },
                                                        child: Container(
                                                          // distance4nb (I0:559;0:1434)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  82 * fem,
                                                                  17 * fem),
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  31 * fem,
                                                                  14 * fem,
                                                                  36 * fem,
                                                                  15 * fem),
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27.5 *
                                                                            fem),
                                                            gradient:
                                                                LinearGradient(
                                                              begin: Alignment(
                                                                  1.307, 1.613),
                                                              end: Alignment(
                                                                  1.307, -1),
                                                              colors: <Color>[
                                                                Color(
                                                                    0xff009efd),
                                                                Color(
                                                                    0xff2af598)
                                                              ],
                                                              stops: <double>[
                                                                0,
                                                                1
                                                              ],
                                                            ),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // distanceWeb (I0:559;0:1436)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        8 * fem,
                                                                        0 * fem),
                                                                child: Text(
                                                                  'rent',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        16 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff3d003e),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // m15Z (I0:559;0:1437)
                                                                '${mesData[1].price} dt',
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      21 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: Color(
                                                                      0xff3d003e),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // haibikesdurofullseLdd (I0:559;0:1433)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                5 * fem),
                                                        child: Text(
                                                          mesData[1].name,
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // available3H9 (I0:559;0:1432)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '1 Available',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // card16BZ (I0:559;0:1430)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      24 * fem,
                                                      0 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      22 * fem,
                                                      27 * fem,
                                                      22 * fem,
                                                      18 * fem),
                                                  width: 322 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x28000000),
                                                        offset: Offset(
                                                            0 * fem, 12 * fem),
                                                        blurRadius: 15 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // bitmapLbh (I0:559;0:1438)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                19.31 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                26 * fem),
                                                        width: 230 * fem,
                                                        height: 132 * fem,
                                                        child: Image.network(
                                                          mesData[2]
                                                              .photos
                                                              .first,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          patchElem(
                                                              mesData[2].id,
                                                              mesData[2].price);
                                                        },
                                                        child: Container(
                                                          // distance4nb (I0:559;0:1434)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  82 * fem,
                                                                  17 * fem),
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  31 * fem,
                                                                  14 * fem,
                                                                  36 * fem,
                                                                  15 * fem),
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27.5 *
                                                                            fem),
                                                            gradient:
                                                                LinearGradient(
                                                              begin: Alignment(
                                                                  1.307, 1.613),
                                                              end: Alignment(
                                                                  1.307, -1),
                                                              colors: <Color>[
                                                                Color(
                                                                    0xff009efd),
                                                                Color(
                                                                    0xff2af598)
                                                              ],
                                                              stops: <double>[
                                                                0,
                                                                1
                                                              ],
                                                            ),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // distanceWeb (I0:559;0:1436)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        8 * fem,
                                                                        0 * fem),
                                                                child: Text(
                                                                  'rent',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        16 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff3d003e),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // m15Z (I0:559;0:1437)
                                                                '${mesData[2].price} dt',
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      21 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: Color(
                                                                      0xff3d003e),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // haibikesdurofullseLdd (I0:559;0:1433)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                5 * fem),
                                                        child: Text(
                                                          mesData[2].name,
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // available3H9 (I0:559;0:1432)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '1 Available',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
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
                                  )
                                : Container(),
                            SizedBox(height: 50),
                            (mesData2.length > 1)
                                ? Container(
                                    // cardswGj (2:1123)
                                    width: 668 * fem,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // autogroup2zifgk7 (L98F79BkYCNtHFizEn2Zif)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 20 * fem),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ScooterList()));
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  // nearyouQg7 (0:557)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      136 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'scooters ',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 21 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // browsemap86K (0:558)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      10.36 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'more',
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 18 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff3d003e),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // iconchevronleftEf9 (0:561)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      2 * fem),
                                                  width: 8.64 * fem,
                                                  height: 17.28 * fem,
                                                  child: Image.asset(
                                                    'assets/app-design/images/icon-chevron-left-Kpj.png',
                                                    width: 8.64 * fem,
                                                    height: 17.28 * fem,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroup6uqdk7h (L98FF48EVnpjeUXUwU6Uqd)
                                          width: double.infinity,
                                          height: 374 * fem,
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // card16BZ (I0:559;0:1430)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      24 * fem,
                                                      0 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      22 * fem,
                                                      27 * fem,
                                                      22 * fem,
                                                      18 * fem),
                                                  width: 322 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x28000000),
                                                        offset: Offset(
                                                            0 * fem, 12 * fem),
                                                        blurRadius: 15 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // bitmapLbh (I0:559;0:1438)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                19.31 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                26 * fem),
                                                        width: 230 * fem,
                                                        height: 132 * fem,
                                                        child: Image.network(
                                                          mesData2[1]
                                                              .photos
                                                              .first,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          patchElem(
                                                              mesData2[1].id,
                                                              mesData2[1]
                                                                  .price);
                                                        },
                                                        child: Container(
                                                          // distance4nb (I0:559;0:1434)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  82 * fem,
                                                                  17 * fem),
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  31 * fem,
                                                                  14 * fem,
                                                                  36 * fem,
                                                                  15 * fem),
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27.5 *
                                                                            fem),
                                                            gradient:
                                                                LinearGradient(
                                                              begin: Alignment(
                                                                  1.307, 1.613),
                                                              end: Alignment(
                                                                  1.307, -1),
                                                              colors: <Color>[
                                                                Color(
                                                                    0xff009efd),
                                                                Color(
                                                                    0xff2af598)
                                                              ],
                                                              stops: <double>[
                                                                0,
                                                                1
                                                              ],
                                                            ),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // distanceWeb (I0:559;0:1436)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        8 * fem,
                                                                        0 * fem),
                                                                child: Text(
                                                                  'rent',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        16 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff3d003e),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // m15Z (I0:559;0:1437)
                                                                '${mesData2[1].price} dt',
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      21 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: Color(
                                                                      0xff3d003e),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // haibikesdurofullseLdd (I0:559;0:1433)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                5 * fem),
                                                        child: Text(
                                                          mesData2[1].name,
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // available3H9 (I0:559;0:1432)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '1 Available',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  // card16BZ (I0:559;0:1430)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      24 * fem,
                                                      0 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      22 * fem,
                                                      27 * fem,
                                                      22 * fem,
                                                      18 * fem),
                                                  width: 322 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffffffff),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x28000000),
                                                        offset: Offset(
                                                            0 * fem, 12 * fem),
                                                        blurRadius: 15 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        // bitmapLbh (I0:559;0:1438)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                19.31 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                26 * fem),
                                                        width: 230 * fem,
                                                        height: 132 * fem,
                                                        child: Image.network(
                                                          mesData2[2]
                                                              .photos
                                                              .first,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          patchElem(
                                                              mesData2[2].id,
                                                              mesData2[2]
                                                                  .price);
                                                        },
                                                        child: Container(
                                                          // distance4nb (I0:559;0:1434)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  82 * fem,
                                                                  17 * fem),
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  31 * fem,
                                                                  14 * fem,
                                                                  36 * fem,
                                                                  15 * fem),
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27.5 *
                                                                            fem),
                                                            gradient:
                                                                LinearGradient(
                                                              begin: Alignment(
                                                                  1.307, 1.613),
                                                              end: Alignment(
                                                                  1.307, -1),
                                                              colors: <Color>[
                                                                Color(
                                                                    0xff009efd),
                                                                Color(
                                                                    0xff2af598)
                                                              ],
                                                              stops: <double>[
                                                                0,
                                                                1
                                                              ],
                                                            ),
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // distanceWeb (I0:559;0:1436)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        8 * fem,
                                                                        0 * fem),
                                                                child: Text(
                                                                  'rent',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        16 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff3d003e),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                // m15Z (I0:559;0:1437)
                                                                '${mesData2[2].price} dt',
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      21 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: Color(
                                                                      0xff3d003e),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // haibikesdurofullseLdd (I0:559;0:1433)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                5 * fem),
                                                        child: Text(
                                                          mesData2[2].name,
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // available3H9 (I0:559;0:1432)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          '1 Available',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 18 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: Color(
                                                                0xff3d003e),
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
                                  )
                                : Container(),
                            (sharedPref?.getString("Role").toString() == "user")
                                ? Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 40 * fem, 25 * fem, 0 * fem),
                                    child: Card(
                                      // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      // Set the clip behavior of the card
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      // Define the child widgets of the card
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          // Display an image at the top of the card that fills the width of the card and has a height of 160 pixels
                                          Image.asset(
                                            'assets/app-design/images/2902191.jpg',
                                            height: 160,
                                            width: double.infinity,
                                            fit: BoxFit.contain,
                                          ),
                                          // Add a container with padding that contains the card's title, text, and buttons
                                          Container(
                                            color: Colors.grey[200],
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 15, 15, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                // Display the card's title using a font size of 24 and a dark grey color
                                                Text(
                                                  "My Wallet",
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                // Add a space between the title and the text
                                                Container(height: 10),
                                                // Display the card's text using a font size of 15 and a light grey color
                                                Text(
                                                  '${snapshot.data!.wallet} DT',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                // Add a row with two buttons spaced apart and aligned to the right side of the card
                                                Row(
                                                  children: <Widget>[
                                                    // Add a spacer to push the buttons to the right side of the card
                                                    const Spacer(),
                                                    // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                                                    TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        foregroundColor:
                                                            Colors.transparent,
                                                      ),
                                                      child: const Text(
                                                        "SHARE",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      onPressed: () {},
                                                    ),
                                                    // Add a text button labeled "EXPLORE" with transparent foreground color and an accent color for the text
                                                    TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                        foregroundColor:
                                                            Colors.transparent,
                                                      ),
                                                      child: const Text(
                                                        "load my wallet",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      onPressed: () {
                                                        _showAlertDialog(
                                                            snapshot
                                                                .data!.wallet);
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          // Add a small space between the card and the next widget
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        );
                      } else if (snapshot.hasError) {
                        return Text("Verifer votre connexion",
                            style: TextStyle(fontSize: 30));
                      }
                      return CircularProgressIndicator();
                    })),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
