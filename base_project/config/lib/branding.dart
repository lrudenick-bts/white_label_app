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
  static String appName = 'Base project app';

  static IconData menuIcon(MenuName name) {
    final Map<MenuName, IconData> appMenuItemsIcons = {
      MenuName.counter: Icons.add_circle_outline_rounded,
      MenuName.buttons: Icons.smart_button_outlined,
      MenuName.cards: Icons.credit_card,
      MenuName.progress: Icons.refresh_rounded,
      MenuName.dialogs: Icons.info_outline,
      MenuName.animations: Icons.check_box_outline_blank_rounded,
      MenuName.controls: Icons.car_rental_outlined,
      MenuName.tutorial: Icons.accessible_rounded,
      MenuName.scroll: Icons.list_alt_rounded,
      MenuName.theme: Icons.color_lens_outlined
    };
    return appMenuItemsIcons[name] ?? Icons.error;
  }

  static const int themeSelectedColor = 0;

  static const bool isDarkMode = false;

  static String? fontFamily = 'KodeMono';
}
