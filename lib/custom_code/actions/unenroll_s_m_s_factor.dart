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

import 'package:firebase_auth/firebase_auth.dart';

Future<void> unenrollSMSFactor(
  Future Function()? onSuccess,
  Future Function(String? errorMessage)? onError,
) async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) {
    onError?.call("No user is currently signed in.");
    return;
  }

  try {
    // Get the list of enrolled multi-factor authentication factors
    final multiFactor = user.multiFactor;
    final factors = await multiFactor
        .getEnrolledFactors(); // Fetch enrolled factors asynchronously

    // Find the SMS MFA factor
    MultiFactorInfo? smsFactor;
    for (var factor in factors) {
      if (factor.factorId == 'phone') {
        smsFactor = factor;
        break;
      }
    }

    // If no SMS factor is found, return an error
    if (smsFactor == null) {
      onError?.call("No SMS MFA factor found to unenroll.");
      return;
    }

    // Unenroll the SMS MFA factor
    await multiFactor.unenroll(multiFactorInfo: smsFactor);

    // Call the onSuccess callback to indicate the action was successful
    onSuccess?.call();
  } catch (e) {
    // Call the onError callback with the error message in case of failure
    onError?.call("Failed to unenroll SMS MFA: ${e.toString()}");
  }
}
