import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtn_project/routes/routes.dart';
import 'package:share_plus/share_plus.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({Key? key}) : super(key: key);

  onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
      '''Estou usando "What's the news?"\nVenha conhecer voce tambem\n(Link:)''',
      subject: "subject",
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

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
        title: Text(
          "Deixar Feedback",
          style: GoogleFonts.spaceMono(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Adoraria saber como deixar o WTN melhor. Por favor, deixe um comentario na Google Play ou envie um email - Isso vai ser demais!",
              style: GoogleFonts.spaceMono(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.black),
            title: Text(
              "Escreva um comentario",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.email, color: Colors.black),
            title: Text(
              "Me contate por email",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onTap: () => Navigator.pushNamed(context, Routes.improvements),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              "Apoie mais :)",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.black),
            title: Text(
              "Compartilhe com os amigos",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onTap: () => onShare(context),
          ),
          ListTile(
            leading: const Icon(Icons.follow_the_signs, color: Colors.black),
            title: Text(
              "Me siga no Instagram",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onTap: () =>
                launchURL(Uri.parse("https://instagram.com/juao.cabral")),
          ),
          ListTile(
            leading: const Icon(Icons.follow_the_signs, color: Colors.black),
            title: Text(
              "Me siga no twitter",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onTap: () => launchURL(Uri.parse("https://twitter.com/devCjoao")),
          ),
        ],
      ),
    );
  }
}
