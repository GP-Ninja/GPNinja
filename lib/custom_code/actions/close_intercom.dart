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

import 'dart:js' as js; // Import Dart JS interop for JavaScript calls

Future closeIntercom() async {
  // Calls the Intercom.hide() JavaScript method to close the Intercom Messenger
  try {
    js.context.callMethod('Intercom', ['hide']);
  } catch (e) {
    // Handle any errors here
    debugPrint('Error closing Intercom: $e');
  }
}
