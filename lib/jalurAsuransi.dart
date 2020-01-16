import 'package:flutter/material.dart';
import 'package:its/forms.dart';
import 'package:its/insurancePolicy.dart';

class JalurAsuransi extends StatelessWidget {
  final Datas datas;

  JalurAsuransi({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    // TODO: implement build
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
                "Untuk mendapatkan kebebasan menanggung resiko kerusakan barang di atas kapal anda akan menuju ke perusahaan asuransi untuk mengurus dokumen Insurance Policy",
                style: TextStyle(fontSize: 20),textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/asuransi.png",width: 150,),
              ),
              Text("Perusahaan Asuransi \nPT. Asuransi Indonesia\n\nAyo menuju perusahaan asuransi",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
             
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
            builder: (context) => InsurancePolicy(
                  datas: datas,
                )));
  
  }
}
