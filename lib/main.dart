import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:publicpmr_app/routes.dart';

import 'providers/auth.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        )
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PublicPMR',
          theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF333333)),
          initialRoute: '/',
          routes: routes,
        ),
      ),
    );
  }
}




