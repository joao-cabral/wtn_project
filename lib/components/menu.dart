import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum _MenuOptions {
  navigationDelegate,
  refreshPage,
}

class Menu extends StatelessWidget {
  const Menu({required this.controller, Key? key}) : super(key: key);
  final Completer<WebViewController> controller;

  Future launchURL(Uri url) async {
    try {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: controller.future,
      builder: (context, controller) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (value) async {
            switch (value) {
              case _MenuOptions.navigationDelegate:
                controller.data!.currentUrl().then((url) {
                  launchURL(Uri.parse(url!));
                });
                break;
              case _MenuOptions.refreshPage:
                controller.data!.reload();
                break;
            }
          },
          itemBuilder: (context) => [
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.refreshPage,
              child: Text('Recarregar'),
            ),
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.navigationDelegate,
              child: Text('Abrir no Chrome'),
            ),
          ],
        );
      },
    );
  }
}
