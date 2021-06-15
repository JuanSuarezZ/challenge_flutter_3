import 'package:challenge_flutter3/provider/NavProvider.dart';
import 'package:challenge_flutter3/utils/mytheme.dart';
import 'package:challenge_flutter3/utils/routes.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new NavProdiver()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/',
        routes: rutasGenerales(),
        theme: loadtheme(),
      ),
    );
  }
}
