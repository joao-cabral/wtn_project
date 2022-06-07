import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:wtn_project/components/menu_home_page_component.dart';
import 'package:wtn_project/components/custom_dropdown_component.dart';
import 'package:wtn_project/controllers/terms_controller.dart';
import 'package:wtn_project/model/arguments_routes_model.dart';
import 'package:wtn_project/routes/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLoading = true;
  bool? isLoadingAd;
  final random = Random();
  String valueDropdown = 'brazil';

  static const icon = 'assets/icon2.png';
  BannerAd? ad;

  @override
  void initState() {
    Provider.of<TermsController>(context, listen: false);

    // ad = BannerAd(
    //   size: AdSize.banner,
    //   adUnitId: AdHelper.bannerAdUnitId,
    //   listener: BannerAdListener(onAdLoaded: (_) {
    //     setState(() {
    //       isLoadingAd = true;
    //     });
    //   }, onAdFailedToLoad: (_, error) {
    //     print("Ad failed to load: $error");
    //   }),
    //   request: const AdRequest(),
    // );

    // ad?.load();

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
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white70.withOpacity(0.9),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: w * 0.3,
            backgroundColor: Colors.white,
            // leading: const SizedBox(
            //   height: 60,
            //   width: 60,
            //   child: Image(
            //     image: AssetImage(icon),
            //   ),
            // ),
            leading: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.auto_stories_outlined,
                color: Colors.black,
                size: 35,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //TODO: Change to a banner ad
              //Fix the return home after sending email
              //Change design page improvements
              title:
                  Consumer<TermsController>(builder: (context, controller, _) {
                return Text(controller.valueDropdown!,
                    style: GoogleFonts.rozhaOne(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ));
              }),
              centerTitle: true,
            ),
            actions: const [
              MenuHomePageComponent(),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Transform.translate(
                offset: const Offset(0, 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      // CustomDropdownComponent(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Top pesquisas',
                          style: GoogleFonts.spaceMono(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const CustomDropdownComponent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Consumer<TermsController>(
                  builder: (context, controller, _) {
                    final terms = controller.termsCountry;

                    if (terms.isEmpty) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return Column(
                      children: [
                        AnimationLimiter(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.termsCountry.length,
                            itemBuilder: (context, index) {
                              final colorAvatar = Colors.primaries[
                                  random.nextInt(Colors.primaries.length)];
                              return AnimationConfiguration.staggeredList(
                                position: index,
                                delay: const Duration(milliseconds: 100),
                                child: SlideAnimation(
                                  duration: const Duration(milliseconds: 2500),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  child: FadeInAnimation(
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    duration:
                                        const Duration(milliseconds: 2500),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0),
                                      child: Card(
                                        child: ListTile(
                                          leading: ClipOval(
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              color: colorAvatar,
                                              child: Center(
                                                child: Text(
                                                  (index + 1).toString(),
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                              controller.termsCountry[index]),
                                          onTap: () {
                                            Navigator.pushNamed(
                                              context,
                                              Routes.details,
                                              arguments: ArgumentsRoutesModel(
                                                term: controller
                                                    .termsCountry[index],
                                                color: colorAvatar,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        // checkForAd(),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
