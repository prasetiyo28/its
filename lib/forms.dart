import 'package:flutter/material.dart';
import 'package:its/salesContract.dart';
import 'package:intl/intl.dart';

class Incoterms {
  int id;
  String name;

  Incoterms(this.id, this.name);

  static List<Incoterms> getIncoterms() {
    return <Incoterms>[
      Incoterms(1, 'Pilih Incoterms yang di gunakan ?'),
      Incoterms(2, 'EXW'),
      Incoterms(3, 'FAS'),
      Incoterms(4, 'FOB'),
      Incoterms(5, 'FCA'),
      Incoterms(6, 'CFR'),
      Incoterms(7, 'CPT'),
      Incoterms(8, 'CIF'),
      Incoterms(9, 'CIP'),
      Incoterms(10, 'DAT'),
      Incoterms(11, 'DAP'),
      Incoterms(12, 'DDP'),
    ];
  }
}

class Berat {
  int id;
  String name;

  Berat(this.id, this.name);

  static List<Berat> getBerat() {
    return <Berat>[
      Berat(1, 'Kg'),
      Berat(2, 'Ton'),
    
    ];
  }
}

class Uang {
  int id;
  String name;

  Uang(this.id, this.name);

  static List<Uang> getUang() {
    return <Uang>[
      Uang(1, 'Rp'),
      Uang(2, 'US﹩'),
    
    ];
  }
}

class Pembayaran {
  int id;
  String name;

  Pembayaran(this.id, this.name);
  static List<Pembayaran> getPembayaran(){
    return <Pembayaran>[
      Pembayaran(0,'Metode Pembayaran'),
      Pembayaran(1,'Advanced Payment'),
      Pembayaran(2,'Letter of Credit'),
      Pembayaran(2,'Open Account')
    ];
  }

}

class Datas {
  final String namaPerusahaan;
  final String namaPembeli;
  final String jenis;
  final String jumlah;
  final String metodePembayaran;
  final String total, incoterms, lastShipment;

  Datas(
    this.namaPerusahaan,
    this.namaPembeli,
    this.jenis,
    this.jumlah,
    this.metodePembayaran,
    this.total,
    this.incoterms,
    this.lastShipment,
    // this.document
  );
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  TextEditingController namaPerusahaanController = TextEditingController();
  TextEditingController namaPembeliController = TextEditingController();
  TextEditingController jenisController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController metodePembayaranController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController incotermsController = TextEditingController();
  TextEditingController lastDateController = TextEditingController();
  String buttonText = "Kapan Tanggal terakhir pengiriman barang ?";
  // TextEditingController documentController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');

  List<Incoterms> _incoterms = Incoterms.getIncoterms();
  List<DropdownMenuItem<Incoterms>> _dropdownMenuItems;

  List<Berat> _berat = Berat.getBerat();
  List<DropdownMenuItem<Berat>> _dropdownMenuItemsBerat;

  List<Uang> _uang = Uang.getUang();
  List<DropdownMenuItem<Uang>> _dropdownMenuItemsUang;

  List<Pembayaran> _pembayaran = Pembayaran.getPembayaran();
  List<DropdownMenuItem<Pembayaran>> _dropdownMenuItemsPembayaran;
  
  
  Incoterms _selectedIncoterms;
  Berat _selectedBerat;
  Uang _selectedUang;
  Pembayaran _selectedPembayaran;

  @override
  void initState() {
    
    _dropdownMenuItems = buildDropdownMenuItems(_incoterms);
    _selectedIncoterms = _dropdownMenuItems[0].value;

  

     _dropdownMenuItemsBerat = buildDropdownMenuItemsBerat(_berat);
    _selectedBerat = _dropdownMenuItemsBerat[0].value;

     _dropdownMenuItemsUang = buildDropdownMenuItemsUang(_uang);
    _selectedUang = _dropdownMenuItemsUang[0].value;

     _dropdownMenuItemsPembayaran = buildDropdownMenuItemsPembayaran(_pembayaran);
    _selectedPembayaran = _dropdownMenuItemsPembayaran[0].value;
  
    super.initState();
  }

  List<DropdownMenuItem<Incoterms>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Incoterms>> items = List();
    for (Incoterms company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<Berat>> buildDropdownMenuItemsBerat(List berat) {
    List<DropdownMenuItem<Berat>> items = List();
    for (Berat berats in berat) {
      items.add(
        DropdownMenuItem(
          value: berats,
          child: Text(berats.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<Uang>> buildDropdownMenuItemsUang(List uang) {
    List<DropdownMenuItem<Uang>> items = List();
    for (Uang uangs in uang) {
      items.add(
        DropdownMenuItem(
          value: uangs,
          child: Text(uangs.name),
        ),
      );
    }
    return items;
  }

  List<DropdownMenuItem<Pembayaran>> buildDropdownMenuItemsPembayaran(List pembayaran) {
    List<DropdownMenuItem<Pembayaran>> items = List();
    for (Pembayaran pembayarans in pembayaran) {
      items.add(
        DropdownMenuItem(
          value: pembayarans,
          child: Text(pembayarans.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Incoterms selectedIncoterms) {
    setState(() {
      _selectedIncoterms = selectedIncoterms;
    });
  }

  onChangeDropdownItemBerat(Berat selectedBerat) {
    setState(() {
      _selectedBerat = selectedBerat;
    });
  }

  onChangeDropdownItemUang(Uang selectedUang) {
    setState(() {
      _selectedUang = selectedUang;
    });
  }

  onChangeDropdownItemPembayaran(Pembayaran selectedPembayaran) {
    setState(() {
      _selectedPembayaran = selectedPembayaran;
    });
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: selectedDate,
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        var lastDateText = formatter.format(selectedDate);
        lastDateController.text = lastDateText;
        buttonText = lastDateController.text;
      });
  }

  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xff2C918D);
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
              ),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50, bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Icon(Icons.next_week),
                            ),
                            Text(
                              "Simulasi Ekspor",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Text(
                          "Hari ini, anda sedang bertemu dengan importir untuk melakukan transaksi jual beli, pastikan semua kesepakatan anda catat.")
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            controller: namaPerusahaanController,
                            style: new TextStyle(height: 0.2),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Apa Nama Perusahaan Anda ?'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            controller: namaPembeliController,
                            style: new TextStyle(height: 0.2),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Apa nama perusahaan pembeli ?'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            style: new TextStyle(height: 0.2),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Dimana alamat perusahaan pembeli'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            style: new TextStyle(height: 0.2),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Dimana Pelabuhan Tujuan ?'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextField(
                            controller: jenisController,
                            style: new TextStyle(height: 0.2),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Apa Barang yang anda jual ?'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  width: 220,
                                  child: TextField(
                                    controller: jumlahController,
                                    style: new TextStyle(height: 0.2),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'jumlah barang'),
                                  ),
                                ),
                              ),
                              Container(child: DropdownButton(value: _selectedBerat,
                        items: _dropdownMenuItemsBerat,
                        onChanged: onChangeDropdownItemBerat,),)
                            ],
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  width: 220,
                                  child: TextField(
                                    controller: totalController,
                                    style: new TextStyle(height: 0.2),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'harga total'),
                                  ),
                                ),
                              ),
                              Container(child: DropdownButton(
                                value: _selectedUang,
                                items:_dropdownMenuItemsUang,
                                onChanged: onChangeDropdownItemUang,
                              ),)
                            ],
                          ),
                        ),

                        // Padding(
                        //   padding: const EdgeInsets.only(top: 10),
                        //   child: TextField(
                        //     controller: incotermsController,
                        //     style: new TextStyle(height: 0.2),
                        //     decoration: InputDecoration(
                        //         border: OutlineInputBorder(),
                        //         labelText: 'Incoterms apa yang anda gunakan ?'),
                        //   ),
                        // ),
                        
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                // width: double.infinity,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                         color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: _selectedIncoterms,
                                    items: _dropdownMenuItems,
                                    onChanged: onChangeDropdownItem,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(onTap: (){
                              _showDialog();
                            }, child: Icon(Icons.help))
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 10),
                        //   child: TextField(
                        //     controller: metodePembayaranController,
                        //     style: new TextStyle(height: 0.2, fontSize: 14),
                        //     decoration: InputDecoration(
                        //         border: OutlineInputBorder(),
                        //         labelText:
                        //             'Apa metode pembayaran yang digunakan ?'),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                     color: Colors.black54),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: _selectedPembayaran,
                                items: _dropdownMenuItemsPembayaran,
                                onChanged: onChangeDropdownItemPembayaran,
                              ),
                            ),
                          ),
                        ),
                        // DropdownButtonFormField()
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: IgnorePointer(
                              child: TextField(
                                controller: lastDateController,
                                style: new TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.date_range),
                                    border: OutlineInputBorder(),
                                    labelText:
                                        'Kapan Tanggal terakhir pengiriman barang ?'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: ButtonTheme(
                              buttonColor: green,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)),
                                child: Text(
                                  "Lanjut",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                onPressed: () {
                                  _navigateHome(context);
                                },
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
                _showDialogs();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialogs() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Dialog Ke 2"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _navigateHome(BuildContext context) async {
    Datas datas = new Datas(
        namaPerusahaanController.text,
        namaPembeliController.text,
        jenisController.text,
        jumlahController.text,
        metodePembayaranController.text,
        totalController.text,
        incotermsController.text,
        lastDateController.text);
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SalesContract(
                  datas: datas,
                )));
    print(result);
  }
}
