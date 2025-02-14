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

Future<List<ClicknoteSectionStruct>> deleteSection(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
) async {
  // Validate input parameters
  if (sections == null || sectionIndex == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  // Remove the section at the specified index
  sections.removeAt(sectionIndex);

  // Update the sectionIndex for the remaining sections
  for (int i = 0; i < sections.length; i++) {
    sections[i].sectionIndex = i;
  }

  // Return the updated sections list
  return sections;
}
