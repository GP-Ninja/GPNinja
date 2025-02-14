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

import 'dart:async'; // For Timer
import 'dart:html' as html; // For web clipboard handling

Future<void> copyToClipboardThenClear(String? textBeingCopied) async {
  if (textBeingCopied == null || textBeingCopied.isEmpty) return;

  try {
    final clipboard = html.window.navigator.clipboard;
    if (clipboard != null) {
      // Copy text to clipboard
      await clipboard.writeText(textBeingCopied);
      print('Text copied to clipboard.');

      // Schedule the clipboard clearing after 5 seconds
      Timer(Duration(seconds: 5), () async {
        try {
          // Check if the document is visible (focused) before clearing the clipboard
          if (html.document.visibilityState == 'visible') {
            await clipboard.writeText(''); // Clear the clipboard
            print('Clipboard cleared.');
          } else {
            print('Document not visible. Skipping clipboard clear.');
          }
        } catch (e) {
          print('Failed to clear clipboard: $e');
        }
      });
    } else {
      print('Clipboard API is not available in this browser.');
    }
  } catch (e) {
    print('An error occurred during clipboard operations: $e');
  }
}
