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

Future<List<ClicknoteSectionStruct>> moveOptionForward(
  List<ClicknoteSectionStruct>? sections,
  int? subjectOptionIndex,
  int? rowIndex,
  int? sectionIndex,
) async {
  // Validate input parameters
  if (sections == null ||
      subjectOptionIndex == null ||
      rowIndex == null ||
      sectionIndex == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure the sectionIndex, rowIndex, and subjectOptionIndex are within valid ranges
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
  if (subjectOptionIndex < 0 || subjectOptionIndex >= options.length - 1) {
    throw Exception(
        "Option index out of range or already at the end of the list");
  }

  // Swap the option with the next option
  var currentOption = options[subjectOptionIndex];
  var nextOption = options[subjectOptionIndex + 1];

  // Update the option_index for both options
  currentOption.optionIndex = subjectOptionIndex + 1;
  nextOption.optionIndex = subjectOptionIndex;

  // Swap the options in the list
  options[subjectOptionIndex] = nextOption;
  options[subjectOptionIndex + 1] = currentOption;

  // Update the row with the modified options
  row.rowOptions = options;

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
