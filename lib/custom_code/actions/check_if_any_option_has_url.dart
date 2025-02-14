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

Future<bool> checkIfAnyOptionHasUrl(
  List<ClicknoteSectionStruct>? sections,
) async {
  // If sections is null or empty, return false immediately.
  if (sections == null || sections.isEmpty) {
    return false;
  }

  // Use Dart's 'any' method to quickly check if any optionHasUrl is true.
  // This will return true as soon as it finds one match.
  return sections.any((section) {
    final rows = section.sectionRows ?? [];
    return rows.any((row) {
      final options = row.rowOptions ?? [];
      return options.any((option) => option.optionHasUrl == true);
    });
  });
}
