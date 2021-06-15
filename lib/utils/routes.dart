import 'package:challenge_flutter3/pages/HomePage.dart';
import 'package:challenge_flutter3/pages/NotificacionesPage.dart';
import 'package:challenge_flutter3/pages/PageBody.dart';
import 'package:challenge_flutter3/pages/ShoPage.dart';
import 'package:challenge_flutter3/pages/UsuarioPage.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rutasGenerales() {
  return {
    '/': (context) => PageBody(),
    'home': (context) => HomePage(),
    'notificaciones': (context) => NotificacionesPage(),
    'shop': (context) => ShoPage(),
    'usuario': (context) => UsuarioPage(),
  };
}
