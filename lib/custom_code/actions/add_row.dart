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

Future<List<ClicknoteSectionStruct>> addRow(
  List<ClicknoteSectionStruct>? sections,
  int? sectionIndex,
  String? newRowTitle,
) async {
  // Validate input parameters
  if (sections == null || sectionIndex == null || newRowTitle == null) {
    throw Exception("Invalid input parameters");
  }

  // Ensure sectionIndex is within valid range
  if (sectionIndex < 0 || sectionIndex >= sections.length) {
    throw Exception("Section index out of range");
  }

  try {
    // Create a deep copy of the sections list
    final updatedSections = List<ClicknoteSectionStruct>.from(sections);
    var section = updatedSections[sectionIndex];

    // Create a new section with the updated rows
    final updatedSection = ClicknoteSectionStruct(
      sectionIndex: section.sectionIndex,
      sectionText: section.sectionText,
      sectionRows: [
        ...(section.sectionRows ?? []),
        ClicknoteRowStruct(
          rowIndex: (section.sectionRows ?? []).length,
          rowText: newRowTitle.trim(),
          rowOptions: const [],
        ),
      ],
    );

    // Replace the old section with the updated one
    updatedSections[sectionIndex] = updatedSection;

    return updatedSections;
  } catch (e) {
    throw Exception('Failed to add row: $e');
  }
}
