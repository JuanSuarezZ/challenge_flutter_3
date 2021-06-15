import 'package:flutter/material.dart';

class NavProdiver extends ChangeNotifier {
  int _selectedMenuOpt = 0;
  Color _color = Color(0xffFA25B3);

  //funcion que crea las notificaciones
  List<BottomNavigationBarItem> getbotones() {
    final buttonSize = 28.0;

    return [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: buttonSize,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.label_rounded,
          size: buttonSize,
        ),
        label: "Shop",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          size: buttonSize,
        ),
        label: "Notify",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          size: buttonSize,
        ),
        label: "Notificaciones",
      ),
    ];
  }

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  //seteo de la pagina seleccionada
  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    notifyListeners();
  }

  Color get color {
    return this._color;
  }

  set setcolor(Color c) {
    this._color = c;
    notifyListeners();
  }
}
