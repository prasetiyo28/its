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
  Widget ButtonNih(context,jenis) {
    if (jenis == 'ATIGA') {
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Indonesia.jpg")))),
                    Text(
                      "Indonesia",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/Vietnam.jpg")))),
                      Text(
                        "Vietnam",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: new AssetImage("assets/Thailand.jpg")))),
                    Text(
                      "Thailand",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Singapur.jpg")))),
                    Text(
                      "Singapura",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/Myanmar.jpg")))),
                      Text(
                        "Myanmar",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: new AssetImage("assets/Malaysia.jpg")))),
                    Text(
                      "Malaysia",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Laos.jpg")))),
                    Text(
                      "Laos",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/Kambodja.jpg")))),
                      Text(
                        "Kambodja",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: new AssetImage("assets/Filipina.jpg")))),
                    Text(
                      "Filipina",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Brunei-Darussalam.jpg")))),
                    Text(
                      "Brunei Darussalam",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
    } else if (jenis == 'ACFTA') {
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/China.jpg")))),
                    Text(
                      "China",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/ASEAN.png")))),
                      Text(
                        "ASEAN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }else if(jenis == 'AKFTA'){
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Korea.jpg")))),
                    Text(
                      "Korea",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/ASEAN.png")))),
                      Text(
                        "ASEAN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }else if (jenis == 'IJEPA'){
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Jepang.jpg")))),
                    Text(
                      "Jepang",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/Indonesia.jpg")))),
                      Text(
                        "Indonesia",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }else if (jenis == 'AANZFTA'){
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Australia.jpg")))),
                    Text(
                      "Australia",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/New-Zaeland.jpg")))),
                      Text(
                        "New Zaeland",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/ASEAN.png")))),
                    Text(
                      "ASEAN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
          
        ],
      ),
    );
    }else if(jenis == 'AIFTA'){
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/India.jpg")))),
                    Text(
                      "India",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/ASEAN.png")))),
                      Text(
                        "ASEAN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }else if(jenis == 'AJCEP'){
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Jepang.jpg")))),
                    Text(
                      "Jepang",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/ASEAN.png")))),
                      Text(
                        "ASEAN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }else {
      return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        height: 100,
                        width: 100,
                        decoration: new BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    1.0, // has the effect of extending the shadow
                                offset: Offset(
                                  1.0, // horizontal, move right 10
                                  2.0, // vertical, move down 10
                                ),
                              )
                            ],
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:
                                    new AssetImage("assets/Pakistan.jpg")))),
                    Text(
                      "Pakistan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      1.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    1.0, // horizontal, move right 10
                                    2.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image:
                                      new AssetImage("assets/Indonesia.jpg")))),
                      Text(
                        "Indonesia",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
          
        ],
      ),
    );
    }

    
  }

  @override
  Widget build(BuildContext context) {
    var params = widget.params;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          children: <Widget>[
                      Text("Negara Anggota",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            Text(
              "${params.jenis}",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: const Color(0xffB8E6DB),
      ),
      body: Container(
        child: 
        ListView(children: <Widget>[

          ButtonNih(context,params.jenis)]),
      ),
    );
  }
}
