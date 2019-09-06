import 'package:components/src/pages/activities/alert_page.dart';
import 'package:components/src/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en','US'), // English
        const Locale('es','ES'), // Spanish
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.deepPurpleAccent),
          accentColor: Colors.amberAccent),
      title: 'Componentes',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
