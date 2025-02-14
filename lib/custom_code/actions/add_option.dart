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

// Utility function to convert a hex color string to a Color object
Color hexToColor(String hexCode) {
  final hex = hexCode.replaceAll('#', ''); // Remove the '#' if present
  return Color(int.parse('FF$hex', radix: 16)); // Add 'FF' for full opacity
}

Future<List<ClicknoteSectionStruct>> addOption(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  int? rowIndex,
  String? newOptionText,
) async {
  // Validate input parameters
  if (sections == null ||
      sectionIndex == null ||
      rowIndex == null ||
      newOptionText == null) {
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

  // Retrieve the row and its options
  var row = rows[rowIndex];
  var options = row.rowOptions ?? [];

  // Create a new option
  var newOption = ClicknoteOptionStruct(
    optionIndex: options.length, // Set index to the end of the list
    optionText: newOptionText,
    optionHasUrl: false,
    optionUrl: "",
    urlOptions: [],
    urlPrompt: "",
    isMedication: false,
    bnfUrl: "",
    bnfcUrl: "",
    optionIsRedFlag: false,
    optionHasNote: false,
    optionNote: "",
    optionNoteColour:
        hexToColor("#FFFFFF"), // Use the utility to convert to Color
    urlIsWebview: false,
    trafficLightRed: false,
    trafficLightAmber: false,
    trafficLightGreen: false,
  );

  // Add the new option to the list
  options.add(newOption);

  // Update the row with the modified options
  row.rowOptions = options;

  // Update the section with the modified rows
  section.sectionRows = rows;

  // Update the sections list
  sections[sectionIndex] = section;

  // Return the updated sections list
  return sections;
}
