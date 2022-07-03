// ignore_for_file: must_be_immutable

import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';
import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi({Key? key}) : super(key: key) {
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Burçlar Listesi"),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: tumBurclar.length,
              itemBuilder: ((context, index) {
                return BurcItem(listelenenBurc: tumBurclar[index]);
              }))),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png";
      var burcBuyukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png";
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetayi, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
