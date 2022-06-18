import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  bool enableButton = false;
  bool validadeTextMessage = false;
  static const iconGithub = 'assets/github.png';

  Future<void> sendEmail(String bodyText) async {
    final Email email = Email(
      body: '(Assunto aqui)',
      subject: '[Coloque o assunto aqui]',
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

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
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
        title: Text(
          'Contatos',
          style: GoogleFonts.spaceMono(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  leading: const Icon(Icons.email_outlined),
                  title: Text(
                    'joaocabral1232@gmail.com',
                    style: GoogleFonts.spaceMono(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () async {
                    await sendEmail(messageController.text)
                        .then((value) => messageController.clear());
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.phone_android),
                  title: Text(
                    '+55 92 992689937',
                    style: GoogleFonts.spaceMono(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: const SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage(iconGithub),
                    ),
                  ),
                  title: Text(
                    'https://github.com/joao-cabral',
                    style: GoogleFonts.spaceMono(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () async {
                    await launchURL(
                        Uri.parse('https://github.com/joao-cabral'));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
