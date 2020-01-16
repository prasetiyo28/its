import 'package:flutter/material.dart';
import 'package:its/forms.dart';
import 'package:its/maps.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> _getStringValuesSF(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  var a = prefs.getString(key);
  return a;
}

class Invoice extends StatelessWidget {
  final Datas datas;

  Invoice({Key key, this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Commercial Invoice"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                // Text("Seler : ${datas.namaPerusahaan}"),
                // Text("Buyer : ${datas.namaPembeli}"),
                // Text("Description of goods : ${datas.jenis}"),
                // Text("Jumlah Harga Barang : ${datas.jumlah}"),
                // Text("Payment Methode : ${datas.metodePembayaran}"),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 100,
                        child: Material(
                          color: green,
                          textStyle: TextStyle(color: Colors.white),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    "Seller",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 70,
                        child: Material(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "${datas.namaPerusahaan}\n${datas.alamatPerusahaan}",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 100,
                        child: Material(
                          color: green,
                          textStyle: TextStyle(color: Colors.white),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    "Buyer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 70,
                        child: Material(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "${datas.namaPembeli}\n${datas.alamatPembeli}",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70,
                        width: 100,
                        child: Material(
                          color: green,
                          textStyle: TextStyle(color: Colors.white),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    "No.Invoice",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 70,
                        child: Material(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "INV20192010",
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Description of Goods",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text("${datas.jenis}")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Quantity",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text("${datas.jumlah} ${datas.satuan}")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Text(
                            "Total Amount",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("${datas.uang}. ${datas.total}")
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("Indonesia , "),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FutureBuilder(
                        future: _getStringValuesSF('firstName'),
                        builder: (context, snapshot) {
                          return Text(snapshot.data,
                              style: TextStyle(fontSize: 20));
                        },
                      ),
                      FutureBuilder(
                        future: _getStringValuesSF('lastName'),
                        builder: (context, snapshot) {
                          return Text(snapshot.data,
                              style: TextStyle(fontSize: 20));
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: ButtonTheme(
                      buttonColor: green,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        child: Text(
                          "Lanjut",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          _navigateSimulasiMaps(context);
                        },
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _navigateSimulasiMaps(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Maps(
                  datas: datas,
                )));
    print(result);
  }
}
