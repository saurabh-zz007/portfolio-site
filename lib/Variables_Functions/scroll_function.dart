import 'package:flutter/material.dart';

void scrollToProjectsPosition(GlobalKey myKey) {
  final context = myKey.currentContext;
  WidgetsBinding.instance.addPostFrameCallback((
    _,
  ) {
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  });
}
