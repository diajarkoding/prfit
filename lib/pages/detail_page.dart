import 'package:flutter/material.dart';
import 'package:prfit/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageTutorial() {
      return Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffFFFFFF),
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)]),
        child: Image.asset(
          'assets/abs/air_bike.gif',
          width: 350,
          height: 225,
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            imageTutorial(),
            ListView(
              children: [
                const SizedBox(height: 288),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 1)
                    ],
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: edge,
                          top: 20,
                        ),
                        child: Text(
                          'AIR BIKE',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Tutorialcard(),
                          SizedBox(width: 15),
                          Tutorialcard(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(
                          left: edge,
                        ),
                        child: const SizedBox(
                          height: 300,
                          width: 300,
                          child: Text(
                            'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: const SizedBox(
                          height: 300,
                          width: 300,
                          child: Text(
                            'Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang menggunakan kalimat-kalimat dari Lorem Ipsum, dan seiring munculnya perangkat lunak Desktop Publishing seperti Aldus PageMaker juga memiliki versi Lorem Ipsum.',
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Tutorialcard extends StatelessWidget {
  const Tutorialcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "TUTORIAL",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
