// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurcDetay(secilenBurc: listelenenBurc)));
        },
        leading: Image.asset(
          "assets/images/" + listelenenBurc.burcKucukResim,
          width: 64,
          height: 64,
        ),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
      ),
    );
  }
}
