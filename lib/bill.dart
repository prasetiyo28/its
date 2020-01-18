import 'package:flutter/material.dart';
import 'package:its/dokumenLengkap.dart';

import 'forms.dart';

class Bill extends StatelessWidget {
  final Datas datas;

  Bill({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Bill Of Lading"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _showDialog(context);
            },
            icon: Icon(Icons.help),
          )
        ],
      ),
      body: Container(
        child: Column(
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/bill-of-lading.png",height: 500,),
              ],
            ),
            ButtonTheme(
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
                          _navigatePage(context);
                        },
                      ),
                    ),


          ],
        ),
      ),
    );
  }

  _navigatePage(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DokumenLengkap(
                  datas: datas,
                )));
  }

  void _showDialog(context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: const Color(0xff2C918D),
          title: new Text(
            "Dokumen\nBill of Lading",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          content: Container(
              child: new Text(
                "B/L adalah dokumen bukti tanda terima barang yang dikirimkan dan telah dimuat dengan kapal laut. Selain itu, bill of lading juga berfungsi sebagai tanda kepemilikan barang serta bukti perjanjian pengangkutan barang melalui laut.",
             style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            ButtonTheme(
              buttonColor: const Color(0xffB8E6DB),
              child: new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                child: new Text("Mengerti"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

}