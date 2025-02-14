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

Future<List<ClicknoteSectionStruct>> editOptionUrl(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  int? rowIndex,
  int? optionIndex,
  String? optionUrl,
) async {
  // Validate input parameters
  if (sections == null ||
      sectionIndex == null ||
      rowIndex == null ||
      optionIndex == null ||
      optionUrl == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  // Access the target section
  var section = sections[sectionIndex];
  var rows = section.sectionRows ?? [];

  // Ensure rowIndex is within valid range
  if (rowIndex < 0 || rowIndex >= rows.length) {
    throw Exception("Row index out of range");
  }

  // Access the target row
  var row = rows[rowIndex];
  var options = row.rowOptions ?? [];

  // Ensure optionIndex is within valid range
  if (optionIndex < 0 || optionIndex >= options.length) {
    throw Exception("Option index out of range");
  }

  // Access the target option
  var option = options[optionIndex];

  // Update the option_url field
  option.optionUrl = optionUrl;

  // Update the options list
  options[optionIndex] = option;

  // Update the row with the modified options
  row.rowOptions = options;

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
