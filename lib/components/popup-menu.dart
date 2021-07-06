import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rille/providers/theme.dart';
import 'package:rille/utils/constants.dart';

class PopUpMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _PopUpMenuWidget();
}

class _PopUpMenuWidget extends StatelessWidget {
  late final ThemeProvider _provider;
  void onSelected(String choice) {
    switch (choice) {
      case lightTheme:
        isDarkMode = false;
        break;
      case darkTheme:
        isDarkMode = true;
        break;
    }
    _provider.changeTheme(isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    _provider = Provider.of<ThemeProvider>(context);
    return PopupMenuButton(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return menuList.map(
          (e) {
            return PopupMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList();
      },
    );
  }
}
