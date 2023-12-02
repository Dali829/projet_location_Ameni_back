import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../models/usersModel.dart';
import '../service/links.dart';

class Users extends StatefulWidget {
  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  void initState() {
    super.initState();
    _Datas = getAll();
  }

  List<UserModel> mesData = [];
  late Future<List<UserModel>> _Datas;

  Future<List<UserModel>> getAll() async {
    String Url = "$getUsers";
    final response = await http.get(Uri.parse(Url));

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      print(response.body);
      return mesData =
          parsed.map<UserModel>((json) => UserModel.fromMap(json)).toList();
    } else {
      throw Exception('Vérifier votre connexion');
    }
  }

  Future deleteElem(id) async {
    try {
      String Url = "$updateuser${id}";

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
  TextEditingController Input_controller = new TextEditingController();

  TextEditingController newVal_controller = new TextEditingController();

  String? champsAModi = "empty";
  String? idAM;
  String? champAm;

  Future patchProduct(champs, id) async {
    if (newVal_controller.text.length > 0) {
      try {
        String Url = "$updateuser${id}";
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
          title: const Text('Add User'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name'),
                Container(
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
                SizedBox(height: 10),
                Text('E-mail'),
                Container(
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
                SizedBox(height: 10),
                Text('Password'),
                Container(
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

  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: FutureBuilder<List<UserModel>>(
        future: _Datas,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(height: 30),
                Center(
                    child: Text(
                  'Users',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 15),
                /*FloatingActionButton.extended(
            label:
                Text('Add', style: TextStyle(color: Colors.black)), // <-- Text
            backgroundColor: Color(0xffd1ffef),
            icon: Icon(
                // <-- Icon
                Icons.add,
                size: 24.0,
                color: Colors.black),
            onPressed: () {
              _showAlertDialog();
            },
          ),*/
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
                          label: Text('Name'),
                        ),
                        DataColumn(
                          label: Text('E-mail'),
                        ),
                        DataColumn(
                          label: Text('Wallet'),
                        ),
                        DataColumn(
                          label: Text('Action'),
                        ),
                      ],
                      rows: mesData
                          .map(
                            (data) => DataRow(cells: [
                              DataCell(InkWell(
                                child: Text(data.username),
                                onTap: () {
                                  setState(() {
                                    champsAModi = "Name";
                                    champAm = "username";
                                    idAM = data.id;
                                  });
                                },
                              )),
                              DataCell(InkWell(
                                child: Text(data.email),
                                onTap: () {
                                  setState(() {
                                    champsAModi = "email";
                                    champAm = "email";
                                    idAM = data.id;
                                  });
                                },
                              )),
                              DataCell(InkWell(
                                child: Text(data.wallet.toString()),
                                onTap: () {
                                  setState(() {
                                    champsAModi = "wallet";
                                    champAm = "wallet";
                                    idAM = data.id;
                                  });
                                },
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
