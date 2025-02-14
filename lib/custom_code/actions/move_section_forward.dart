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

Future<List<ClicknoteSectionStruct>> moveSectionForward(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
) async {
  // Validate input parameters
  if (sections == null || sectionIndex == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within a valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length - 1) {
    throw Exception(
        "Section index out of range or already at the end of the list");
  }

  // Swap the current section with the next one
  var currentSection = sections[sectionIndex];
  var nextSection = sections[sectionIndex + 1];

  // Update the sectionIndex for both sections
  currentSection.sectionIndex = sectionIndex + 1;
  nextSection.sectionIndex = sectionIndex;

  // Swap their positions in the list
  sections[sectionIndex] = nextSection;
  sections[sectionIndex + 1] = currentSection;

  // Return the updated sections list
  return sections;
}
