import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Sobre",
          style: GoogleFonts.spaceMono(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "O",
                      style: GoogleFonts.spaceMono(
                        height: 1,
                        fontSize: 80,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        "Adenilso tem como objetivo ser uma versão mobile do ",
                        style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: "site da Google chamado ",
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Hot Searches - Google Trends.",
                      style: GoogleFonts.spaceMono(
                        backgroundColor: Colors.grey.withOpacity(0.3),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: " Você  pode visitar o site oficial nesse link: ",
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Google Trends",
                      style: GoogleFonts.spaceMono(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          await launchURL(Uri.parse(
                              "https://trends.google.com/trends/hottrends/visualize"));
                        },
                    ),
                    TextSpan(
                      text: "\n\n",
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          "No app você visualiza as notícias mais pesquisadas no Google, com a opção de filtrar por país. Fique por dentro das notícias :)",
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "\n\n",
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          '''Curiosidade sobre o nome "Adenilso": Inicialmente era para se chamar "Whats The News", porém a vontade de fazer um trocadilho é maior''',
                      style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
