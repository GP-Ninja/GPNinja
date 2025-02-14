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

Future<List<ClicknoteSectionStruct>> editOptionUrlPrompt(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  int? rowIndex,
  int? optionIndex,
  String? urlPrompt,
) async {
  // 1. Validate input parameters
  if (sections == null ||
      sectionIndex == null ||
      rowIndex == null ||
      optionIndex == null ||
      urlPrompt == null) {
    throw Exception("Invalid input parameters");
  }

  // 2. Ensure sectionIndex is within valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  // 3. Access the target section
  final section = sections[sectionIndex];
  final rows = section.sectionRows ?? [];

  // 4. Ensure rowIndex is within valid range
  if (rowIndex < 0 || rowIndex >= rows.length) {
    throw Exception("Row index out of range");
  }

  // 5. Access the target row
  final row = rows[rowIndex];
  final options = row.rowOptions ?? [];

  // 6. Ensure optionIndex is within valid range
  if (optionIndex < 0 || optionIndex >= options.length) {
    throw Exception("Option index out of range");
  }

  // 7. Access the target option
  final option = options[optionIndex];

  // 8. Update the 'url_prompt' field (Make sure your ClicknoteOptionStruct has 'String? url_prompt;')
  option.urlPrompt = urlPrompt;

  // 9. Update the option in the options list
  options[optionIndex] = option;

  // 10. Update the row with the modified options
  row.rowOptions = options;

  // 11. Update the section with the modified rows
  section.sectionRows = rows;

  // 12. Update the sections list
  sections[sectionIndex] = section;

  // 13. Return the updated sections list
  return sections;
}
