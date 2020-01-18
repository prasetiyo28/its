import 'package:flutter/material.dart';
import 'package:its/dokumen.dart';
import 'package:its/forms.dart';
import 'package:its/login.dart';
import 'package:its/paymentMethod.dart';
import 'package:its/perjanjianDagang.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Home extends StatefulWidget {
  



  final User users;
 
  Home({Key key, this.users}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
Future<String>_getStringValuesSF(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  var a =  prefs.getString(key);
  return a;
  
}
  @override
  Widget build(BuildContext context) {


                          
    Color green = const Color(0xffB8E6DB);
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person_pin_circle,
                      size: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Text("Selamat Datang,"),
                        FutureBuilder(future: _getStringValuesSF('firstName'),
                          builder: (context,snapshot){
                            
                              return Text(snapshot.data,style: TextStyle(fontSize: 20));
                          },),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: ButtonTheme(
                          buttonColor: Colors.white,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black)),
                            child: Text(
                              "Edit Info",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                            onPressed: () {},
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.verified_user),
                        ),
                        Text(
                            "Mari kita belajar ekspor !\nDengan Internasional\nTrade Simulator\nKita akan belajar lebih jelas\nmengenai proses perdagangan\n internasional\nSelamat Mencoba !")
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Material(
                          color: green,
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector( onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Forms()));
                          },
                                                      child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.next_week,
                                size: 50,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Simulasi",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PerjanjianDagang()));
                      },
                                          child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: <Widget>[
                            Material(
                              color: green,
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.pan_tool,
                                  size: 50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "Perjanjian Dagang",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Material(
                          color: green,
                          borderRadius: BorderRadius.circular(20),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.note,
                              size: 50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            "Incoterms",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
                      },
                              child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 30),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Material(
                            color: green,
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.monetization_on,
                                size: 50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Metode\nPembayaran",
                              style: TextStyle(fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Dokumen()));
                        },
                                              child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: <Widget>[
                              Material(
                                color: green,
                                borderRadius: BorderRadius.circular(20),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.note_add,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "Dokumen",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Material(
                            color: green,
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.airplanemode_active,
                                size: 50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Transportasi",
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
    
            ],
          ),
        ),
      ),
    );
  }
}
