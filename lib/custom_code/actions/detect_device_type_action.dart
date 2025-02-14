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
  bool isIpad = false;

  // Only do user-agent/platform checks when running on the web
  if (kIsWeb) {
    final userAgent = html.window.navigator.userAgent.toLowerCase();
    final platform = (html.window.navigator.platform ?? '').toLowerCase();
    final maxTouchPoints = html.window.navigator.maxTouchPoints ?? 0;

    // Typical iPad identification
    if (userAgent.contains('ipad')) {
      isIpad = true;
    }
    // Some iPads might expose the platform as 'iPad'
    else if (platform.contains('ipad')) {
      isIpad = true;
    }
    // iPadOS 13+ in Desktop Mode often appears as 'Macintosh' but has multi-touch
    else if (userAgent.contains('macintosh') && maxTouchPoints > 1) {
      isIpad = true;
    }
  }

  return isIpad;
}

// DO NOT REMOVE OR MODIFY THE CODE BELOW!
