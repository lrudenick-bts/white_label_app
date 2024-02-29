import 'package:flutter/material.dart';

enum MenuName {
  counter,
  buttons,
  cards,
  progress,
  dialogs,
  animations,
  controls,
  tutorial,
  scroll,
  theme
}

class Branding {
  static String appName = '{{ cookiecutter.project_name }}';

  static IconData menuIcon(MenuName name) {
    final Map<MenuName, IconData> appMenuItemsIcons = {
      MenuName.counter: Icons.add_circle_sharp,
      MenuName.buttons: Icons.smart_button_sharp,
      MenuName.cards: Icons.credit_card_sharp,
      MenuName.progress: Icons.refresh_sharp,
      MenuName.dialogs: Icons.info_sharp,
      MenuName.animations: Icons.check_box_outline_blank_sharp,
      MenuName.controls: Icons.car_rental_sharp,
      MenuName.tutorial: Icons.accessible_sharp,
      MenuName.scroll: Icons.list_alt_sharp,
      MenuName.theme: Icons.color_lens_sharp
    };
    return appMenuItemsIcons[name] ?? Icons.error;
  }

  static const int themeSelectedColor = 4;

  static const bool isDarkMode = {{ cookiecutter.use_dark_mode }};

  static String fontFamily = 'Oswald';
}
