import 'package:challenge_flutter3/provider/NavProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<NavProdiver>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  onTap: (int i) =>
                      uiProvider.selectedMenuOpt = i, // se selecciono i
                  currentIndex: currentIndex, //posicion actual
                  elevation: 10, //elevacion, es decir la sombra
                  type: BottomNavigationBarType
                      .fixed, //mas de 3 elementos, los alinea
                  backgroundColor: Colors.white,
                  selectedItemColor: uiProvider.color,
                  unselectedItemColor: Colors.grey,
                  mouseCursor: null,
                  items: uiProvider.getbotones()),
            )),
      ],
    );
  }
}
