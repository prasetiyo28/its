import 'package:flutter/material.dart';
import 'package:its/forms.dart';

class Invoice extends StatelessWidget {
  final Datas datas;

  Invoice({Key key, this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Color green = const Color(0xff2C918D);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text("Commercial Invoice"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                // Text("Seler : ${datas.namaPerusahaan}"),
                // Text("Buyer : ${datas.namaPembeli}"),
                // Text("Description of goods : ${datas.jenis}"),
                // Text("Jumlah Harga Barang : ${datas.jumlah}"),
                // Text("Payment Methode : ${datas.metodePembayaran}"),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              "Seller",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Divider(),
                          Text("${datas.namaPerusahaan}\n${datas.alamatPerusahaan}",textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              "Buyer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Divider(),
                          Text("${datas.namaPembeli}\n${datas.alamatPembeli}",textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              "Invoice",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Divider(),
                          Text("INV20192010")
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Description of Goods",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text("${datas.jenis}")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Quantity",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text("${datas.jumlah}")
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Text("Total Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Rp. ${datas.total}")

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("Indonesia , "),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("Pengirim"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
