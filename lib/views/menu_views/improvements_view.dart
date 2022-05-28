import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wtn_project/routes/routes.dart';

class ImprovementsView extends StatefulWidget {
  const ImprovementsView({Key? key}) : super(key: key);

  @override
  State<ImprovementsView> createState() => _ImprovementsViewState();
}

class _ImprovementsViewState extends State<ImprovementsView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  bool enableButton = false;
  bool validateTextEmail = false;
  bool validadeTextSubject = false;
  bool validadeTextMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diga lá'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(193, 193, 193, 0.3),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 8.0, top: 6.0, bottom: 6.0),
                    child: TextField(
                      controller: messageController,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff403131),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mensagem',
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff403131),
                        ),
                        errorText: validadeTextMessage ? 'Campo vazio' : null,
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      minLines: 1,
                      autofocus: false,
                      onTap: () {
                        setState(() {
                          validadeTextMessage = false;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.blue,
                  width: double.maxFinite,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                      primary: Colors.white,
                    ),
                    child: Text(
                      'Enviar',
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () async {
                      if (messageController.text.isNotEmpty) {
                        await FlutterEmailSender.send(Email(
                          body: messageController.text,
                          subject: '[WTN]',
                          recipients: ['joaocabral1232@gmail.com'],
                          isHTML: false,
                        ));
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(
                            Routes.home,
                          ),
                        );
                        print('Valiado');
                      } else {
                        setState(
                          () {
                            validadeTextMessage = true;
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
