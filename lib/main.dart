import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/controllers/terms_controller.dart';
import 'package:wtn_project/repository/terms_repository.dart';
import 'package:wtn_project/util/notifications_service.dart';
import 'package:wtn_project/views/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
    MultiProvider(
      providers: [
        Provider<NotificationService>(
          create: (context) => NotificationService(),
        ),
        Provider<TermsRepository>(
          create: (context) => TermsRepository(),
        ),
        ChangeNotifierProvider<TermsController>(
          create: (context) => TermsController(
            termsRepository: context.read<TermsRepository>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
