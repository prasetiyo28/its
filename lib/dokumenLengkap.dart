import 'package:flutter/material.dart';

import 'package:its/maps4.dart';
import 'forms.dart';

class DokumenLengkap extends StatelessWidget {
  final Datas datas;
  DokumenLengkap({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      body: Container(
        child: 
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: green,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Text("Dokumen Lengkap",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 50,),
                Text("Anda telah mempunyai dokumen yang anda perlukan",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("1. Commercial Invoice\n2. PEB\n3. Insurance Policy\n4. Bill of Lading",style: TextStyle(fontSize: 20,color: Colors.white),),
                    Image.asset("assets/list-cheklist.png",width: 80,)
                  ],
                ),
                SizedBox(height: 20,),
                Text("Anda telah mempunyai dokumen yang anda perlukan",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(height: 80,),
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
      ),
    );
  }

  _navigatePage(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Maps4(
                  datas: datas,
                )));
  }
  
}