import 'package:flutter/material.dart';

class Dokumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Dokumen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffB8E6DB),
      ),
      body: Container(
        child: ListView(
                  children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Untuk melakukan ekspor diperlukan beberapa dokumen tertentu.",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: <Widget>[
                            Image.asset("assets/statistic.png",width: 80,),
                            Text("Shipping Instruction")
                          ],),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
