import 'package:flutter/material.dart';
import 'package:its/forms.dart';
import 'package:its/peb.dart';

class JalurPeb extends StatelessWidget {
  final Datas datas;

  JalurPeb({Key key, this.datas}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        title: Text("Jalur PEB"),
        backgroundColor: green,
      ),
      body: Container(
        child: 
        Column(children: <Widget>[
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
                                _navigatePEB(context);
                              },
                            ),
              ),
            ],
          ),
        ],),
      ),
    );
  }
_navigatePEB(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Peb(
                  datas: datas,
                )));
    print(result);
  }
}

