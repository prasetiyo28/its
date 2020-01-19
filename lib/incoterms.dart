import 'package:flutter/material.dart';
class IncotermsPage extends StatefulWidget {
  @override
  _IncotermsPageState createState() => _IncotermsPageState();
}

class _IncotermsPageState extends State<IncotermsPage> {
  @override
  Widget build(BuildContext context) {
    Color ijoMuda = const Color(0xffB8E6DB);
    return Scaffold(
       appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Incoterms",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: ijoMuda,
      ),
      body :Container(
        child: Column(
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
                            "Incoterms atau International Commercial Terms adalah kumpulan istilah yang dibuat untuk menyamakan pengertian antara penjual dan pembeli dalam perdagangan internasional. Incoterms menjelaskan hak dan kewajiban pembeli dan penjual yang berhubungan dengan pengiriman barang seperti biaya dan tanggung jawab atas barang.",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  
                    children: <Widget>[
                      Row(
                                      children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                    width: 80,
                                    child: RaisedButton(
                                      color: ijoMuda,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0)),
                                      child: Text("EXW"),
                                      onPressed: () {
                                        var text = 'EXW';
                                        
                                        _showDetailIncoterms(text);
                                      },
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: SizedBox(
                                      width: 80,
                                      child: RaisedButton(
                                        color: ijoMuda,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0)),
                                        child: Text("FAS"),
                                        onPressed: () {
                                          var text = 'FAS';
                                          
                                          _showDetailIncoterms(text);
                                        },
                                      )),
                                ),
                                SizedBox(
                                    width: 80,
                                    child: RaisedButton(
                                      color: ijoMuda,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0)),
                                      child: Text("FOB"),
                                      onPressed: () {
                                        var text = 'FOB';
                                        
                                        _showDetailIncoterms(text);
                                      },
                                    )),
                              ],
                            ),
                          ],
                      ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                width: 80,
                                child: RaisedButton(
                                  color: ijoMuda,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: Text("FCA"),
                                  onPressed: () {
                                    var text = 'FCA';
                                    
                                    _showDetailIncoterms(text);
                                  },
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: SizedBox(
                                  width: 80,
                                  child: RaisedButton(
                                    color: ijoMuda,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    child: Text("CRF"),
                                    onPressed: () {
                                      var text = 'CRF';
                                      
                                      _showDetailIncoterms(text);
                                    },
                                  )),
                            ),
                            SizedBox(
                                width: 80,
                                child: RaisedButton(
                                  color: ijoMuda,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: Text("CPT"),
                                  onPressed: () {
                                    var text = 'CPT';
                                    
                                    _showDetailIncoterms(text);
                                  },
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                width: 80,
                                child: RaisedButton(
                                  color: ijoMuda,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: Text("CIF"),
                                  onPressed: () {
                                    var text = 'CIF';
                                    
                                    _showDetailIncoterms(text);
                                  },
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: SizedBox(
                                  width: 80,
                                  child: RaisedButton(
                                    color: ijoMuda,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    child: Text("CIP"),
                                    onPressed: () {
                                      var text = 'CIP';
                                      
                                      _showDetailIncoterms(text);
                                    },
                                  )),
                            ),
                            SizedBox(
                                width: 80,
                                child: RaisedButton(
                                  color: ijoMuda,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: Text("DAT"),
                                  onPressed: () {
                                    var text = 'DAT';
                                    
                                    _showDetailIncoterms(text);
                                  },
                                )),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                width: 80,
                                child: RaisedButton(
                                  color: ijoMuda,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0)),
                                  child: Text("DAP"),
                                  onPressed: () {
                                    var text = 'DAP';
                                    
                                    _showDetailIncoterms(text);
                                  },
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: SizedBox(
                                  width: 80,
                                  child: RaisedButton(
                                    color: ijoMuda,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(10.0)),
                                    child: Text("DDP"),
                                    onPressed: () {
                                      var text = 'DDP';
                                      
                                      _showDetailIncoterms(text);
                                    },
                                  )),
                            ),
                          ],
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


  void _showDetailIncoterms(text) {
    var judul = '';
    var contents = '';

    if (text == 'EXW') {
      judul = 'EXW - Ex Works';
      contents =
          'Pihak penjual menentukan tempat pengambilan barang, Pihak pembeli bertanggung jawab untuk biaya angkut, resiko selama perjalanan dan biaya saat pembongkaran.';
    } else if (text == 'FCA') {
      judul = 'FCA - Free Carrier ';
      contents =
          'Pihak penjual hanya bertanggung jawab untuk mengurus izin ekspor dan meyerahkan barang ke pihak pengangkut di tempat yang telah ditentukan. Pihak pembeli hanya membayar biaya pengiriman dan tanggung jawab hangus saat barang di serahkan di pelabuhan tujuan.';
    } else if (text == 'CPT') {
      judul = 'CPT - Carriage Paid To';
      contents =
          'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
    } else if (text == 'CPT') {
      judul = 'CPT - Carriage Paid To';
      contents =
          'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
    } else if (text == 'CIP') {
      judul = 'CIP - Carriage and Insurance Paid to';
      contents =
          'Sama seperti CPT ditambah pihak penjual wajib membayar asuransi untuk barang yang dikirim hingga barang diserahkan.';
    } else if (text == 'CPT') {
      judul = 'CPT - Carriage Paid To';
      contents =
          'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
    } else if (text == 'CPT') {
      judul = 'CPT - Carriage Paid To';
      contents =
          'Pihak penjual menanggung biaya sampai barang tiba di tempat tujuan, namun tanggung jawab hanya sampai saat barang diserahkan ke pihak pengangkut.';
    } else if (text == 'DAT') {
      judul = 'DAT – Delivered at Terminal';
      contents =
          'Pihak penjual membayar sampai ke pembongkaran di terminal pelabuhan tujuan, kecuali beban biaya sehubungan biaya, tanggung jawab bebas saat kapal selesai bongkar di terminal pelabuhan tujuan.';
    } else if (text == 'DAP') {
      judul = 'DAP – Delivered at Place';
      contents =
          'Hampir sama sepertiDAT dengan tambahan biaya pengangkutan ke tempat tujuan dan asuransi menjadi tanggaungan pihak penjual';
    } else if (text == 'DDP') {
      judul = 'DDP - Delivered Duty Paid';
      contents =
          'Pihak penjual bertanggung jawab mengantar barang sampai di tempat tujuan, termasuk biaya asuransi dan semua biaya lain yang mungkin muncul sebagai biaya impor, cukai dan pajak dari negara pihak pembeli. Izin impor juga menjadi tanggung jawab pihak penjual.';
    } else if (text == 'FAS') {
      judul = 'FAS - Free Alongside Ship';
      contents =
          'Pihak penjual bertanggung jawab sampai barang berada di pelabuhan keberangkatan dan siap disamping kapal untuk dimuat. Biaya lain samapai ke tempat tujuan akan menjadi tanggung jawab pihak pembeli. Hanya berlaku untuk transportasi air.';
    } else if (text == 'FOB') {
      judul = 'FOB - Free On Board';
      contents =
          'Pihak penjual bertanggung jawab dari mengurus izin ekspor sampai memuat barang di kapal yang siap berangkat. Biaya pengangkutan dari pelabuhan asal samapi ke tempat tujuan akan menjadi tanggungan pembeli. Hanya berlaku untuk transportasi air.';
    } else if (text == 'CFR') {
      judul = 'CFR - Cost and Freight';
      contents =
          'pihak penjual menanggung biaya sampai kapal yang memuat barang merapat di pelabuhan tujuan, namun tanggung jawab penjual hanya sampai saat barang selesai di muat ke kapal. Hanya berlaku untuk transportasi air.';
    } else {
      judul = 'CIF - Cost, Insurance and Freight';
      contents =
          'Sama seperti CFR ditambah pihak penjual wajib membayar asuransi untuk barang yang dikirim. Hanya berlaku untuk transportasi air.';
    }
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: const Color(0xff2C918D),
          title: new Text(
            "Incoterms\n" + judul,
            style: TextStyle(color: Colors.white),
          ),
          content: Container(
              child: new Text(
            "Incoterms menjelaskan hak dan kewajiban pembeli dan penjual yang berhubungan dengan pengiriman barang seperti biaya dan tanggung jawab atas barang.",
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
                child: new Text("Lanjut"),
                onPressed: () {
                  Navigator.of(context).pop();
                 
                },
              ),
            ),
          ],
        );
      },
    );
  }
}