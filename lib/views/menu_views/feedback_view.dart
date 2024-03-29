import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({Key? key}) : super(key: key);
  static const iconInstagram = "assets/instagram.png";
  static const iconTwitter = "assets/twitter.png";

  onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
      '''Estou usando "What's the news?"\nVenha conhecer você tambem\nhttps://play.google.com/store/apps/details?id=br.com.adenilso.wtn''',
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

  Future<void> sendEmail(BuildContext context) async {
    final Email email = Email(
      body: '(Escreva aqui)',
      subject: '[WTN]',
      recipients: ['joaocabral1232@gmail.com'],
      isHTML: false,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'Obrigado por nos ajudar!';
    } catch (error) {
      platformResponse = error.toString();
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
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
            padding: const EdgeInsets.only(left: 14.0, right: 50, top: 14.0),
            child: Text(
              "Adoraria saber como deixar o Adenilso melhor. Por favor, deixe um comentário na Google Play ou envie um email - Isso vai ser sensacional!",
              style: GoogleFonts.spaceMono(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.black),
            title: Text(
              "Escreva um comentário e deixa sua avaliação",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () => LaunchReview.launch(
                androidAppId: 'br.com.wtn_project.adenilso'),
          ),
          ListTile(
            leading: const Icon(Icons.email, color: Colors.black),
            title: Text(
              "Me contate por email",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () => Navigator.pushNamed(context, 'improvements'),
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.black),
            title: Text(
              "Compartilhe com os amigos",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () => onShare(context),
          ),
          ListTile(
            leading: const SizedBox(
              height: 30,
              width: 30,
              child: Image(
                image: AssetImage(iconInstagram),
              ),
            ),
            title: Text(
              "Me siga no Instagram",
              style: GoogleFonts.spaceMono(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 18,
            ),
            onTap: () =>
                launchURL(Uri.parse("https://instagram.com/juao.cabral")),
          ),
        ],
      ),
    );
  }
}
