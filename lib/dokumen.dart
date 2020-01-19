import 'package:flutter/material.dart';

class Dokumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    Color greenAc = const Color(0xffB8E6DB);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Dokumen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: greenAc,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("salesContract", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Sales Contract",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("invoice", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Invoice",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("packingList", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Packing List",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("shippingInstruction", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Shipping Instruction",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("insurancePolicy", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Insurance Policy",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("bill", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Bill Of Lading",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            _showDialog("airwayBill", context);
                          },
                          child: Material(
                            color: greenAc,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2,
                            child: Container(
                                width: 200,
                                height: 40,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Airway Bill",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),

                      
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

  void _showDialog(dokumen, context) {
    var title = '';
    var content = '';

    if (dokumen == 'salesContract') {
      title = 'Sales Contract';
      content =
          'dokumen/surat persetujuan antara penjual dan pembeli yang merupakan follow-up dari purchase order yang diminta importer. Isinya mengenai syarat-syarat pembayaran barang yang akan dijual, seperti harga, mutu, jumlah, cara pengangkutan, pembayaran asuransi dan sebagainya.';
    } else if (dokumen == 'invoice') {
      title = 'Invoice';
      content =
          'Dokumen ini berisi data jumlah wesel yang dapat ditarik, penyesuaian urusan bea masuk, jumlah asuransi dan lain sebagainya. Di dalam faktur ini ada 3 jenis yaitu performa invoice, commercial invoice dan consular invoice.';
    } else if (dokumen == 'packingList') {
      title = 'Packing List';
      content =
          'Dokumen ini berisi uraian barang yang dikemas. Uraian tersebut meliputi nama barang dan hs code, jenis kemasan barang, jumlah barang, jumlah berat kotor barang, dan jumlah berat bersih barang,';
    } else if (dokumen == 'shippingInstruction') {
      title = 'Shipping Instruction';
      content =
          'Shipping Instruction (SI) adalah perintah/instruksi pengapalan/pengiriman yang dibuat oleh eksportir/ pengirim barang kepada perusahaan pengangkutan. Perusahaan pengangkutan disini bisa perusahaan pelayaran untuk laut, perusahaan penerbangan untuk udara maupun perusahaan pengangkutan darat.';
    } else if (dokumen == 'insurancePolicy') {
      title = 'Insurance Policy';
      content =
          'Dokumen ini merupakan bukti pertanggungjawaban dari perusahaan asuransi tentang jaminan keselamatan barang yang dikirim. Biasanya dokumen ini diminta oleh pihak eksportir atau importir. Risiko yang nantinya terjadi akan ditanggung pihak asuransi sesuai dengan kesepakatan yang ada.';
    } else if (dokumen == 'bill') {
      title = 'Bill Of Lading';
      content =
          'B/L adalah dokumen bukti tanda terima barang yang dikirimkan dan telah dimuat dengan kapal laut. Selain itu, bill of lading juga berfungsi sebagai tanda kepemilikan barang serta bukti perjanjian pengangkutan barang melalui laut.';
    } else {
      title = 'Airway Bill';
      content =
          'dokumen angkutan transportasi udara (pesawat) yg berisikan berbagai informasi tentang barang yg dikirim seperti jenis,  berat,  nilai barang tersebut,  dari mana asal barang tersebut dan hendak kemana barang tersebut dikirimkan.  fungsi lainnya  sebagai bukti bahwa barang telah diangkut atau dikirim dan sebagai tanda bukti kepemilikan barang';
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
