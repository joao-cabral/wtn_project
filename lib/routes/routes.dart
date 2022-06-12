import 'package:flutter/cupertino.dart';
import 'package:wtn_project/splash_screen.dart';
import 'package:wtn_project/views/home_view.dart';
import 'package:wtn_project/views/menu_views/about_view.dart';
import 'package:wtn_project/views/menu_views/feedback_view.dart';
import 'package:wtn_project/views/menu_views/improvements_view.dart';
import 'package:wtn_project/views/search_terms_view.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    'home': (_) => const HomeView(),
    'details': (_) => const SearchTermView(),
    'improvements': (_) => const ImprovementsView(),
    'about': (_) => const AboutView(),
    'feedback': (_) => const FeedbackView(),
    'splashscreen': (_) => const SecondClass(),
  };

  static const String splashscreen = 'splashscreen';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  // static const String splashscreen = '/';
  // static const String home = './home_view.dart';
  // static const String details = './views/searcTermsView.dart';
  // static const String improvements =
  //     './views/menu_views/improvements_view.dart';
  // static const String about = './views/menu_views/about_view.dart';
  // static const String feedback = './views/menu_views/feedback_view.dart';
}
