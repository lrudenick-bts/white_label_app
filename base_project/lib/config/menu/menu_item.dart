import 'package:config/branding.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
  
}

var appMenuItems = <MenuItem>[
  MenuItem(
    title: "Riverpod Counter", 
    subTitle: "Riverpod introduction", 
    link: '/counter-river', 
    icon: Branding.menuIcon(MenuName.counter)
  ),
  MenuItem(
    title: "Buttons", 
    subTitle: "Several buttons in Flutter", 
    link: '/buttons', 
    icon: Branding.menuIcon(MenuName.buttons)
  ),
  MenuItem(
    title: "Cards", 
    subTitle: "A stylized container", 
    link: '/cards', 
    icon: Branding.menuIcon(MenuName.cards)
  ),
  MenuItem(
    title: "Progress Indicators", 
    subTitle: "General and controlled", 
    link: '/progress', 
    icon: Branding.menuIcon(MenuName.progress)
  ),
  MenuItem(
    title: "Snackbars & dialogs", 
    subTitle: "Screen indicators", 
    link: '/snackbars', 
    icon: Branding.menuIcon(MenuName.dialogs)
  ),
  MenuItem(
    title: "Animations", 
    subTitle: "Animated stateful widget", 
    link: '/animated', 
    icon: Branding.menuIcon(MenuName.animations)
  ),
  MenuItem(
    title: "UI Controls + Tiles", 
    subTitle: "Several Flutter's controls", 
    link: '/ui-controls', 
    icon: Branding.menuIcon(MenuName.controls)
  ),
  MenuItem(
    title: "App tutorial", 
    subTitle: "Little app tutorial", 
    link: '/tutorial', 
    icon: Branding.menuIcon(MenuName.tutorial)
  ),
  MenuItem(
    title: "Infinite Scroll & Pull", 
    subTitle: "Infinite scroll and pull to refresh", 
    link: '/infinite', 
    icon: Branding.menuIcon(MenuName.scroll)
  ),
  MenuItem(
    title: "Theme changer", 
    subTitle: "Change app's theme", 
    link: '/theme-changer', 
    icon: Branding.menuIcon(MenuName.theme)
  )
];