import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Metode Pembayaran",style: TextStyle(color: Colors.black),),
        backgroundColor: const Color(0xffB8E6DB),

      ),
      body: Container(
        child: Column(children: <Widget>[
          Padding(
                padding: const EdgeInsets.all(
                 10
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        
                        Text(
                            "Terdapat beberapa metode pembayaran yang umum digunakan saat ekspor.",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
                      ],
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
                    child: new Text("Advance Payment"),
                    onPressed: () {
                      _showDialog('advance');
                      
                      
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
                    child: new Text("Open Account"),
                    onPressed: () {
                      _showDialog('open');
                      
                      
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
                    child: new Text("Letter of Credit"),
                    onPressed: () {
                      _showDialog('loc');
                      
                      
                    },
                  ),
            ),
                ),
              ),
        ],),
      ),
    );

    

  }
void _showDialog(payment) {
  var title = '';
  var content = '';

  if (payment == 'advance') {
    title = 'Advance Payment';
    content = 'Advance Payment adalah pembayaran yang dilakukan oleh importir kepada eksportir sebelum barang dikapalkan, baik untuk seluruh nilai barang (full payment) maupun untuk sebagian (partial payment).';
  } else if(payment == 'open') {
    title = 'Open Account';
    content = 'Open Account adalah sistem pembayaran dimana belum dilakukan pembayaran apa-apa oleh importir kepada eksportir sebelum barang dikapalkan atau tiba dan diterima importir atau sebelum waktu tertentu yang telah disepakati.';
  }else{
    title = 'Letter of Credit';
    content = 'Letter of Credit adalah sebuah cara pembayaran internasional yang memungkinkan eksportir menerima pembayaran tanpa menunggu berita dari luar negeri setelah barang dan berkas dokumen dikirimkan keluar negeri (kepada pemesan/importir) dan akan memudahkan pihak-pihak yang berada didalamnya.';
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