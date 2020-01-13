import 'package:flutter/material.dart';
import 'package:its/detailKomponen.dart';

class DetailPerjanjian extends StatefulWidget {
  final String jenis;
  DetailPerjanjian({Key key, @required this.jenis}) : super(key: key);

  @override
  _DetailPerjanjianState createState() => _DetailPerjanjianState();
}


class _DetailPerjanjianState extends State<DetailPerjanjian> {
  
  
  @override
  Widget build(BuildContext context) {
    var jenis = widget.jenis;
    var pengertian = '';
    var funfact = '';


    if (jenis == 'ATIGA') {
      pengertian = 'ASEAN TRADE IN GOODS AGREEMENT adalah persetujuan mengenai pembentukan kawasan perdagangan bebas untuk perdagangan barang antara negara anggota ASEAN.';
      funfact = 'ATIGA adalah pengganti CEPT Agreement dan penyempurnaan perjanjian ASEAN dalam perdagangan barang yang berlaku sebelumnya.';
    } else if (jenis == 'ACFTA') {
      pengertian = 'ACFTA adalah suatu kawasan perdagangan bebas di antara anggota-anggota ASEAN dan Tiongkok.';
      funfact = 'ACFTA ditandatangani di Phnom Penh, Kamboja, 4 November 2002. Namun perjanjian ini baru berlaku pada tanggal 1 Januari 2010.';
    }else if(jenis == 'AKFTA'){
      pengertian = 'merupakan perjanjian antara negara-negara anggota ASEAN dengan Korea Selatan yang bertujuan untuk menciptakan wilayah perdagangan bebas di tiga sektor utama, yaitu perdagangan barang, perdagangan jasa, dan investasi.';
      funfact = 'Persetujuan penyelesaian sengketa AKFTA dan persetujuan perdagangan barang, jasa, dan investasi dilakukan bertahap secara terpisah.';
    }else if (jenis == 'IJEPA'){
      pengertian = 'Indonesia-Japan Economic Partnership Agreement (IJEPA) adalah kerjasama ekonomi antara Indonesia dan Jepang untuk mengurangi hambatan-hambatan dalam perdagangan kedua negara tersebut.';
      funfact = 'IJEPA menjadi perjanjian perdagangan bilateral pertama bagi Indonesia';
    }else if (jenis == 'AANZFRA'){
      pengertian = 'ASEAN-Australian-New Zealand Free Trade Agreement (AANZFTA) adalah perjanjian perdagangan bebas antara seluruh anggota ASEAN, Australia dan New Zealand.';
      funfact = 'a.	AANZFTA terbentuk setelah menempuh 15 putaran perundingan dan menghasilkan teks hukum perjanjian yang diselesaikan pada tahun 2008.\nb. Indonesia merupakan negara pemanfaat tarif preferensi AANZFTA tertinggi diantara Pihak dalam melakukan eksportasi ke Australia (rata-rata 31,6% per tahun selama periode 2014-2016).';
    }else if(jenis == 'AIFTA'){
      pengertian = 'ASEAN–India Free Trade Area, AIFTA) adalah kawasan perdagangan bebas antara sepuluh anggota Perhimpunan Bangsa-bangsa Asia Tenggara (ASEAN) dan India.';
      funfact ='ASEAN dan India telah sepakat untuk membuka pasar di masing-masing negaranya dengan semakin mengurangi dan menghilangkan pajak pada 76,4% dari cakupan barang';
    }else if(jenis == 'AJCEP'){
      pengertian = 'ASEAN-Japan Comprehensive Economic Partnership (AJCEP) adalah kerja sama untuk memperkuat integrasi ekonomi antara ASEAN dan Jepang, termasuk didalamnya membentuk kawasan perdagangan bebas, meningkatkan daya saing ASEAN dan Jepang di pasar dunia, serta meliberalisasikan dan memfasilitasi perdagangan barang, jasa, dan investasi.';
      funfact = 'Perjanjian AJCEP mulai dinegosiasikan pada April 2005 dan ditandatangani pada April 2008 secara ad-referendum.';
    }else {
      pengertian = 'Indonesia-Pakistan Prefential Tarif Agreement (IP-PTA) adalah perjanjian penghapusan atau pengurangan prefensial tarif barang impor di Indonesia dari pakistan dan sebaliknya.';
      funfact = '';
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          jenis,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffB8E6DB),
      ),
      body: Stack(
              children: <Widget>[
          Container(
            // color: Colors.black,
            height: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                              pengertian),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  "Komponen Perjanjian Dagang",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Params params = new Params(jenis, 'latar');
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                        },
                        child: Container(
                            width: 100,
                            child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/statistic.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text("Latar Beakang",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                                      )
                                    ],
                                  ),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Params params = new Params(jenis, 'tujuan');
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                          },
                          child: Container(
                              width: 100,
                              child: Material(
                                  elevation: 2,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/tujuan.png"),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text("Tujuan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                        )
                                      ],
                                    ),
                                  ))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Params params = new Params(jenis, 'negara');
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                        },
                        child: Container(
                            width: 100,
                            child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/map.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text("Negara Anggota",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                      )
                                    ],
                                  ),
                                ))),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Params params = new Params(jenis, 'peluang');
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                        },
                        child: Container(
                            width: 100,
                            child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/grafik.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text("Peluang",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                                      )
                                    ],
                                  ),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Params params = new Params(jenis, 'manfaat');
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                          },
                          child: Container(
                              width: 100,
                              child: Material(
                                  elevation: 2,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/toppeak.png"),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text("Manfaat",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                        )
                                      ],
                                    ),
                                  ))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Params params = new Params(jenis, 'landasan');
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                        },
                        child: Container(
                            width: 100,
                            child: Material(
                                elevation: 2,
                                borderRadius: BorderRadius.circular(10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset("assets/law.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Text("Landasan Hukum",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                                      )
                                    ],
                                  ),
                                ))),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),

            
          ),
          Align(
            alignment: Alignment.bottomCenter,
                      child: Padding(
                      
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Material(
                          
                          borderRadius: BorderRadius.circular(10),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: <Widget>[
                                Text("Fun Fact",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(funfact),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
          ),
        ],
      ),


    );
  }
}

class Params {
  final String jenis;
  final String komponen;

  Params(
    this.jenis,
    this.komponen,
  );
}
