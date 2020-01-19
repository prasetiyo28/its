import 'package:flutter/material.dart';
import 'package:its/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

final pages = [
  new PageViewModel(
      const Color(0xffB8E6DB),
      'assets/list-cheklist.png',
      '1. Registerasi Exportir',
      'Exportir harus registrasi di web www.INSW.com (Indonesia Nation Single Windows) sebagai syarat utama untuk memulai eksport',
      'assets/list-cheklist.png',
      false),
  new PageViewModel(
      const Color(0xffB8E6DB),
      'assets/list_notif.png',
      '2. Pemberitahuan Pabean',
      'Exportir harus membuat Pemberitahuan Ekspor Barang (PEB) yang telah ditentukan melalui peraturan Direktorat Jenderal Bea Cukai Nomor 18/BC/2012',
      'assets/list_notif.png',
      false),
  new PageViewModel(
      const Color(0xffB8E6DB),
      'assets/incoterm.png',
      '3. Pembayaran Bea Keluar',
      'Membayar bea keluar sebagai pajak kepada negara',
      'assets/incoterm.png',
      false),
  new PageViewModel(
      const Color(0xffB8E6DB),
      'assets/list-cheklist.png',
      '4. Pemenuhan Larangan dan Batasan (Lartas)',
      'Pemeriksaan barang ekspor yang dilakukan oleh Direkorat Jendral Bea dan Cukai apakah barang tersebut dibatasi/dilarang ekspornya',
      'assets/list-cheklist.png',
      true),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });

  @override
  Widget ButtonNih(context) {
    if (viewModel.isEnd == true) {
      Color green = const Color(0xff2C918D);
      return ButtonTheme(
          buttonColor: green,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white)),
              child: Text(
                "Mulai",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('seen', true);
              }));
    } else {
      return Text("");
    }
  }

  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        color: viewModel.color,
        child: new Opacity(
          opacity: percentVisible,
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xff2C918D),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                      child: new Padding(
                        padding: new EdgeInsets.only(
                            right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                        child: new Text(
                          "Kewajiban Eksportir",
                          style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'FlamanteRoma',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Text(
                      viewModel.title,
                      style: new TextStyle(
                          color: Colors.black,
                          fontFamily: 'FlamanteRoma',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 50.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 25.0),
                    child: new Image.asset(viewModel.heroAssetPath,
                        width: 200.0, height: 200.0),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Text(
                    viewModel.body,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.black,
                      fontFamily: 'FlamanteRomaItalic',
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ButtonNih(context)
              ]),
        ));
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;
  final bool isEnd;

  PageViewModel(this.color, this.heroAssetPath, this.title, this.body,
      this.iconAssetPath, this.isEnd);
}
