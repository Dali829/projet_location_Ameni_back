import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:http/http.dart' as http;

import '../main.dart';
import '../models/veloModele.dart';
import '../service/links.dart';

class VeloList extends StatefulWidget {
  @override
  State<VeloList> createState() => _VeloListState();
}

class _VeloListState extends State<VeloList> {
  @override
  void initState() {
    super.initState();
    _Datas = getAll();
  }

  List<BicycleModel> mesData = [];
  late Future<List<BicycleModel>> _Datas;

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

  Future patchElem(id, prix) async {
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
          addReservation(prix, id);
        } else {
          print("error");
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

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

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bikes',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Menu Icon',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Color(0xff2af598),
        ), //AppBar
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: FutureBuilder<List<BicycleModel>>(
                  future: _Datas,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 15.0),
                        height: height * 0.75,
                        child: ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            color: Colors.grey[200],
                                          ),
                                          padding: EdgeInsets.all(10),
                                          height: 350,
                                          width: 350,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // bitmapLbh (I0:559;0:1438)
                                                margin: EdgeInsets.fromLTRB(
                                                    19.31 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    26 * fem),
                                                width: 230 * fem,
                                                height: 132 * fem,
                                                child: Image.network(
                                                  snapshot.data![index].photos
                                                      .first,
                                                ),
                                              ),
                                              (!snapshot.data![index].reserved)
                                                  ? InkWell(
                                                      onTap: () {
                                                        patchElem(
                                                            snapshot
                                                                .data![index]
                                                                .id,
                                                            snapshot
                                                                .data![index]
                                                                .price);
                                                      },
                                                      child: Container(
                                                        // distance4nb (I0:559;0:1434)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                40 * fem,
                                                                0 * fem,
                                                                40 * fem,
                                                                17 * fem),
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                31 * fem,
                                                                14 * fem,
                                                                36 * fem,
                                                                15 * fem),
                                                        width: double.infinity,
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
                                                              Color(0xff009efd),
                                                              Color(0xff2af598)
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
                                                                      16 * ffem,
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
                                                              '${snapshot.data![index].price} dt',
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
                                                                height: 1.2175 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff3d003e),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  : Container(
                                                      // distance4nb (I0:559;0:1434)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              40 * fem,
                                                              0 * fem,
                                                              40 * fem,
                                                              17 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              31 * fem,
                                                              14 * fem,
                                                              36 * fem,
                                                              15 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    27.5 * fem),
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
                                                              'rented',
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Montserrat',
                                                                fontSize:
                                                                    16 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2175 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff3d003e),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // m15Z (I0:559;0:1437)
                                                            '${snapshot.data![index].price} dt',
                                                            textAlign:
                                                                TextAlign.right,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Montserrat',
                                                              fontSize:
                                                                  21 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              height: 1.2175 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff3d003e),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                              Container(
                                                // haibikesdurofullseLdd (I0:559;0:1433)
                                                margin: EdgeInsets.fromLTRB(
                                                    2 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    5 * fem),
                                                child: Text(
                                                  snapshot.data![index].name,
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 18 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff3d003e),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // available3H9 (I0:559;0:1432)
                                                margin: EdgeInsets.fromLTRB(
                                                    2 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  '1 Available',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 18 * ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff3d003e),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: height * 0.02),
                                    ],
                                  ),
                                ),
                              ],
                            );
                            /*ListTile(
                        title: Text(snapshot.data![index].id.toString()),
                        subtitle: Text(snapshot.data![index].categoryPhoto),
                      );*/
                          },
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Text("Verifer votre connexion");
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
              /*Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // bitmapLbh (I0:559;0:1438)
                        margin: EdgeInsets.fromLTRB(
                            19.31 * fem, 0 * fem, 0 * fem, 26 * fem),
                        width: 230 * fem,
                        height: 132 * fem,
                        child: Image.asset(
                          'assets/app-design/images/bitmap-ydy.png',
                        ),
                      ),
                      Container(
                        // distance4nb (I0:559;0:1434)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 40 * fem, 17 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31 * fem, 14 * fem, 36 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.5 * fem),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // distanceWeb (I0:559;0:1436)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'rent',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // m15Z (I0:559;0:1437)
                              '50 dt',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // haibikesdurofullseLdd (I0:559;0:1433)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Haibike Sduro FullSeven',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                      Container(
                        // available3H9 (I0:559;0:1432)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '1 Available',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // bitmapLbh (I0:559;0:1438)
                        margin: EdgeInsets.fromLTRB(
                            19.31 * fem, 0 * fem, 0 * fem, 26 * fem),
                        width: 230 * fem,
                        height: 132 * fem,
                        child: Image.asset(
                          'assets/app-design/images/velo2.jpg',
                        ),
                      ),
                      Container(
                        // distance4nb (I0:559;0:1434)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 40 * fem, 17 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31 * fem, 14 * fem, 36 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.5 * fem),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // distanceWeb (I0:559;0:1436)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'rent',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // m15Z (I0:559;0:1437)
                              '50 dt',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // haibikesdurofullseLdd (I0:559;0:1433)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Haibike Sduro FullSeven',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                      Container(
                        // available3H9 (I0:559;0:1432)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '1 Available',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // bitmapLbh (I0:559;0:1438)
                        margin: EdgeInsets.fromLTRB(
                            19.31 * fem, 0 * fem, 0 * fem, 26 * fem),
                        width: 230 * fem,
                        height: 132 * fem,
                        child: Image.asset(
                          'assets/app-design/images/image.png',
                        ),
                      ),
                      Container(
                        // distance4nb (I0:559;0:1434)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 40 * fem, 17 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31 * fem, 14 * fem, 36 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.5 * fem),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // distanceWeb (I0:559;0:1436)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'rent',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // m15Z (I0:559;0:1437)
                              '50 dt',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // haibikesdurofullseLdd (I0:559;0:1433)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Haibike Sduro FullSeven',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                      Container(
                        // available3H9 (I0:559;0:1432)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '1 Available',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // bitmapLbh (I0:559;0:1438)
                        margin: EdgeInsets.fromLTRB(
                            19.31 * fem, 0 * fem, 0 * fem, 26 * fem),
                        width: 230 * fem,
                        height: 132 * fem,
                        child: Image.asset(
                          'assets/app-design/images/velo2.jpg',
                        ),
                      ),
                      Container(
                        // distance4nb (I0:559;0:1434)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 40 * fem, 17 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31 * fem, 14 * fem, 36 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.5 * fem),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // distanceWeb (I0:559;0:1436)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'rent',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // m15Z (I0:559;0:1437)
                              '50 dt',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // haibikesdurofullseLdd (I0:559;0:1433)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Haibike Sduro FullSeven',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                      Container(
                        // available3H9 (I0:559;0:1432)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '1 Available',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(10),
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // bitmapLbh (I0:559;0:1438)
                        margin: EdgeInsets.fromLTRB(
                            19.31 * fem, 0 * fem, 0 * fem, 26 * fem),
                        width: 230 * fem,
                        height: 132 * fem,
                        child: Image.asset(
                          'assets/app-design/images/velo2.jpg',
                        ),
                      ),
                      Container(
                        // distance4nb (I0:559;0:1434)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 40 * fem, 17 * fem),
                        padding: EdgeInsets.fromLTRB(
                            31 * fem, 14 * fem, 36 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.5 * fem),
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // distanceWeb (I0:559;0:1436)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 8 * fem, 0 * fem),
                              child: Text(
                                'rent',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff3d003e),
                                ),
                              ),
                            ),
                            Text(
                              // m15Z (I0:559;0:1437)
                              '50 dt',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff3d003e),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // haibikesdurofullseLdd (I0:559;0:1433)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          'Haibike Sduro FullSeven',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                      Container(
                        // available3H9 (I0:559;0:1432)
                        margin: EdgeInsets.fromLTRB(
                            2 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          '1 Available',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff3d003e),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),*/
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false, //Removing Debug Banner
    );
  }
}
