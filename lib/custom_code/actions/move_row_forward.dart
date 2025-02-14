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

Future<List<ClicknoteSectionStruct>> moveRowForward(
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
  if (rowIndex < 0 || rowIndex >= rows.length - 1) {
    throw Exception("Row index out of range or already at the end of the list");
  }

  // Swap the row with the next row
  var currentRow = rows[rowIndex];
  var nextRow = rows[rowIndex + 1];

  // Update the row_index for both rows
  currentRow.rowIndex = rowIndex + 1;
  nextRow.rowIndex = rowIndex;

  // Swap the rows in the list
  rows[rowIndex] = nextRow;
  rows[rowIndex + 1] = currentRow;

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
