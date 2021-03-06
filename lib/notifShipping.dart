import 'package:flutter/material.dart';

import 'package:its/penelitianShipping.dart';

import 'forms.dart';

class NotifShipping extends StatelessWidget {
  final Datas datas;

  NotifShipping({Key key, this.datas}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    
    return Scaffold(
body: Container(
  width: double.infinity,
  height: double.infinity,
  //  color: green,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: green,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Shipping Instruction",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Dokumen anda telah jadi, kirimkan dokumen ke Perusahaan perkapalan (Shipping Company)",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                child: Image.asset("assets/list-cheklist.png"),
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
                          _navigateSimulasiMaps(context);
                        },
                      ),
                    ),

              ],
            ),
          ),
        ),
      ),
) 
     
    );
  }

  _navigateSimulasiMaps(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PenelitianShipping(
                  datas: datas,
                )));
    print(result);
  }
}