import 'dart:developer';

import 'package:flutter/material.dart';

extension OnContext on BuildContext {
  toNamed<T extends Object?>({required String route, Object? arguments}) {
    try {
      return Navigator.pushNamed<T>(this, route, arguments: arguments);
    } catch (e) {
      log('message : $e');
    }
  }

  to<T extends Object?>({required Widget child, Object? arguments}) {
    try {
      return Navigator.push<T>(this, MaterialPageRoute(builder: (_) => child));
    } catch (e) {
      log('message : $e');
    }
  }

  removeToNamed<T extends Object?>({required String route, Object? arguments}) {
    try {
      return Navigator.pushNamedAndRemoveUntil(this, route, (route) => false,
          arguments: arguments);
    } catch (e) {
      log('message : $e');
    }
  }

  void close<T extends Object?>([T? result]) => Navigator.pop<T>(this, result);
}
