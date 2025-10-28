import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(final String url) async {
  final Uri uri = Uri.parse(url);
  try {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
      webOnlyWindowName: '_blank',
    );
  } catch (e) {
    debugPrint('An error occured');
  }
}
