import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../main.dart';
import '../models/reservation.dart';
import '../service/links.dart';

class MyProduct extends StatefulWidget {
  const MyProduct({Key? key}) : super(key: key);

  @override
  _MyProductState createState() => _MyProductState();
}

class _MyProductState extends State<MyProduct> {
  @override
  void initState() {
    super.initState();
    _Datas = getAll();
  }

  List<ReservationModel> mesData = [];
  late Future<List<ReservationModel>> _Datas;

  Future<List<ReservationModel>> getAll() async {
    String Url = "$getreservation${sharedPref?.getString("id")}";
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      print(response.body);
      return mesData = parsed
          .map<ReservationModel>((json) => ReservationModel.fromMap(json))
          .toList();
    } else {
      throw Exception('Vérifier votre connexion');
    }
  }

  @override
  Widget build(BuildContext context) {
    double largeurEcran = MediaQuery.of(context).size.width;
    double hauteurEcran = MediaQuery.of(context).size.height;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: (sharedPref?.getString("Role").toString() == "user")
            ? Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  gradient: LinearGradient(
                    begin: Alignment(1.307, 1.613),
                    end: Alignment(1.307, -1),
                    colors: <Color>[Color(0xff2af598), Colors.white],
                    stops: <double>[0, 1],
                  ),
                ),
                height: hauteurEcran,
                width: largeurEcran,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      child: FutureBuilder<List<ReservationModel>>(
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
                                              Container(
                                                padding: EdgeInsets.only(
                                                    right: 15,
                                                    left: 15,
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.05),
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                    right: 5,
                                                    left: 5,
                                                  ),
                                                  width: largeurEcran,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.black),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50)),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        padding:
                                                            EdgeInsets.all(12),
                                                        width:
                                                            largeurEcran * 0.3,
                                                        child: Image.network(
                                                            snapshot
                                                                .data![index]
                                                                .imageP),
                                                      ),
                                                      Container(
                                                        width:
                                                            largeurEcran * 0.25,
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              snapshot
                                                                  .data![index]
                                                                  .nameP,
                                                              style: TextStyle(
                                                                  fontSize: 16),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                            Text(
                                                              snapshot
                                                                      .data![
                                                                          index]
                                                                      .date +
                                                                  " " +
                                                                  snapshot
                                                                      .data![
                                                                          index]
                                                                      .prix
                                                                      .toString() +
                                                                  "dt",
                                                              style: TextStyle(
                                                                  fontSize: 14),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            largeurEcran * 0.25,
                                                        child: Icon(
                                                          Icons
                                                              .shopping_bag_rounded,
                                                          size: 40,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10),
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
                                ));
                          } else if (snapshot.hasError) {
                            return Text("Verifer votre connexion");
                          }
                          return CircularProgressIndicator();
                        },
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total :",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(width: largeurEcran * 0.3),
                        Text(
                          "400 dt",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ]),
                ),
              )
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
              ),
      ),
    );
  }
}
