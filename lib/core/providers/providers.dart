import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todly/ui/view/splashscreen/splashscreen.dart';

class AmProviders {
  //The providers for dependency injection and state management are to added here
  //as the app will use MultiProvider
  static final providers = <SingleChildWidget>[
    //format for registering providers:
   // ChangeNotifierProvider(create: (_) => SplashScreen()),
  ];
}
