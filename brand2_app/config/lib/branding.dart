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
  static String appName = 'Brand 2';

  static IconData menuIcon(MenuName name) {
    final Map<MenuName, IconData> appMenuItemsIcons = {
      MenuName.counter: Icons.add_circle_outline_outlined,
      MenuName.buttons: Icons.smart_button_outlined,
      MenuName.cards: Icons.credit_card_off_outlined,
      MenuName.progress: Icons.refresh_outlined,
      MenuName.dialogs: Icons.info_outline_rounded,
      MenuName.animations: Icons.check_box_outline_blank_outlined,
      MenuName.controls: Icons.car_rental_outlined,
      MenuName.tutorial: Icons.accessible_outlined,
      MenuName.scroll: Icons.list_alt_outlined,
      MenuName.theme: Icons.color_lens_outlined
    };
    return appMenuItemsIcons[name] ?? Icons.error;
  }

  static const int themeSelectedColor = 2;

  static const bool isDarkMode = true;

  static String fontFamily = 'Anta';
}
