import 'package:flutter/material.dart';
import 'package:islamii_app/providers/my_provider.dart';
import 'package:islamii_app/splash_screen.dart';
import 'package:islamii_app/tabs/hadeth/hadeth_details.dart';
import 'package:islamii_app/tabs/quran/sura_details.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';
import 'my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.locale),
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.theme,
      //themeMode: ThemeMode.dark,

      initialRoute: splash_screen.routeName,
      routes: {
        splash_screen.routeName: (context) => splash_screen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
    );
  }
}
