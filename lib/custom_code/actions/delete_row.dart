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

Future<List<ClicknoteSectionStruct>> deleteRow(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  int? rowIndex,
) async {
  // Validate input parameters
  if (sections == null || sectionIndex == null || rowIndex == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex and rowIndex are within valid ranges
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  var section = sections[sectionIndex];
  var rows = section.sectionRows ?? [];
  if (rowIndex < 0 || rowIndex >= rows.length) {
    throw Exception("Row index out of range");
  }

  // Remove the row
  rows.removeAt(rowIndex);

  // Update the rowIndex for the remaining rows
  for (int i = 0; i < rows.length; i++) {
    rows[i].rowIndex = i;
  }

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
