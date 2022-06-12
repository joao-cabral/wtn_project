import 'package:flutter/material.dart';

enum _MenuOptions {
  feedback,
  // changeTheme,
  about,
}

class MenuHomePageComponent extends StatelessWidget {
  const MenuHomePageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (value) async {
        switch (value) {
          // case _MenuOptions.changeTheme:
          //   print('changeTheme');
          //   break;
          case _MenuOptions.feedback:
            Navigator.pushNamed(context, 'feedback');
            break;
          case _MenuOptions.about:
            Navigator.pushNamed(context, 'about');
            break;
        }
      },
      icon: const Icon(
        Icons.more_vert_rounded,
        color: Colors.black,
      ),
      itemBuilder: (context) => [
        // const PopupMenuItem<_MenuOptions>(
        //   value: _MenuOptions.changeTheme,
        //   child: Text('Tema'),
        // ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.feedback,
          child: Text('Feedback'),
        ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.about,
          child: Text('Sobre'),
        ),
      ],
    );
  }
}
