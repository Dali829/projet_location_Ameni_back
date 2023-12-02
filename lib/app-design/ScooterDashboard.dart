import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/veloModele.dart';
import '../service/links.dart';

class TableScooter extends StatefulWidget {
  @override
  State<TableScooter> createState() => _TableScooterState();
}

class _TableScooterState extends State<TableScooter> {
  FToast? fToast;

  @override
  void initState() {
    super.initState();
    _Datas = getAll();
    fToast = FToast();
    fToast?.init(context);
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
          .where((i) => i.typeV == "trottinette")
          .toList();
    } else {
      throw Exception('Vérifier votre connexion');
    }
  }

  Future addBicyles() async {
    try {
      String Url = "$addBicycle";
      await http
          .post(Uri.parse(Url),
              headers: {
                "Accept": "application/json",
                "content-type": "application/json"
              },
              body: jsonEncode({
                "name": Name_controller.text,
                "typeV": "trottinette",
                "type": brand_controller.text,
                "photos": Image_controller.text,
                "desc": desc_controller.text,
                "price": price_controller.text,
              }))
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          showCustomToast('added');
        } else {
          showCustomToast('error');
        }
      });
    } catch (e) {
      showCustomToast('error');
    }
  }

  Future deleteElem(id) async {
    try {
      String Url = "$updateVelo${id}";

      await http
          .delete(
        Uri.parse(Url),
      )
          .then((response) {
        if ((response.statusCode == 200) || response.statusCode == 201) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "deleted !!",
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Color(0xff7CDDC4),
            elevation: 400,
          ));
          setState(() {
            _Datas = getAll();
          });
        } else {
          print("error");
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

  var _formKey = GlobalKey<FormState>();
  TextEditingController brand_controller = new TextEditingController();
  TextEditingController price_controller = new TextEditingController();
  TextEditingController Image_controller = new TextEditingController();
  TextEditingController Name_controller = new TextEditingController();
  TextEditingController desc_controller = new TextEditingController();
  TextEditingController newVal_controller = new TextEditingController();

  String? champsAModi = "empty";
  String? idAM;
  String? champAm;

  Future patchProduct(champs, id) async {
    if (newVal_controller.text.length > 0) {
      try {
        String Url = "$updateVelo${id}";
        await http
            .put(Uri.parse(Url),
                headers: {
                  "Accept": "application/json",
                  "content-type": "application/json"
                },
                body: jsonEncode({champs: newVal_controller.text}))
            .then((response) {
          if ((response.statusCode == 200) || response.statusCode == 201) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                "updated !!",
                style: TextStyle(fontSize: 25),
              ),
              backgroundColor: Color(0xff7CDDC4),
              elevation: 400,
            ));
            setState(() {
              _Datas = getAll();
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

  Future<void> _showAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Add Scooter'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: Name_controller,
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
                SizedBox(height: 10),
                Text('Brand'),
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: brand_controller,
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
                SizedBox(height: 10),
                Text('Price'),
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: price_controller,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (val) {
                      if (val?.length == 0) {
                        return "error";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text('Image'),
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: Image_controller,
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
                SizedBox(height: 10),
                Text('Description'),
                Container(
                  width: 200,
                  child: TextFormField(
                    controller: desc_controller,
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
              ],
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
              child: const Text('Add'),
              onPressed: () {
                addBicyles();
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

  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: FutureBuilder<List<BicycleModel>>(
        future: _Datas,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(height: 30),
                Center(
                    child: Text(
                  'Scooters',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 15),
                FloatingActionButton.extended(
                  label: Text('Add',
                      style: TextStyle(color: Colors.black)), // <-- Text
                  backgroundColor: Color(0xffd1ffef),
                  icon: Icon(
                      // <-- Icon
                      Icons.add,
                      size: 24.0,
                      color: Colors.black),
                  onPressed: () {
                    _showAlertDialog();
                  },
                ),
                SizedBox(height: 30),
                Text(
                  'fields to modify (${champsAModi})',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        controller: newVal_controller,
                        decoration: InputDecoration(hintText: "type here ..."),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          patchProduct(champAm, idAM);
                        },
                        child: Text(
                          "ok",
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      // Datatable widget that have the property columns and rows.
                      columns: [
                        // Set the name of the column

                        DataColumn(
                          label: Text('scooter brand'),
                        ),
                        DataColumn(
                          label: Text('Price'),
                        ),
                        DataColumn(
                          label: Text('Image'),
                        ),
                        DataColumn(
                          label: Text('Action'),
                        ),
                      ],
                      rows: mesData
                          .map(
                            (data) => DataRow(cells: [
                              DataCell(InkWell(
                                child: Text(data.type),
                                onTap: () {
                                  setState(() {
                                    champsAModi = "bike brand";
                                    champAm = "type";
                                    idAM = data.id;
                                  });
                                },
                              )),
                              DataCell(InkWell(
                                child: Text("${data.price} DT"),
                                onTap: () {
                                  setState(() {
                                    champsAModi = "Price";
                                    champAm = "price";
                                    idAM = data.id;
                                  });
                                },
                              )),
                              DataCell(Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.network(
                                  data.photos.first,
                                  width: 80,
                                ),
                              )),
                              DataCell(Center(
                                child: IconButton(
                                  onPressed: () {
                                    deleteElem(data.id);
                                  },
                                  icon: Icon(Icons.delete),
                                  color: Colors.red,
                                ),
                              )),
                            ]),
                          )
                          .toList()),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text("Verifer votre connexion");
          }
          return CircularProgressIndicator();
        },
      ),
    ));
  }
}
