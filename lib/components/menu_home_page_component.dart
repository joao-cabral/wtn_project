import 'package:flutter/material.dart';
import 'package:wtn_project/routes/routes.dart';

enum _MenuOptions {
  improvements,
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
          case _MenuOptions.improvements:
            Navigator.pushNamed(context, Routes.improvements);
            break;
          case _MenuOptions.about:
            Navigator.pushNamed(context, Routes.about);
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
          value: _MenuOptions.improvements,
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
