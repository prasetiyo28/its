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
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                          _showDialogLatar(jenis,'latar');
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
                            // Params params = new Params(jenis, 'tujuan');
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                            _showDialogLatar(jenis,'tujuan');
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
                          // Params params = new Params(jenis, 'peluang');
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                          _showDialogLatar(jenis,'peluang');
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
                            // Params params = new Params(jenis, 'manfaat');
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                            _showDialogLatar(jenis,'manfaat');
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
                          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailKomponen(params : params)));
                          _showDialogLatar(jenis, 'landasan');
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

  void _showDialogLatar(jenis,komponen) {
    var latar = '';
    var tujuan = '';
    var peluang = '';
    var manfaat = '';
    var landasan = '';
    
    var title ='';
    var content = '';

if (jenis == 'ATIGA') {
     latar = 'Dalam rangka mewujudkan ekonomi ASEAN yang kohesif dan terintegrasi melalui arus bebas perdagangan barang pada tahun 2025, dibutuhkan suatu pendekatan yang lebih terintegrasi dan menyeluruh. Untuk mencapai hal tersebut, maka pada bulan Agustus 2007, para Menteri Ekonomi ASEAN sepakat untuk memperluas perjanjian Common Effective Preferential Tariff for ASEAN Free Trade Agreement (CEPT-AFTA) dengan menyempurnakan perjanjian ASEAN dalam perdagangan barang secara komprehensif yang disebut dengan ASEAN Trade in Goods Agreement (ATIGA) atau Perjanjian Perdagangan Barang ASEAN, ditandatangani pada tanggal 27 Februari 2009 di Thailand.';
     tujuan = 'a.	Penghapusan Hambatan Non-Tarrif\nb.	Pengimplementasian Rules of Origin (ROO) atau Surat Keterangan Asal (SKA).\nc.	memperkenalkan sistem sertifikasi  mandiri  kawasan  atau ASEAN-wide  self-certification  system.\nd.	mengembangkan  ASEAN  Single  Window  (ASW) yang dimaksudkan  untuk  meningkatkan  fasilitasi  perdagangan. \ne.	ASEAN Trade Repository (ATR). Merupakan portal tunggal yang berisi kebijakan / peraturan terkait perdagangan, ekspor-impor di ASEAN.f.	Modernisasi dan Integrasi Kepabeanan ASEAN.\nASEAN Solutions and Settlements for Investments, Services and Trade  (ASSIST). Merupakan sebuah  platform online yang  berfungsi  untuk  memfasilitasi  pihak  yang  ingin menyampaikan  keluhan  terkait  dengan  kepatuhan  dan  implementasi  ATIGA.';
     peluang = 'Potensi Kamboja, Laos, Myanmar, dan Vietnam untuk market acces Produk Indonesia: membuka peluang ekspor Indonesia karena ada 180 Juta penduduk Kamboja, Laos, Myanmar dan Vietnam sebagai pasar potensial.';
     manfaat = 'a.	setiap negara dapat memenuhi kebutuhan atas barang yang tidak diproduksi sendiri.\n\nb.	memberikan kesempatan perluasan pasar serta menambah keuntungan terutama dari spesialisasi produk\n\nc.	tersedia pilihan barang yang lebih bervariasi bagi konsumen.\n\nd.	transfer ilmu dan teknologi modern.\n\ne.	memungkinkan suatu negara menyerap dan mempelajari berbagai teknik produksi yang lebih efisien dan modern.';
     landasan = 'PERPRES NO. 02 TAHUN 2010';

    } else if (jenis == 'ACFTA') {
      latar = 'tiap - tiap negara ASEAN dan China memiliki spesialisasi masing - masing dalam memproduksi komoditas tertentu sehingga akan lebih efesien bagi negara - negara tersebut apabila melakukan ekspor dan impor. Selain itu, China melihat peluang pasar yang besar dari negara-negara anggota ASEAN, begitu pula sebaliknya negara - negara ASEAN termasuk Indonesia juga melihat peluang pasar yang besar dari China.';
      tujuan = 'untuk mewujudkan kawasan perdagangan bebas dengan menghilangkan atau mengurangi hambatan - hambatan perdagangan barang baik tarif maupun non-tarif, peningkatan aspek pasar, jasa, peraturan, ketentuan investasi, dan sekaligus peningkatan aspek kerjasama ekonomi untuk mendorong perekonomian para pihak Asean-China Free Trade Agreement (ACFTA) dalam rangka meningkatkan kesejahteraan masyarakat ASEAN dan China';
      landasan = 'KEPPRES No.48 tahun 2004';
      peluang = 'a.	Membuka peluang bagi Indonesia untuk meningkatkan volume dan nilai ekspor ke negara berpenduduk terbesar di dunia.\n\nb.	penciptaan iklim investasi yang kompetitif dan terbuka\n\nc.	membuka peluang bagi Indonesia untuk menarik lebih banyak investasi dari China\n\npeningkatan kerjasama ekonomi dalam lingkup yang lebih luas, membantu Indonesia melakukan peningkatan kapasitas (capacity building), baik dalam hal kehandalan teknologi (technology capability) maupun manajerial (managerial capability).';
      manfaat = 'a.	meningkatkan pangsa pasar ke luar negeri, khususnya wilayah ASEAN dan China.\n\nb.	meningkatkan investasi dari negara-negara ASEAN dan China yang akan membuka lapangan kerja dan menerap tenaga kerja Indonesia.\n\nc.	Tersedianya barang-barang yang lebih murah dan berkualitas sehingga daya beli masyarakat akan meningkat serta kepuasan konsumen akan lebih terpenuhi.\n\nd.	meningkatkan proses produksi di Indonesia yang lebih efisien.\n\ne.	Meningkatkan posisi tawar Indonesia ketika melakukan penawaran kerjasama bilateral dengan negara lain, terutama terhadap negara maju.\n\nf. ACFTA akan menimbulkan trade creation yang akan mendorong terciptanya keunggulan komparatif masing-masing perekonomian.';
    }else if(jenis == 'AKFTA'){
      latar = 'Keinginan untuk mewujudkan kawasan perdagangan bebas dengan menghilangkan atau mengurangi hambatan-hambatan perdagangan barang baik tarif ataupun non tarif, peningkatan akses pasar jasa, peraturan dan ketentuan investasi, sekaligus peningkatan aspek kerjasama ekonomi untuk mendorong hubungan perekonomian para pihak AKFTA dalam rangka meningkatkan kesejahteraan masyarakat ASEAN dan Korea Selatan.';
      tujuan = '1)	Memperkuat dan meningkatkan kerjasama ekonomi" perdagangan dan investasi di antara para pihak\n2)	 Secara progresif meliberalisasi dan mempromosikan perdagangan barang dan jasajasa maupun menciptakan rezim investasi yang transparan liberal dan asilitati. \n3)	Menggali bidang-bidang baru dan mengembangkan langkah-langkah yang tepat bagi kerjasama dan integrasi ekonomi yang erat. \n4)	Memfasilitasi integrasi ekonomi yang lebih efektif dari negara-negara anggota ASEAN yang baru serta menjembatani kesenjanganpembangunan diantara para pihak.\n5) Menetapkan kerangka kerjasama bagi penguatan hubunganekonomi lebih lanjut di antara para pihak';
      landasan = 'PERPRES NO. 11 TAHUN 2007';
      peluang = 'a.	Menghapus tarif dan hambatan non tarif secara progresif dalam semua perdagangan barang secara substansial.\n\nb.	Meliberalisasikan perdagangan jasa secara progresif dengan cakupan sektor yang substansial.\n\nc.	Membentuk suatu regim investasi yang terbuka dan kompetitif yang memfasilitasi dan mendorong investasi.\n\nd.	Memberikan perlakuan khusus dan berbeda untuk Negara-negara Anggota ASEAN mengenai Kerjasama Kemitraan Menyeluruh antara ASEAN dan Korea serta elemen-elemen utama yang terkait dengan hal tersebut.\n\ne.	Memberikan fleksibilitas untuk menyampaikan bidang-bidang sensitif atas barang, sektor jasa, dan investasi berdasarkan prinsip timbal balik dan saling menguntungkan.\n\nf.	Membentuk langkah-langkah fasilitasi perdagangan dan investasi yang efektif.\n\ng.	Memperluas kemitraan ekonomi ke dalam bidang-bidang baru.';
      manfaat = 'a.	Memperkuat dan meningkatkan kerjasama ekonomi, perdagangan dan investasi antara Para Pihak.\n\nb.	Meliberalisasikan dan meningkatkan perdagangan barang dan jasa secara progresif serta menciptakan rezim investasi yang transparan, liberal dan fasilitatif.\n\nc.	Menggali bidang-bidang baru dan mengembangkan langkah-langkah yang sesuai untuk kerjasama dan integrasi ekonomi yang lebih erat.\n\nd.	Memfasilitasi integrasi ekonomi yang lebih efektif untuk negara-negara anggota ASEAN yang baru dan menjembatani kesenjangan pembangunan diantara para pihak.\n\ne.	Membentuk suatu kerangka kerjasama untuk lebih memperkuat hubungan ekonomi antara para pihak.';
    }else if (jenis == 'IJEPA'){
      latar = 'Keinginan untuk saling mempererat kerjasama ekonomi dan mitra dagang diantara kedua Negara dalam menghadapi era perdagangan dan pasar bebas';
      tujuan = 'meningkatkan kinerja ekonomi kedua pihak melalui liberalisasi perdagangan bebas, jasa, dan investasi, fasilitas dan kerja sama ekonomi Jepang memanfaatkan EPA bilateral untuk memperkuat akses pasar di negara-negara yang menjadi target produk industrinya.';
      landasan = 'PERPRES NO. 36 TAHUN 2008';
      peluang = 'a.	Jepang membuka pasarnya untuk buah-buah tropis segar seperti mangga, manggis, rambutan, alpukat, durian, belimbing, pisang, nanas dan lain- lain.\n\nb.	Ekspor Indonesia yang memiliki daya saing di pasar Jepang: kopi, pala, karet, kakao, lada dan kelapa.\n\nc.	Atas permintaan Jepang, Indonesia segera menghapus tarif untuk komoditi anggur segar, apel segar, peach segar termasuk nektarines, persimon segar, dll.\n\nd.	Melakukan pertukaran informasi dan promosi\n\ne.  Peningkatan Capacity building : (1) pelatihan di bidang peternakan yang dimulai dari system manajemen peternakan, pembinahan, pakan, penyakit dan budidaya; (2) pelatihan mengenai sanitary dan phytosanitary, budidaya hidroponik dan aeroponik';
      manfaat = 'a.	Perluasan akses pasar: produk pertanian, perikanan, industri dan kehutanan (produk R dan Q IJEPA), tenaga kerja, peningkatan investasi dan kerja sama yang lebih luas.\n\nb.	Meningkatkan neraca perdagangan Indonesia.\n\nc.  Bidang Investasi: Pada tahun 2016, Jepang tercatat sebagai mitra investor ke-2 terbesar di Indonesia dengan nilai investasi mencapai USD 5,4 miliar dan jumlah proyek sebanyak 3.302.';
    }else if (jenis == 'AANZFTA'){
      latar = 'Keinginan untuk dapat meningkatkan integrasi ekonomi antara Australia, New Zealand dan negara-negara yang berada di kawasan ASEAN melalui peningkatan kapasitas (capacity building) serta penyediaan fasilitas perdagangan';
      tujuan ='a.	proses liberalisasi perdagangan yang dilakukan dengan menghapus hambatan tarif dan non-tarif secara progresif guna mempermudah jalannya perdagangan maupun investasi, \nb.	kemudian memfasilitasi perdagangan dengan menekankan sistem transparansi dan menyediakan mekanisme penyelesaian sengketa guna memperkuat dan meningkatkan kerja sama ekonomi di antara negara-negara anggota, \n c. serta memperbaharui dan menggali bidang-bidang kerja sama yang baru untuk mengembangkan kebijakan yang tepat pada kerangka kerja sama ekonomi di dalam tubuh AANZFTA.';
      landasan = 'PERPRES No.26 Tahun 2001';
      peluang = 'a.	Tarif akan semakin berkurang terhitung dari mulai berlakunya Perjanjian, dan tarif dihilangkan untuk setidaknya 90% dari semua pos tarif dalam jadwal tertentu;\n\nb.	Pergerakan barang akan difasilitasi melalui aturan asal yang lebih modern dan fleksibel, prosedur kepabeanan yang disederhanakan, dan mekanisme yang lebih transparan;\n\nc.	Hambatan perdagangan jasa akan semakin diliberalisasi sehingga memungkinkan akses pasar yang lebih besar kepada pemasok jasa di kawasan;\n\nd.	Pergerakan pebisnis, mereka yang terlibat dalam aktivitas perdagangan dan investasi, akan difasilitasi; dan\n\ne.  Investasi akan diberikan berbagai perlindungan, termasuk kemungkinan menangani sengketa melalui mekanisme penyelesaian sengketa investor-negara.';
      manfaat = 'a.	akses pasar yang lebih besar untuk eksportir/produsen dalam kawasan, peningkatan skala ekonomi di bidang produksi,\n\nb.	peluang untuk jejaring kerja dan prinsip saling melengkapi;\n\nc.	serta meningkatkan kerja sama antara penyelenggaran ekonomi dalam kawasan.\n\nd.	AANZFTA menciptakan lingkungan usaha yang lebih kondusif dengan peningkatan kepastian usaha, usaha lebih dapat diprediksi, dan peningkatan transparansi.\n\ne.  Pelaku ekonomi dijamin bahwa kegiatan perdagangan tidak akan dihentikan atau diganggu oleh hal yang tidak perlu';
    }else if(jenis == 'AIFTA'){
      latar = 'Perjanjian ini di latar belakangi oleh kekhawatiran indonesia pada dampak trade diversion, artinya apabila dua negara sepakat untuk melakukan perjanjian bebas, maka kegiatan ekspor impor akan banyak dilakukan oleh dua negara tersebut, akibatnya negara lain akan kehilangan potensi pasar untuk produk mereka';
      tujuan = '1.	Memperkuat dan meningkatkan kerjasama ekonomi, perdagangan, dan investasi antara ASEAN dan India.\n2.	Meliberalisasikan secara progresif untuk meningkatkan perdagangan barang dan jasa serta menciptakan suatu iklim investasi yang transparan dan bebas.\n3.	Mendapatkan daerah baru dan mengembangkan langkah-langkah yang tepat untuk lebih mendekatkan kerjasama ekonomi diantara para Pihak.\n4. Memfasilitasi integrasi ekonomi yang lebih efektif dengan negara-negara keanggotaan baru di ASEAN serta menjembatani kesenjangan pembangunan diantara semua Pihak.';
      landasan = 'PERPRES NO. 51 TAHUN 2015';
      peluang = 'a.	Meningkatkan kinerja perdagangan antara ASEAN dan India.\n\nb.	Potensi yang dimiliki ASEAN dan India, salah satunya jumlah penduduk yang mencapai hampir 2 miliar jiwa.\n\nc.  AIFTA akan membuka peluang bagi peningkatan ekspor Indonesia khususnya untuk komoditi-komoditi seperti sayuran, buah-buahan, lemak dan minyak nabati, coklat, pupuk, bahan samak dan celup, plastik, produk karet, produk kulit, kertas, tekstil dan produk tekstil, batubara, biji tembaga, kaca, perkakas, mesin, otomotif dan lain-lain.';
      manfaat = 'a.	Terciptanya kepastian hukum dalam menjalankan usaha di bidang perdagangan barang antar para pihak;\n\nb.	Terciptanya iklim usaha yang semakin kondusif dengan diterapkannya penghapusan ekonomi biaya tinggi dan penyederhanaan perijinan;\n\nc.	Meningkatnya produktifitas secara internal untuk memperkuat daya saing;\n\nd.	Meningkatnya perdagangan barang diantara para Pihak;\n\ne.	Meningkatnya peluang pasar produk ekspor Indonesia ke India dengan tingkat tarif bea masuk yang relatif lebih rendah atau bebas;\n\nf.	Meningkatnya kerja sama antara pelaku usaha di kedua negara melalui aliansi strategis yang didukung dengan kepastian mekanisme penyelesaian sengketa; dan\n\ng.  Adanya peluang pemanfaatan teknologi diantara para Pihak yang semakin terbuka.';
    }else if(jenis == 'AJCEP'){
      latar = 'ASEAN dan Jepang memiliki hubungan kerjasama saling membutuhkan, di mana  ASEAN yang sebagian besar anggotanya merupakan negara-negara berkembang memiliki sumber daya alam yang melimpah namun kurang dalam teknologi sedangkan Jepang yang merupakan negara maju yang memiliki keahlian, teknologi dan kapital';
      tujuan = '-	Memperkuat dan meningkatkan kerjasama ekonomi, perdagngan barang, jasa dan investasi di antara negara-negara anggota\n- Meliberalisasi perdagangan secara progresif dan menciptakan suatu sistem yang transparan dan untuk mempermudah investasi. \n- Menggali bidang-bidang kerjasama yang baru dan mengembangkan kebijaksanaan yang teoat dalam rangka kerjasama ekonomi negara-negara';
      landasan = 'PERPRES NO.50 TAHUN 2009';
      peluang = 'a.	Mendorong pelaku usaha untuk memanfaatkan tarif preferensi untuk mengurangi biaya produksi, sehingga bisa bersaing dengan negara lain.\n\nb.	Mendorong Pemerintah memperbaiki dan menyediakan lingkungan usaha (fisik dan non fisik) bagi dunia usaha dan pelaku usaha melakukan upaya efisiensi usaha.\n\nc.	Mendorong disiplin/harmonisasi kebijakan non tarif lintas Kementerian/Lembaga terkait dalam rangka mengurangi komplain dari negara lain.\n\nd.	Mendorong Pemerintah dalam membuat paket Deregulasi kebijakan ekspor/impor yang lebih mampu memfasilitasi perdagangan.\n\ne.  Mendorong Pemerintah dan pelaku usaha bekerjasama untuk menerobos pasar ekspor.';
      manfaat = 'a.	Peningkatan kinerja perdagangan barang dan jasa.\n\nb.	Peningkatan jaringan produksi regional dan turut serta Dalam Global Value Chain (GVC).\n\nc.	Kemudahan dan jaminan persaingan usaha di kawasan ASEAN yang kompetitif.\n\nd.	Peningkatan arus investasi (FDI).\n\ne.	Pengembangan dan Fasilitasi UMKM.\n\nf.	Peningkatan pemanfaatan E-Commerce.\n\ng.  Peningkatan konektivitas (infrastruktur fisik dan non fisik).';
    }else {
      latar = 'Perjanjian Kerangka Kerja antara Para Pihak tentang Kemitraan Komprehensif di bidang Ekonomi (CEP, Comprehensive Economic Partnership) yang ditandatangani di Islamabad pada tanggal 24 November 2005; \n\nAdanya hubungan persahabatan antara Indonesia dan Pakistan yang telah berlangsung lama dan kesamaan dalam hal agama dan warisan budaya yang dimiliki kedua negara; \n\nDiharapkan bahwa Perjanjian ini akan menciptakan iklim baru bagi kerja sama di bidang ekonomi dan regional antara kedua belah pihak.';
      tujuan = 'upaya memperkuat kemitraan yang erat di bidang ekonomi akan membawa manfaat ekonomi dan sosial serta meningkatkan standar kehidupan masyarakat kedua belah pihak';
      landasan = 'PERPRES NO.98 TAHUN 2012';
      peluang = 'a.	Perluasan pasar domestik bagi Indonesia dan Pakistan\n\nb. Perusahaan dalam negeri mendapatkan fasilitas prefensial tarif di Pakistan';
      manfaat = 'a.	Perjanjian Perdagangan Preferensial (PTA, Pref erential Trade Agreement) akan memfasilitasi perusahaan-perusahaan dari Indonesia dan Pakistam dalam memperoleh manfaat dari PTA tersebut sekaligus meningkatkan keyakinan Pemerintah Indonesia dan Pemerintah Pakistan untuk melakukan perundingan Perjanjian Perdagangan Bebas (FTA, Free Trade Agreement)\n\nb. upaya memperkuat kemitraan yang erat di bidang ekonomi akan membawa manfaat ekonomi dan sosial serta meningkatkan standar kehidupan masyarakat Indonesia dan Pakistan.';
    }

    if (komponen == 'latar') {
      title = 'Latar Belakang'; 
      content = latar;
    }else if (komponen == 'tujuan'){
      title = 'Tujuan';
      content = tujuan;
    }else if (komponen == 'landasan'){
      title = 'Landasan Hukum';
      content = landasan;
    }else if (komponen == 'peluang'){
      title = 'Peluang';
      content = peluang;
    }else {
      title = 'Manfaat';
      content = manfaat;
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
            width: 300,
              height: 300,
              child: ListView(
                              children: <Widget>[
                  Column(
                    children: <Widget>[
                      new Text(
            content,
            style: TextStyle(color: Colors.white),
          ),
                    ],
                  ),
                ],
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








class Params {
  final String jenis;
  final String komponen;

  Params(
    this.jenis,
    this.komponen,
  );
}
