import 'package:dating_app/screens/recommendation_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en','US'),
      Locale('en','NP')
    ],
    path: 'assets/translations',
    saveLocale: true,
    fallbackLocale: Locale('en','US'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: RecommendationScreen(),
    );
  }
}
