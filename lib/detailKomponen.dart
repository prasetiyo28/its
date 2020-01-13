import 'package:flutter/material.dart';
import 'package:its/detailPerjanjian.dart';
class DetailKomponen extends StatefulWidget {
  final Params params;
  DetailKomponen({Key key, @required this.params}) : super(key: key);
  @override
  _DetailKomponenState createState() => _DetailKomponenState();
}

class _DetailKomponenState extends State<DetailKomponen> {
  @override
  Widget build(BuildContext context) {
    var params = widget.params;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "${params.jenis}",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffB8E6DB),
      ),
    );
  }
}