import 'package:flutter/material.dart';
import 'package:flutter_portafolio/screens/about_screen.dart';
import 'package:flutter_portafolio/screens/comments_screen.dart';
import 'package:flutter_portafolio/screens/hobbies_screen.dart';
import 'package:flutter_portafolio/screens/home_screen.dart';
import 'package:flutter_portafolio/screens/signature_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';
  static const String hobbies = '/hobbies';
  static const String comments = '/comments';
  static const String signature = '/signature';

  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
    about: (context) => const AboutScreen(),
    hobbies: (context) => const HobbiesScreen(),
    comments: (context) => const CommentsScreen(),
    signature: (context) => const SignatureScreen(),
  };
}
