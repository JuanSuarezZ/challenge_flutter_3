import 'package:challenge_flutter3/pages/HomePage.dart';
import 'package:challenge_flutter3/pages/NotificacionesPage.dart';
import 'package:challenge_flutter3/pages/ShoPage.dart';
import 'package:challenge_flutter3/pages/UsuarioPage.dart';
import 'package:challenge_flutter3/provider/NavProvider.dart';
import 'package:challenge_flutter3/widgets/CustomFloatingButton.dart';
import 'package:challenge_flutter3/widgets/CustomNavBar.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Pages(),
        Positioned(bottom: 0, left: 0, right: 0, child: CustomNavBar()),
        Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Center(child: CustomFloatingButton()))
      ],
    );
  }
}

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<NavProdiver>(context);
    // Cambiar para mostrar la pagina respectiva
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return HomePage();

      case 1:
        return ShoPage();

      case 2:
        return NotificacionesPage();

      case 3:
        return UsuarioPage();

      default:
        return HomePage();
    }
  }
}
