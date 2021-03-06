import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:wtn_project/components/menu.dart';
import 'package:wtn_project/components/navigation_controls_component.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wtn_project/model/arguments_routes_model.dart';
import 'package:wtn_project/util/ad_helper_search_terms.dart';

class SearchTermView extends StatefulWidget {
  const SearchTermView({Key? key}) : super(key: key);

  @override
  State<SearchTermView> createState() => _SearchTermViewState();
}

class _SearchTermViewState extends State<SearchTermView> {
  // final resquesterController = ResquesterController();
  bool isLoading = true;
  BannerAd? ad;
  bool? isLoadingAd;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    ad = BannerAd(
      size: AdSize.banner,
      adUnitId: AdHelperSearchTerms.bannerAdUnitId,
      listener: BannerAdListener(onAdLoaded: (_) {
        setState(() {
          isLoadingAd = true;
        });
      }, onAdFailedToLoad: (_, error) {
        print("Ad failed to load: $error");
      }),
      request: const AdRequest(),
    );

    ad?.load();
    super.initState();
  }

  @override
  void dispose() {
    ad?.dispose();
    super.dispose();
  }

  Widget checkForAd() {
    if (isLoading) {
      return Container(
        child: AdWidget(
          ad: ad!,
        ),
        width: ad!.size.width.toDouble(),
        height: ad!.size.height.toDouble(),
        alignment: Alignment.center,
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments! as ArgumentsRoutesModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: arguments.color,
        title: Text(arguments.term!),
        actions: [
          NavigationControlsComponent(controller: _controller),
          Menu(controller: _controller),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: WebView(
              initialUrl: 'https://www.google.com/search?q=${arguments.term}',
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              onProgress: (int progress) {
                print('WebView is loading (progress : $progress%)');
              },
              javascriptChannels: <JavascriptChannel>{
                _toasterJavascriptChannel(context),
              },
              gestureNavigationEnabled: true,
            ),
          ),
          checkForAd(),
        ],
      ),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      },
    );
  }
}
