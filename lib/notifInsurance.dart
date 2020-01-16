import 'package:flutter/material.dart';
import 'package:its/maps3.dart';

import 'forms.dart';

class NotifInsurance extends StatelessWidget {
  final Datas datas;

  NotifInsurance({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Jalur Asuransi"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                "Insurance Policy Telah Dibuat",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text(
                "Anda telah mendapatkan dokumen Insurance Policy, dokumen ini berguna sebagai bukti pertanggungjawaban dari perusahaan asuransi tentang jaminan keselamatan barang yang dikirim. Biasanya dokumen ini diminta oleh pihak eksportir atau importir. Risiko yang nantinya terjadi akan ditanggung pihak asuransi sesuai dengan kesepakatan yang ada.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
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
      ),
    );
  }

  _navigatePage(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Maps3(
                  datas: datas,
                )));
   
  }
}
