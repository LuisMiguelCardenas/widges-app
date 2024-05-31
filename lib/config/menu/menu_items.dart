import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
      required this.title,
      required this.subtitle,
      required this.link,
      required this.icon
      });
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones', 
    subtitle: 'Botones en flutter', 
    link: '/buttons' , 
    icon: Icons.smart_button_outlined
    ),

  MenuItem(
    title: 'Tarjetas', 
    subtitle: 'un contenedor estilizado', 
    link: '/cards' , 
    icon: Icons.credit_card
    )
];