import 'package:flutter/material.dart';
import 'package:its/home.dart';

import 'package:its/penelitianShipping.dart';

import 'forms.dart';

class Congrats extends StatelessWidget {
  final Datas datas;

  Congrats({Key key, this.datas}) : super(key: key);
  
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text("Selamat",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Anda telah menyelesaikan simulasi dengan sangan baik !! Mari menjadi eksportir untuk membantu perekonomian Indonesia",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
                

                
               
                ButtonTheme(
                      buttonColor: green,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        child: Text(
                          "Ulangi Simulasi",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          _navigateSimulasi(context);
                        },
                      ),
                    ),
                    ButtonTheme(
                      buttonColor: green,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        child: Text(
                          "Beranda",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          _navigateHome(context);
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

  _navigateSimulasi(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Forms(
                  // datas: datas,
                )));
  }
  _navigateHome(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Home(
                  // datas: datas,
                )));
  }
}