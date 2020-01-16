import 'package:flutter/material.dart';
import 'package:its/maps3.dart';
import 'package:its/shippingInstruction.dart';

import 'forms.dart';

class JalurBill extends StatelessWidget {
  final Datas datas;

  JalurBill({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Jalur Bill of Lead"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Selanjutnya anda akan mengurus\ndokumen Bill of Lading di perusahaan\npengapalan (Shipping Company).\n\nTapi sebelum itu anda butuh",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Text(
                  "Shipping Instruction",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                IconButton(
                  onPressed: (){
                    _showDialog(context);
                  },
                  icon: Icon(Icons.help),
                )
              ]),

              Text("Berdasarkan data yg anda isi sebelumnya, anda akan membuat Shipping Instruction",textAlign: TextAlign.center,),
              ButtonTheme(
                buttonColor: green,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  child: Text(
                    "Buat Shipping Instruction",
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
      ),
    );
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
            "Dokumen\nShipping Instruction",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          content: Container(
              child: new Text(
            "Shipping Instruction (SI) adalah perintah/instruksi pengapalan/pengiriman yang dibuat oleh eksportir/ pengirim barang kepada perusahaan pengangkutan. Perusahaan pengangkutan disini bisa perusahaan pelayaran untuk laut, perusahaan penerbangan untuk udara maupun perusahaan pengangkutan darat.",
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

  _navigatePage(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShippingInstruction(
                  datas: datas,
                )));
  }
}
