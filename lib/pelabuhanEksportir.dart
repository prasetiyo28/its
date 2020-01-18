import 'package:flutter/material.dart';
import 'package:its/congrats.dart';

import 'forms.dart';

class PelabuhanEksportir extends StatelessWidget {
  final Datas datas;

  PelabuhanEksportir({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Pelabuhan Eksportir"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Text("Barang anda telah siap dikirim saatnya mengirim barang",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              Image.asset("assets/shipping.gif",width: 200,),
              SizedBox(height: 30,),
              ButtonTheme(
                buttonColor: const Color(0xffB8E6DB),
                child: new RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  child: new Text("Kirim"),
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
            builder: (context) => Congrats(
                  datas: datas,
                )));
  }
}
