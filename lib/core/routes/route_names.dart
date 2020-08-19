
import 'package:flutter/material.dart';
import 'package:todly/ui/view/bottom_nav.dart';
import 'package:todly/ui/view/create/create.dart';
import 'package:todly/ui/view/homepage/home.dart';
import 'package:todly/ui/view/lists/lists.dart';
import 'package:todly/ui/view/login/login.dart';
import 'package:todly/ui/view/onboarding/onboarding.dart';
import 'package:todly/ui/view/signup/signup.dart';
import 'package:todly/ui/view/singlelist/singlelist.dart';
import 'package:todly/ui/view/singlelist/singlelist_personal.dart';
import 'package:todly/ui/view/singlelist/singlelist_work.dart';
import 'package:todly/ui/view/splashscreen/splashscreen.dart';

class RouteNames {
  ///Route names used through out the app will be specified as static constants here in this format
  static const String home = '/home';
  static const String splashScreen = '/splashscreen';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
    static const String bottomBar = '/bottomBar';
    static const String create = '/create';
    static const String single = '/single';
    static const String single_work = '/single_work';
    static const String single_pers = '/single_pers';
    static const String list = '/list';



  static Map<String, Widget Function(BuildContext)> routes = {
    RouteNames.splashScreen: (context) => SplashScreen(),
    RouteNames.onboarding: (context) => Onboarding(),
    RouteNames.login: (context) => LoginScreen(),
    RouteNames.signup: (context) => SignUpScreen(),
     RouteNames.bottomBar: (context) => MyHomePage(),
     RouteNames.create: (context) => CreateScreen(),
     RouteNames.single: (context) => SingleList(),
    RouteNames.home: (context) => HomeScreen(),
    RouteNames.list: (context) => ListScreen(),
    RouteNames.single_work: (context) => SingleListWork(),
    RouteNames.single_pers: (context) => SingleListPers(),
   //  RouteNames.bottomBar: (context) => MyHomePage(),
    // RouteNames.homepage: (context) => HomeScreen()

  };
}
