import 'package:flutter/material.dart';


class Transportasi extends StatefulWidget {
  @override
  _TransportasiState createState() => _TransportasiState();
}

class _TransportasiState extends State<Transportasi> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Transportasi",style: TextStyle(color: Colors.black),),
        backgroundColor: const Color(0xffB8E6DB),

      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 200,
                      child: ButtonTheme(
                      buttonColor: const Color(0xffB8E6DB),
                      child: new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        child: new Text("Transportasi Laut"),
                        onPressed: () {
                          _showDialog('laut');
                          
                          
                        },
                      ),
                ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 200,
                      child: ButtonTheme(
                      buttonColor: const Color(0xffB8E6DB),
                      child: new RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        child: new Text("Transportasi Udara"),
                        onPressed: () {
                          _showDialog('udara');
                          
                          
                        },
                      ),
                ),
                    ),
                  ),
                  
            ],),
          ],
        ),
      ),
    );

    

  }
void _showDialog(transportasi) {
  var title = '';
  var content = '';

  if (transportasi == 'laut') {
    title = 'Transportasi Laut';
    content = 'Kegiatan pengiriman barang melalui jalur laut, menggunakan kapal kargo. Dokumen yang akan diterima yaitu Bill of Lading.';
  }else{
    title = 'Transportasi Udara';
    content = 'Kegiatan pengiriman barang melalui jalur udara, menggunakan pesawat Kargo. Dokumen yang akan diterima yaitu Airway Bill.';
  }
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: const Color(0xff2C918D),
          title: new Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          content: Container(
              child: new Text(
            content,
            style: TextStyle(color: Colors.white),
          )),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            ButtonTheme(
              buttonColor: const Color(0xffB8E6DB),
              child: new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                child: new Text("Kembali"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      },
    );
  }
  
}