import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/routes/routes.dart';
import 'package:wtn_project/util/notifications_service.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    checkNotifications();
  }

  checkNotifications() async {
    // await Provider.of<NotificationService>(context, listen: false)
    //     .checkForNotifications();

    Provider.of<NotificationService>(context, listen: false)
        .showNotificationScheduled(
      CustomNotification(
        id: 1,
        title: 'Venha saber as noticias',
        body: 'Acesse o app para ver as noticias mais pesquisadas no Google!',
        payload: 'home',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'What\'s the news?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.list,
      initialRoute: Routes.splashscreen,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
