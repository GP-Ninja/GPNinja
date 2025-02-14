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

// For user-agent detection in a web environment:
import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

Future<bool> detectDeviceTypeAction() async {
  // Returns true if running on web and user agent contains "ipad"
  bool isIpad = false;

  if (kIsWeb) {
    final userAgent = html.window.navigator.userAgent.toLowerCase();
    isIpad = userAgent.contains('ipad');
  }

  return isIpad;
}

// DO NOT REMOVE OR MODIFY THE CODE BELOW!
