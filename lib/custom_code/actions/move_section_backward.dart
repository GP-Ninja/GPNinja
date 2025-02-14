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

Future<List<ClicknoteSectionStruct>> moveSectionBackward(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
) async {
  // Validate input parameters
  if (sections == null || sectionIndex == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within a valid range
  if (sectionIndex <= 0 || sectionIndex >= sections.length) {
    throw Exception(
        "Section index out of range or already at the beginning of the list");
  }

  // Swap the current section with the previous one
  var currentSection = sections[sectionIndex];
  var previousSection = sections[sectionIndex - 1];

  // Update the sectionIndex for both sections
  currentSection.sectionIndex = sectionIndex - 1;
  previousSection.sectionIndex = sectionIndex;

  // Swap their positions in the list
  sections[sectionIndex] = previousSection;
  sections[sectionIndex - 1] = currentSection;

  // Return the updated sections list
  return sections;
}
