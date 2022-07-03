import 'package:flutter/foundation.dart';

// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m
const int _kRedColor = 31;
const int _kGreenColor = 32;
const int _kYellowColor = 33;
const int _kBlueColor = 34;
const int _kMagentaColor = 35;
const int _kWhiteaColor = 37;
enum DebugColor {
  red,
  green,
  yellow,
  white,
  blue,
  magenta,
}

int _mapColorToInt(DebugColor color) {
  switch (color) {
    case DebugColor.red:
      return _kRedColor;
    case DebugColor.green:
      return _kGreenColor;
    case DebugColor.yellow:
      return _kYellowColor;
    case DebugColor.white:
      return _kWhiteaColor;
    case DebugColor.blue:
      return _kBlueColor;
    case DebugColor.magenta:
      return _kMagentaColor;
  }
}

abstract class EMansuerLogger {
  const EMansuerLogger._();

  static String _titleColor(
          {required String topic,
          required DebugColor color,
          required String message}) =>
      "\x1B[${_mapColorToInt(color)}m$topic: $message\x1B[0m";

  static void b(
          {String title = "Bug",
          DebugColor color = DebugColor.green,
          required String message,
          String decorater = '🐛'}) =>
      debugPrint(
          "$decorater ${_titleColor(topic: title, color: color, message: message)} $decorater");

  static void w(
          {String title = "Danger",
          required String message,
          DebugColor color = DebugColor.yellow,
          String decorater = '🧨'}) =>
      debugPrint(
          "$decorater ${_titleColor(topic: title, color: color, message: message)} $decorater");

  static void i(
          {String title = "Info",
          DebugColor color = DebugColor.white,
          required String message,
          String decorater = '👀'}) =>
      debugPrint(
          "$decorater ${_titleColor(topic: title, color: color, message: message)} $decorater");

  static void d(
          {String title = "Error",
          DebugColor color = DebugColor.red,
          required String message,
          String decorater = '💣'}) =>
      debugPrint(
          "$decorater ${_titleColor(topic: title, color: color, message: message)} $decorater");
}
