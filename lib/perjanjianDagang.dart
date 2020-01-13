import 'package:flutter/material.dart';
import 'package:its/detailPerjanjian.dart';

class PerjanjianDagang extends StatefulWidget {
  @override
  _PerjanjianDagangState createState() => _PerjanjianDagangState();
}



class _PerjanjianDagangState extends State<PerjanjianDagang> {
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Perjanjian Dagang",style: TextStyle(color: Colors.black),),
        backgroundColor: const Color(0xffB8E6DB),

      ),
      body: Container(child: 
      Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(

                        height: 50,
                        child: RaisedButton(
                          color: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Text("ATIGA",style: TextStyle(color: Colors.white),),
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'ATIGA')));
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                          child: RaisedButton(
                            color: green,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: Text("ACFTA",style: TextStyle(color: Colors.white),),
                            onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'ACFTA')));
                            },
                          )),
                    ),
                    SizedBox(
                      
                        height: 50,
                        child: RaisedButton(
                          color: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Text("AANZFTA",style: TextStyle(color: Colors.white),),
                          onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'AANZFTA')));

                          },
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(

                        height: 50,
                        child: RaisedButton(
                          color: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Text("IJEPA",style: TextStyle(color: Colors.white),),
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'IJEPA')));
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                          child: RaisedButton(
                            color: green,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: Text("AKFTA",style: TextStyle(color: Colors.white),),
                            onPressed: () {
                              
Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'AKFTA')));
                            },
                          )),
                    ),
                    SizedBox(
                      
                        height: 50,
                        child: RaisedButton(
                          color: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Text("AIFTA",style: TextStyle(color: Colors.white),),
                          onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'AIFTA')));

                          },
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(

                        height: 50,
                        child: RaisedButton(
                          color: green,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: Text("AJCEP",style: TextStyle(color: Colors.white),),
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'AJCEP')));
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 50,
                          child: RaisedButton(
                            color: green,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            child: Text("IPPTA",style: TextStyle(color: Colors.white),),
                            onPressed: () {
                              
Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPerjanjian(jenis : 'IPPTA')));
                            },
                          )),
                    ),
                
                  ],
                ),
              ),
            
            ],
          ),
      ),
    );

    
  }

  


}


