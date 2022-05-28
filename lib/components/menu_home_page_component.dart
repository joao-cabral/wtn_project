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
            print('About');
            break;
        }
      },
      itemBuilder: (context) => [
        // const PopupMenuItem<_MenuOptions>(
        //   value: _MenuOptions.changeTheme,
        //   child: Text('Tema'),
        // ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.improvements,
          child: Text('Melhorias?'),
        ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.about,
          child: Text('Sobre'),
        ),
      ],
    );
  }
}
