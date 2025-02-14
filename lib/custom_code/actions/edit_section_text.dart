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

Future<List<ClicknoteSectionStruct>> editSectionText(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  String? newSectionText,
) async {
  // Validate input parameters
  if (sections == null ||
      sectionIndex == null ||
      newSectionText == null ||
      newSectionText.isEmpty) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  // Access the section to be updated
  var section = sections[sectionIndex];

  // Update the section text
  section.sectionText = newSectionText;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
