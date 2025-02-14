// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';

import 'dart:js' as js;
import 'package:url_launcher/url_launcher.dart'; // Import for URL launcher

Future goToCanny() async {
  // Add your function code here!
  if (kIsWeb) {
    // Use Flutter's JS interop for web
    js.context.callMethod(
        'eval', ["window.location.href = 'https://gp-ninja.canny.io';"]);
  } else {
    // For mobile or desktop apps, use the url_launcher package
    final url = 'https://gp-ninja.canny.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }
}
