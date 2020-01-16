import 'package:flutter/material.dart';
import 'package:its/forms.dart';
import 'package:its/jalurAsuransi.dart';
import 'package:its/jalurPeb.dart';

class Maps2 extends StatelessWidget {
  final Datas datas;

  Maps2({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        title: Text("Peta Simulasi"),
        backgroundColor: green,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "assets/maps2.png",
                  width: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
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
            builder: (context) => JalurAsuransi(
                  datas: datas,
                )));
    print(result);
  }
}
