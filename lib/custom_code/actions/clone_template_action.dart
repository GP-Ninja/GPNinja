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

import 'package:cloud_functions/cloud_functions.dart'; // Add this import below the DO NOT MODIFY line

Future<String> cloneTemplateAction(
  String? originalTemplateId,
  String? newUserId,
) async {
  // Validate parameters
  if (originalTemplateId == null || originalTemplateId.isEmpty) {
    throw Exception('originalTemplateId is required and cannot be empty.');
  }
  if (newUserId == null || newUserId.isEmpty) {
    throw Exception('newUserId is required and cannot be empty.');
  }

  // Create a callable reference to the Cloud Function
  final callable = FirebaseFunctions.instance.httpsCallable('cloneTemplate');

  // Invoke the Cloud Function with the provided parameters
  final response = await callable.call({
    'originalTemplateId': originalTemplateId,
    'newUserId': newUserId,
  });

  // Extract the new template ID from the response
  final newTemplateId = response.data['newTemplateId'] as String;

  // Return the new template ID so you can use it in your workflow
  return newTemplateId;
}
