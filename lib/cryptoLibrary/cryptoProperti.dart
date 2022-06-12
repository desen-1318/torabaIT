import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

class CrytoData {
  static final getData = [
    {
      'nama': 'Bitcoin',
      'symbol': 'BTC',
      'icon': CryptoFontIcons.BTC,
      'iconColor': Colors.orange,
      'change': '+3.67%',
      'changeValue': '+202.835',
      'changeColor': Colors.green,
      'value': '\$12.279',
    },
    {
      'nama': 'Ethertnet',
      'symbol': 'ETH',
      'icon': CryptoFontIcons.ETH,
      'iconColor': Colors.purple,
      'change': '+3.67%',
      'changeValue': '+202.835',
      'changeColor': Colors.green,
      'value': '\$12.279',
    },
    {
      'nama': 'Aoura',
      'symbol': 'aur',
      'icon': CryptoFontIcons.AUR,
      'iconColor': Colors.blue[300],
      'change': '+3.67%',
      'changeValue': '+202.835',
      'changeColor': Colors.green,
      'value': '\$12.279',
    },
    {
      'nama': 'Aoura',
      'symbol': 'aur',
      'icon': CryptoFontIcons.ADC,
      'iconColor': Colors.redAccent,
      'change': '+3.67%',
      'changeValue': '+202.835',
      'changeColor': Colors.green,
      'value': '\$12.279',
    }
  ];
}
