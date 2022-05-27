import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/controllers/terms_controller.dart';
import 'package:wtn_project/repository/terms_repository.dart';
import 'package:wtn_project/routes/routes.dart';
import 'package:wtn_project/splash_screen.dart';
import 'package:wtn_project/views/search_terms_view.dart';
import 'package:wtn_project/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TermsRepository>(
          create: (context) => TermsRepository(),
        ),
        ChangeNotifierProvider<TermsController>(
          create: (context) => TermsController(
            termsRepository: context.read<TermsRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'What\'s the news?',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Routes.splashscreen: (context) => const SecondClass(),
          Routes.home: (_) => const HomeView(),
          Routes.details: (_) => const SearchTermView(),
        },
      ),
    );
  }
}
