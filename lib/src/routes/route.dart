import 'package:components/src/pages/activities/alert_page.dart';
import 'package:components/src/pages/activities/animated_container.dart';
import 'package:components/src/pages/activities/avatars_page.dart';
import 'package:components/src/pages/activities/cupertino_scaffold_page.dart';
import 'package:components/src/pages/activities/inputs_page.dart';
import 'package:components/src/pages/card_pages.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'AnimatedContainer': (BuildContext context) =>AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'scaffold': (BuildContext context) => CupertinoPage(),

  };
}
