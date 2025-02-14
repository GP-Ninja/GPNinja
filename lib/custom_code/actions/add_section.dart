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

Future<List<ClicknoteSectionStruct>> addSection(
  List<ClicknoteSectionStruct>? sections,
  String? newSectionText,
) async {
  // Validate input parameters
  if (sections == null || newSectionText == null || newSectionText.isEmpty) {
    throw Exception("Invalid input parameters");
  }

  // Create a new section
  var newSection = ClicknoteSectionStruct(
    sectionIndex: sections.length, // Set the index to the end of the list
    sectionText: newSectionText,
    sectionRows: [], // Initialize with an empty list of rows
  );

  // Add the new section to the list
  sections.add(newSection);

  // Return the updated sections list
  return sections;
}
