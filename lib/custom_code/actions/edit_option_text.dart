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

Future<List<ClicknoteSectionStruct>> editOptionText(
  List<ClicknoteSectionStruct>? sections,
  int? optionIndex,
  int? rowIndex,
  int? sectionIndex,
  String? newOptionText,
) async {
  // Validate input parameters
  if (sections == null ||
      optionIndex == null ||
      rowIndex == null ||
      sectionIndex == null ||
      newOptionText == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure the sectionIndex, rowIndex, and optionIndex are within valid ranges
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  var section = sections[sectionIndex];
  var rows = section.sectionRows ?? [];
  if (rowIndex < 0 || rowIndex >= rows.length) {
    throw Exception("Row index out of range");
  }

  var row = rows[rowIndex];
  var options = row.rowOptions ?? [];
  if (optionIndex < 0 || optionIndex >= options.length) {
    throw Exception("Option index out of range");
  }

  // Update the option's text
  var option = options[optionIndex];
  option.optionText = newOptionText;

  // Update the row with the modified options
  row.rowOptions = options;

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
